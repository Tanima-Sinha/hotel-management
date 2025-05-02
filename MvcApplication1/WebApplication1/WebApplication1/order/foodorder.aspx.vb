
Imports System.Data.SqlClient


Public Class foodorder
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection("Data Source=DESKTOP-JPPAMD6\SQLEXPRESS01;Initial Catalog=major;Integrated Security=True;Pooling=False")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("loggedInUser") Is Nothing Then
            Response.Redirect("~/Customer/Custlogin.aspx")
        End If


        con.Open()
        Dim cmd As New SqlCommand("SELECT TOP 1 food_price FROM order", con)
        Dim price As Object = cmd.ExecuteScalar()

        If price IsNot Nothing Then
            TextBox2.Text = price.ToString()
        End If

    End Sub


    
    ' Common method to insert food order
    Private Sub PlaceOrder(ByVal foodName As String, ByVal foodPrice As Decimal, ByVal noOfFoods As Integer)
        Dim conn As New SqlConnection("Data Source=DESKTOP-JPPAMD6\SQLEXPRESS01;Initial Catalog=major;Integrated Security=True")

        Dim cmd As New SqlCommand("INSERT INTO [order] (food_name, food_price, no_of_food, status, cust_email) VALUES (@food_name, @food_price, @no_of_foods, @status, @cust_email)", conn)
            cmd.Parameters.AddWithValue("@food_name", foodName)
            cmd.Parameters.AddWithValue("@food_price", foodPrice)
        cmd.Parameters.AddWithValue("@no_of_foods", noOfFoods)
            cmd.Parameters.AddWithValue("@status", "pending")
        cmd.Parameters.AddWithValue("@cust_email", Session("loggedInUser"))
            conn.Open()
            cmd.ExecuteNonQuery()

        Response.Redirect("foodorder_confirmation.aspx")
    End Sub



    Protected Sub btnfoodorder_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnfoodorder.Click

        Dim foodName As String = TextBox1.Text
        Dim foodPrice As Decimal = Decimal.Parse(TextBox2.Text)
        Dim noOfFoods As Integer = CInt(DropDownList1.SelectedValue)
        PlaceOrder(foodName, foodPrice, noOfFoods)



    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnfoododer2.Click
        Dim foodName As String = TextBox3.Text
        Dim foodPrice As Decimal = Decimal.Parse(TextBox4.Text)
        Dim noOfFoods As Integer = CInt(DropDownList2.SelectedValue)
        PlaceOrder(foodName, foodPrice, noOfFoods)
    End Sub
End Class