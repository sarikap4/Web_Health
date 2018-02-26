Imports System.Data.SqlClient
Public Class LoginPage
	Inherits System.Web.UI.Page

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
		lblerrormessage.Visible = False
	End Sub

	Private Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
		Try
			Connection()
		Catch ex As Exception
			DisplayError(ex.Message)
		End Try

	End Sub

	Public Sub DisplayError(str As String)
		lblerrormessage.Visible = True
		lblerrormessage.Text = str
	End Sub

	Function Connection()

		Dim connectionString As String = "Data Source=localhost\SQLEXPRESS;Initial Catalog=OCBHS;Integrated Security=SSPI"
		Dim con As SqlConnection = New SqlConnection(connectionString)

		Dim cmd As New SqlCommand("VerifyLogin", con)

		cmd.CommandType = CommandType.StoredProcedure

		cmd.Parameters.Add("@username", SqlDbType.VarChar, 50).Value = txtUserID.Text.Trim
		cmd.Parameters.Add("@password", SqlDbType.VarChar, 50).Value = txtPassword.Text.Trim

		Try
			Dim str As String = ""
			cmd.Connection.Open()

			Dim reader = cmd.ExecuteReader()
			While reader.Read()
				str = reader(0)
			End While
			If str = "true" Then
				Response.Redirect("AdminPanel.aspx")
			Else
				DisplayError("Invalid UserId or Password..")
				ClearData()

			End If
			'intRowsAff = cmd.ExecuteNonQuery()

		Catch ex As Exception
			DisplayError(ex.Message)
		End Try
		'lblRecsAff.Text = intRowsAff & " record(s) inserted"
		cmd.Connection.Close()
	End Function
	Public Sub ClearData()
		txtUserID.Text = ""
		txtPassword.Text = ""
	End Sub

	Private Sub imghome_Click(sender As Object, e As ImageClickEventArgs) Handles imghome.Click
		Response.Redirect("~/home/HomePage.aspx")
	End Sub
End Class