Imports System.Data.SqlClient

Public Class room
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
       
        If Not IsPostBack Then
            Using con As New SqlConnection("Data Source=DESKTOP-JPPAMD6\SQLEXPRESS01;Initial Catalog=major;Integrated Security=True")
                con.Open()
                Dim cmd As New SqlCommand("SELECT TOP 1 room_price FROM room", con)
                Dim price As Object = cmd.ExecuteScalar()
                If price IsNot Nothing Then
                    TextBox2.Text = price.ToString()
                End If
            End Using
        End If
    End Sub

    Protected Sub family_room_Click(ByVal sender As Object, ByVal e As EventArgs) Handles family_room.Click
        HandleRoomBooking(TextBox1.Text.Trim(), Convert.ToDecimal(TextBox2.Text.Trim()), DropDownList1)
    End Sub

    Protected Sub single_room_Click(ByVal sender As Object, ByVal e As EventArgs) Handles single_room.Click
        HandleRoomBooking(TextBox4.Text.Trim(), Convert.ToDecimal(TextBox5.Text.Trim()), DropDownList2)
    End Sub

    Private Sub HandleRoomBooking(ByVal roomType As String, ByVal roomPrice As Decimal, ByVal dropdown As DropDownList)
        If dropdown.SelectedIndex = 0 Then
            MsgBox("Please select how many rooms you want.")
            Exit Sub
        End If

        Dim roomsRequested As Integer = Convert.ToInt32(dropdown.SelectedValue)

        If Session("loggedInUser") Is Nothing Then
            Response.Redirect("~/Customer/Custlogin.aspx")
            Exit Sub
        End If


        Dim pendingBookings As List(Of Tuple(Of String, Decimal, Integer)) =
            If(Session("pendingRoomBookings") IsNot Nothing,
               CType(Session("pendingRoomBookings"), List(Of Tuple(Of String, Decimal, Integer))),
               New List(Of Tuple(Of String, Decimal, Integer))())

        pendingBookings.Add(Tuple.Create(roomType, roomPrice, roomsRequested))
        Session("pendingRoomBookings") = pendingBookings

        Response.Redirect("bookingroom_confirmation.aspx")
    End Sub
End Class
