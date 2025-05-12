Imports System.Data.SqlClient

Public Class foodorder_confirmation
    Inherits System.Web.UI.Page


    Dim connstr As String = "Data Source=DESKTOP-JPPAMD6\SQLEXPRESS01;Initial Catalog=major;Integrated Security=True"


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("loggedInUser") Is Nothing Then
            Response.Redirect("Custlogin.aspx")
        End If

        If Not IsPostBack Then
            pnlChoice.Visible = False ' Hide panel only on first page load
        End If

        'pnlChoice.Visible = False ' Hide panel initially
    End Sub

    Protected Sub btnconfirmorder_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnconfirmorder.Click
        HandleOrderUpdate(isConfirmed:=True)
    End Sub

    Protected Sub btncancelorder_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btncancelorder.Click
        HandleOrderUpdate(isConfirmed:=False)
    End Sub


    Private Sub HandleOrderUpdate(ByVal isConfirmed As Boolean)
        Dim cust_email As String = Session("loggedInUser")
        If cust_email Is Nothing Then
            Response.Redirect("Custlogin.aspx")
            Return
        End If

        If Session("pendingFoodOrders") Is Nothing Then
            Response.Redirect("foodorder.aspx")
            Return
        End If

        Dim foodOrders = CType(Session("pendingFoodOrders"), List(Of Tuple(Of String, Decimal, Integer)))
        Dim status As String = If(isConfirmed, "confirmed", "cancelled")

        Using conn As New SqlConnection(connstr)
            conn.Open()
            For Each order In foodOrders
                Dim cmd As New SqlCommand("INSERT INTO [order] (food_name, food_price, no_of_food, status, cust_email) VALUES (@food_name, @food_price, @no_of_food, @status, @cust_email)", conn)
                cmd.Parameters.AddWithValue("@food_name", order.Item1)
                cmd.Parameters.AddWithValue("@food_price", order.Item2)
                cmd.Parameters.AddWithValue("@no_of_food", order.Item3)
                cmd.Parameters.AddWithValue("@status", status)
                cmd.Parameters.AddWithValue("@cust_email", cust_email)
                cmd.ExecuteNonQuery()
            Next
        End Using

        Session.Remove("pendingFoodOrders")

        If isConfirmed Then
            pnlChoice.Visible = True ' Show Room/Restaurant choice
        Else
            Response.Redirect("~/homepage/homepage.aspx")
        End If


    End Sub



    Protected Sub btnRoom_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnRoom.Click
        Response.Redirect("~/room/room.aspx")
    End Sub

    Protected Sub btnRestaurant_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnRestaurant.Click
        Response.Redirect("~/Restaurant/restaurantbook.aspx")
    End Sub
End Class