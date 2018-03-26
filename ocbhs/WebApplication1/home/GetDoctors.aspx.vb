Imports System.Data.SqlClient


Public Class GetDoctors
	Inherits System.Web.UI.Page

	Dim hid As String
	Dim sid As String


	Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
		If Not Request.QueryString("hid") Is Nothing Then

			hid = Request.QueryString("hid")
			sid = Request.QueryString("spcode")


		End If
		BindRepeater()
	End Sub
	Public Sub BindRepeater()
		Dim connectionString As String = "Data Source=localhost\SQLEXPRESS;Initial Catalog=OCBHS;Integrated Security=SSPI"
		Dim con As SqlConnection = New SqlConnection(connectionString)

		Dim cmd As New SqlCommand("DoctorDetails", con)

		cmd.CommandType = CommandType.StoredProcedure
		'cmd.Parameters.Add("@ID", SqlDbType.Int,).Value = 2
		cmd.Parameters.Add("@hid", SqlDbType.VarChar, 50).Value = hid
		cmd.Parameters.Add("@Spcode", SqlDbType.VarChar, 50).Value = sid


		Try
			cmd.Connection.Open()
			Dim adapter As SqlDataAdapter = New SqlDataAdapter(cmd)
			Dim ds As New DataSet
			adapter.Fill(ds, "Dieases")
			rpSearchItems.DataSource = ds
			rpSearchItems.DataBind()

			'Dim str As String = txtFirstName.Text + "Your Account has been created Successfully!!!"
			'SuccessMSg(str)
			'ClearData()
		Catch ex As Exception
			'DisplayError(ex.Message)
		End Try
		'lblRecsAff.Text = intRowsAff & " record(s) inserted"
		cmd.Connection.Close()

	End Sub


End Class