Imports System.Data.SqlClient

Public Class foodorder
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        

        If Not IsPostBack Then
            ' Load the most recent food price into TextBox2
            Using con As New SqlConnection("Data Source=DESKTOP-JPPAMD6\SQLEXPRESS01;Initial Catalog=major;Integrated Security=True;Pooling=False")
                con.Open()
                Dim cmd As New SqlCommand("SELECT TOP 1 food_price FROM [order]", con)
                Dim price As Object = cmd.ExecuteScalar()

                If price IsNot Nothing Then
                    TextBox2.Text = price.ToString()
                End If
            End Using
        End If
    End Sub

    Protected Sub btnfoodorder_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnfoodorder.Click
        HandleFoodOrder(TextBox1, TextBox2, DropDownList1)
    End Sub

    Protected Sub btnfoododer2_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnfoododer2.Click
        HandleFoodOrder(TextBox3, TextBox4, DropDownList2)
    End Sub

    Private Sub HandleFoodOrder(ByVal foodNameBox As TextBox, ByVal priceBox As TextBox, ByVal quantityDropdown As DropDownList)
        If quantityDropdown.SelectedIndex = 0 OrElse String.IsNullOrWhiteSpace(quantityDropdown.SelectedValue) Then
            MsgBox("Please select the number of items to order.")
            Exit Sub
        End If

        Dim foodName As String = foodNameBox.Text.Trim()
        Dim foodPrice As Decimal
        If Not Decimal.TryParse(priceBox.Text.Trim(), foodPrice) Then
            MsgBox("Invalid food price.")
            Exit Sub
        End If

        Dim quantity As Integer = Convert.ToInt32(quantityDropdown.SelectedValue)

        If Session("loggedInUser") Is Nothing Then
            Response.Redirect("~/Customer/Custlogin.aspx")
            Exit Sub
        End If

        '  Store data in session
        Dim foodOrderList As New List(Of Tuple(Of String, Decimal, Integer))
        If Session("pendingFoodOrders") IsNot Nothing Then
            foodOrderList = CType(Session("pendingFoodOrders"), List(Of Tuple(Of String, Decimal, Integer)))
        End If
        foodOrderList.Add(Tuple.Create(foodName, foodPrice, quantity))
        Session("pendingFoodOrders") = foodOrderList

        '  Go to confirmation
        Response.Redirect("foodorder_confirmation.aspx")

    End Sub
End Class