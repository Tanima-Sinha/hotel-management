Imports System.Data.SqlClient

Public Class resturantbook
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection("Data Source=DESKTOP-JPPAMD6\SQLEXPRESS01;Initial Catalog=major;Integrated Security=True;Pooling=False")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            con.Open()
            Dim cmd As New SqlCommand("SELECT TOP 1 price FROM restaurant", con)
            Dim price As Object = cmd.ExecuteScalar()
            con.Close()

            If price IsNot Nothing Then
                TextBox2.Text = price.ToString()
            End If
        End If
    End Sub

    Protected Sub btnbookrest_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnbookrest.Click
        HandleBooking(TextBox1, TextBox2)
    End Sub

    Protected Sub btnbookrest2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnbookrest2.Click
        HandleBooking(TextBox3, TextBox4)
    End Sub

    Private Sub HandleBooking(ByVal typeBox As TextBox, ByVal priceBox As TextBox)
        If Session("loggedInUser") Is Nothing Then
            Response.Redirect("Custlogin.aspx")
            Exit Sub
        End If

        Dim type As String = typeBox.Text
        Dim price As Integer
        If Not Integer.TryParse(priceBox.Text, price) Then
            MsgBox("Invalid price.")
            Exit Sub
        End If

        ' Store data in session
        Dim bookings As New List(Of Tuple(Of String, Integer))
        If Session("pendingBookings") IsNot Nothing Then
            bookings = CType(Session("pendingBookings"), List(Of Tuple(Of String, Integer)))
        End If
        bookings.Add(Tuple.Create(type, price))
        Session("pendingBookings") = bookings

        Response.Redirect("bookingrest_confirmation.aspx")
    End Sub
End Class
