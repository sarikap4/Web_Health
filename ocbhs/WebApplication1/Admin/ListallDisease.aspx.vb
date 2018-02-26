Imports System.Data.SqlClient

Public Class ListallDisease
	Inherits System.Web.UI.Page

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
		'		Dim intRowsAff As Integer
		If Not IsPostBack Then
			BindData()
		End If


	End Sub

	Public Sub BindData()
		Dim connectionString As String = "Data Source=localhost\SQLEXPRESS;Initial Catalog=OCBHS;Integrated Security=SSPI"
		Dim con As SqlConnection = New SqlConnection(connectionString)

		Dim cmd As New SqlCommand("ListallDiease", con)

		'cmd.CommandType = CommandType.StoredProcedure
		'cmd.Parameters.Add("@ID", SqlDbType.Int,).Value = 2
		'cmd.Parameters.Add("@Fname", SqlDbType.VarChar, 50).Value = txtFirstName.Text.Trim
		'cmd.Parameters.Add("@Lname", SqlDbType.VarChar, 50).Value = txtLastName.Text.Trim
		'cmd.Parameters.Add("@Email", SqlDbType.VarChar, 50).Value = txtEmail.Text.Trim
		'cmd.Parameters.Add("@pwd", SqlDbType.VarChar, 8).Value = txtPassword.Text.Trim
		'cmd.Parameters.Add("@cpwd", SqlDbType.VarChar, 8).Value = txtConfirmPassword.Text.Trim
		'cmd.Parameters.Add("@Password", SqlDbType.VarChar, 8).Value = "Sindhi"

		Try
			cmd.Connection.Open()
			Dim adapter As SqlDataAdapter = New SqlDataAdapter(cmd)
			Dim ds As New DataSet
			adapter.Fill(ds, "Dieases")
			gvDieases.DataSource = ds
			gvDieases.DataBind()

			'Dim str As String = txtFirstName.Text + "Your Account has been created Successfully!!!"
			'SuccessMSg(str)
			'ClearData()
		Catch ex As Exception
			'DisplayError(ex.Message)
		End Try
		'lblRecsAff.Text = intRowsAff & " record(s) inserted"
		cmd.Connection.Close()
	End Sub
	Private Sub btnAdd_Click(sender As Object, e As EventArgs) Handles btnAdd.Click
		Response.Redirect("Add_DiseaseDetails.aspx")
	End Sub

	Private Sub BtnLogout_Click(sender As Object, e As EventArgs) Handles BtnLogout.Click
		Response.Redirect("LoginPage.aspx")
	End Sub

	Private Sub btnback_Click(sender As Object, e As EventArgs) Handles btnback.Click
		Response.Redirect("AdminPanel.aspx")

	End Sub

	Private Sub gvDieases_RowCommand(sender As Object, e As GridViewCommandEventArgs) Handles gvDieases.RowCommand
		If e.CommandName = "Edit" Then
			Response.Redirect("Add_DiseaseDetails.aspx?Query=")
		End If
	End Sub

	Private Sub btndelete_Click(sender As Object, e As EventArgs) Handles btndelete.Click
		For i As Integer = 0 To gvDieases.Rows.Count - 1

			Dim chkcity As CheckBox = CType(gvDieases.Rows(i).Cells(0).FindControl("cbSelect"), CheckBox)
			If chkcity.Checked = True Then
				Dim intRowsAff As Integer


				Dim connectionString As String = "Data Source=localhost\SQLEXPRESS;Initial Catalog=OCBHS;Integrated Security=SSPI"
				Dim con As SqlConnection = New SqlConnection(connectionString)

				Dim cmd As New SqlCommand("DeleteDiease", con)

				cmd.CommandType = CommandType.StoredProcedure
				'cmd.Parameters.Add("@ID", SqlDbType.Int,).Value = 2
				cmd.Parameters.Add("@DieaseCode", SqlDbType.VarChar, 50).Value = gvDieases.Rows(i).Cells(2).Text
				'cmd.Parameters.Add("@CityCode", SqlDbType.VarChar, 50).Value = txtCityCode.Text.Trim


				Try
					cmd.Connection.Open()
					intRowsAff = cmd.ExecuteNonQuery()

					'Dim str As String = txtCityCode.Text + " Added Successfully "
					'SuccessMSg(str)
					'ClearData()
				Catch ex As Exception
					'DisplayError(ex.Message)
				End Try
				'lblRecsAff.Text = intRowsAff & " record(s) inserted"
				cmd.Connection.Close()
			End If
		Next
		BindData()
	End Sub
End Class