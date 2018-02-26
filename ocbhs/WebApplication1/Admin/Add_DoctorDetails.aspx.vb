Imports System.Data.SqlClient

Public Class Add_DoctorDetails
	Inherits System.Web.UI.Page

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
		lblerrormessage.Visible = False
		lblsuccessmessage.Visible = False
	End Sub

	Private Sub btnSaveandExit_Click(sender As Object, e As EventArgs) Handles btnSaveandExit.Click
		Try
			Connection()
			Response.Redirect("ListallDoctors.aspx")
		Catch ex As Exception
			DisplayError(ex.Message)
		End Try

	End Sub
	Function Connection()
		Dim intRowsAff As Integer


		Dim connectionString As String = "Data Source=localhost\SQLEXPRESS;Initial Catalog=OCBHS;Integrated Security=SSPI"
		Dim con As SqlConnection = New SqlConnection(connectionString)

		Dim cmd As New SqlCommand("AddDoctor", con)

		cmd.CommandType = CommandType.StoredProcedure
		'cmd.Parameters.Add("@ID", SqlDbType.Int,).Value = 2
		cmd.Parameters.Add("@DoctorName", SqlDbType.VarChar, 100).Value = txtDoctorName.Text.Trim
		cmd.Parameters.Add("@DSpecialization", SqlDbType.VarChar, 500).Value = txtspecialization.Text.Trim
		cmd.Parameters.Add("@DAvailabilty", SqlDbType.VarChar, 100).Value = txtavailability.Text.Trim


		Try
			cmd.Connection.Open()
			intRowsAff = cmd.ExecuteNonQuery()

			Dim str As String = txtDoctorName.Text + " Added Successfully "
			SuccessMSg(str)
			ClearData()
		Catch ex As Exception
			DisplayError(ex.Message)
		End Try
		'lblRecsAff.Text = intRowsAff & " record(s) inserted"
		cmd.Connection.Close()
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
		txtavailability.Text = ""
		txtDoctorName.Text = ""
		txtspecialization.Text = ""
	End Sub

	Private Sub Btncancel_Click(sender As Object, e As EventArgs) Handles btnCancel.Click
		Response.Redirect("ListallDoctors.aspx")
	End Sub

	Private Sub btnSaveandContinue_Click(sender As Object, e As EventArgs) Handles btnSaveandContinue.Click
		Try
			Connection()
			'Response.Redirect("ListallDoctors.aspx")
		Catch ex As Exception
			DisplayError(ex.Message)
		End Try
	End Sub

	Private Sub BtnLogout_Click(sender As Object, e As EventArgs) Handles BtnLogout.Click
		Response.Redirect("LoginPage.aspx")
	End Sub
End Class