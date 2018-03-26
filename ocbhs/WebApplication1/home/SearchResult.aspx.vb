Imports System.Data.SqlClient


Public Class SearchResult
	Inherits System.Web.UI.Page

	Dim cid As String
	Dim sid As String
	Dim spid As String
	Dim did As String

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

		If Not Request.QueryString("cid") Is Nothing Then

			cid = Request.QueryString("cid")
			sid = Request.QueryString("sid")
			spid = Request.QueryString("spid")
			did = Request.QueryString("did")

		End If
		BindRepeater()
	End Sub

	Public Sub BindRepeater()
		Dim connectionString As String = "Data Source=localhost\SQLEXPRESS;Initial Catalog=OCBHS;Integrated Security=SSPI"
		Dim con As SqlConnection = New SqlConnection(connectionString)

		Dim cmd As New SqlCommand("HospitalDetails", con)

		cmd.CommandType = CommandType.StoredProcedure
		'cmd.Parameters.Add("@ID", SqlDbType.Int,).Value = 2
		cmd.Parameters.Add("@Scode", SqlDbType.VarChar, 50).Value = sid
		cmd.Parameters.Add("@CityCode", SqlDbType.VarChar, 50).Value = cid
		cmd.Parameters.Add("@SpCode", SqlDbType.VarChar, 50).Value = spid
		cmd.Parameters.Add("@DCode", SqlDbType.VarChar, 8).Value = did

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

	Private Sub rpSearchItems_ItemDataBound(sender As Object, e As RepeaterItemEventArgs) Handles rpSearchItems.ItemDataBound
		If (e.Item.ItemType = ListItemType.Item) Then
			Dim btngetdoctors As HtmlAnchor = CType(e.Item.FindControl("btndoc"), HtmlAnchor)
			Dim hcode As HiddenField = CType(e.Item.FindControl("hcode"), HiddenField)
			Dim hid As String = hcode.Value



			btngetdoctors.HRef = "GetDoctors.aspx?hid=" & hid & "&spcode=" & spid
		End If
	End Sub
End Class