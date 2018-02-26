Imports System.Data.SqlClient


Public Class AdminSignup
	Inherits System.Web.UI.Page

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
		lblerrormessage.Visible = False
		lblsuccessmessage.Visible = False
	End Sub

	Private Sub btnCreateAccount_Click(sender As Object, e As EventArgs) Handles btnCreateAccount.Click
		Try
			Connection()
		Catch ex As Exception
			DisplayError(ex.Message)
		End Try
	End Sub

	Function Connection()
		Dim intRowsAff As Integer


		Dim connectionString As String = "Data Source=localhost\SQLEXPRESS;Initial Catalog=OCBHS;Integrated Security=SSPI"
		Dim con As SqlConnection = New SqlConnection(connectionString)

		Dim cmd As New SqlCommand("Addadmin", con)

		cmd.CommandType = CommandType.StoredProcedure
		'cmd.Parameters.Add("@ID", SqlDbType.Int,).Value = 2
		cmd.Parameters.Add("@Fname", SqlDbType.VarChar, 50).Value = txtFirstName.Text.Trim
		cmd.Parameters.Add("@Lname", SqlDbType.VarChar, 50).Value = txtLastName.Text.Trim
		cmd.Parameters.Add("@Email", SqlDbType.VarChar, 50).Value = txtEmail.Text.Trim
		cmd.Parameters.Add("@pwd", SqlDbType.VarChar, 8).Value = txtPassword.Text.Trim
		cmd.Parameters.Add("@cpwd", SqlDbType.VarChar, 8).Value = txtConfirmPassword.Text.Trim
		'cmd.Parameters.Add("@Password", SqlDbType.VarChar, 8).Value = "Sindhi"

		Try
			cmd.Connection.Open()
			intRowsAff = cmd.ExecuteNonQuery()
			cmd.Connection.Close()

			Dim str As String = txtFirstName.Text + "Your Account has been created Successfully!!!"
			SuccessMSg(str)
			ClearData()
			Response.Redirect("LoginPage.aspx")
		Catch ex As Exception
			DisplayError(ex.Message)
		End Try
		'lblRecsAff.Text = intRowsAff & " record(s) inserted"

	End Function

	Public Sub DisplayError(str As String)
		lblerrormessage.Visible = True
		lblerrormessage.Text = str
		lblsuccessmessage.Visible = False
	End Sub
	Public Sub SuccessMSg(str As String)
		lblerrormessage.Visible = False
		lblsuccessmessage.Text = str
		lblsuccessmessage.Visible = True
	End Sub
	Public Sub ClearData()
		txtFirstName.Text = ""
		txtLastName.Text = ""
		txtConfirmPassword.Text = ""
		txtEmail.Text = ""
		txtPassword.Text = ""
	End Sub

	Private Sub Btncancel_Click(sender As Object, e As EventArgs) Handles Btncancel.Click
		Response.Redirect("LoginPage.aspx")
	End Sub
End Class