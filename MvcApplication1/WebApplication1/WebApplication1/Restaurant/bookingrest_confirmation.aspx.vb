Imports System.Data.SqlClient

Public Class bookingrest_confirmation
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ' Optionally show confirmation preview
    End Sub

    Protected Sub btnconfirmresturant_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnconfirmresturant.Click
        InsertBookings("confirmed")
    End Sub

    Protected Sub btncancelresturant_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btncancelresturant.Click
        InsertBookings("cancelled")
    End Sub

    Private Sub InsertBookings(ByVal status As String)
        If Session("loggedInUser") Is Nothing OrElse Session("pendingBookings") Is Nothing Then
            Response.Redirect("~Restaurant/restaurantbook.aspx")
            Exit Sub
        End If

        Dim cust_email As String = Session("loggedInUser").ToString()
        Dim bookings = CType(Session("pendingBookings"), List(Of Tuple(Of String, Integer)))

        Dim totalPrice As Integer = bookings.Sum(Function(b) b.Item2)

        Using con As New SqlConnection("Data Source=DESKTOP-JPPAMD6\SQLEXPRESS01;Initial Catalog=major;Integrated Security=True;Pooling=False")
            con.Open()

            ' Insert bookings
            For Each booking In bookings
                Dim cmd As New SqlCommand("INSERT INTO restaurant (type, price, status, cust_email) VALUES (@type, @price, @status, @cust_email)", con)
                cmd.Parameters.AddWithValue("@type", booking.Item1)
                cmd.Parameters.AddWithValue("@price", booking.Item2)
                cmd.Parameters.AddWithValue("@status", status)
                cmd.Parameters.AddWithValue("@cust_email", cust_email)
                cmd.ExecuteNonQuery()
            Next

            ' Update customer amount
            Dim cmdUpdate As SqlCommand
            If status = "confirmed" Then
                cmdUpdate = New SqlCommand("UPDATE customer SET amount = amount + @price WHERE cust_email = @cust_email", con)
            Else
                cmdUpdate = New SqlCommand("UPDATE customer SET amount = amount - @price WHERE cust_email = @cust_email", con)
            End If
            cmdUpdate.Parameters.AddWithValue("@price", totalPrice)
            cmdUpdate.Parameters.AddWithValue("@cust_email", cust_email)
            cmdUpdate.ExecuteNonQuery()
        End Using

        ' Clear session after handling
        Session.Remove("pendingBookings")

        ' Redirect with message
        Dim url As String = ResolveUrl("~/homepage/homepage.aspx")
        Dim message As String = If(status = "confirmed", "Booking Confirmed", "Booking Cancelled")
        ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('" & message & "');window.location='" & url & "';", True)

    End Sub
End Class
