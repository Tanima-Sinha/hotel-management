Imports System.Data.SqlClient

Public Class bookingroom_confirmation
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        If Session("loggedInUser") Is Nothing Then
            Response.Redirect("~/Customer/Custlogin.aspx")
        End If
    End Sub

    Protected Sub btnconfirmroom_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnconfirmroom.Click
        HandleRoomUpdate(isConfirmed:=True)
    End Sub

    Protected Sub btncancelroom_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btncancelroom.Click
        HandleRoomUpdate(isConfirmed:=False)
    End Sub

    Private Sub HandleRoomUpdate(ByVal isConfirmed As Boolean)
        Dim cust_email As String = Session("loggedInUser")
        Dim roomBookings = CType(Session("pendingRoomBookings"), List(Of Tuple(Of String, Decimal, Integer)))
        Dim status As String = If(isConfirmed, "confirmed", "cancelled")

        Using con As New SqlConnection("Data Source=DESKTOP-JPPAMD6\SQLEXPRESS01;Initial Catalog=major;Integrated Security=True")
            con.Open()

            For Each booking In roomBookings

                ' Insert customer booking row
                Dim insertCmd As New SqlCommand("INSERT INTO room (cust_email, room_type, room_price, booked_rooms, available_rooms, status) VALUES (@cust_email, @room_type, @room_price, @booked_rooms, 0, @status)", con)
                insertCmd.Parameters.AddWithValue("@cust_email", cust_email)
                insertCmd.Parameters.AddWithValue("@room_type", booking.Item1)
                insertCmd.Parameters.AddWithValue("@room_price", booking.Item2)
                insertCmd.Parameters.AddWithValue("@booked_rooms", booking.Item3)
                insertCmd.Parameters.AddWithValue("@status", status)
                insertCmd.ExecuteNonQuery()


                ' If confirmed, reduce available_rooms in the master record

                If isConfirmed Then
                    Dim updateCmd As New SqlCommand("UPDATE room SET available_rooms = available_rooms - @booked_rooms WHERE room_type = @room_type AND status = 'available'", con)
                    updateCmd.Parameters.AddWithValue("@booked_rooms", booking.Item3)
                    updateCmd.Parameters.AddWithValue("@room_type", booking.Item1)
                    updateCmd.ExecuteNonQuery()
                End If
            Next
        End Using

        Session.Remove("pendingRoomBookings")

        Dim message As String = If(isConfirmed, "Room booking confirmed!", "Room booking cancelled.")
        Dim url As String = ResolveUrl("~/homepage/homepage.aspx")
        ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('" & message & "');window.location='" & url & "';", True)
    End Sub
End Class
