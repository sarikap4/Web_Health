Imports System.Data.SqlClient
Public Class SearchHospitals
	Inherits System.Web.UI.Page

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
		If Not IsPostBack Then
			BindDropdownList()
		End If

	End Sub

	Public Sub BindDropdownList()
		Dim connectionString As String = "Data Source=localhost\SQLEXPRESS;Initial Catalog=OCBHS;Integrated Security=SSPI"
		Dim con As SqlConnection = New SqlConnection(connectionString)

		Dim cmd As New SqlCommand("ListallState", con)
		Try
			cmd.Connection.Open()
			Dim adapter As SqlDataAdapter = New SqlDataAdapter(cmd)
			Dim ds As New DataSet
			adapter.Fill(ds, "Dieases")


			ddlState.DataSource = ds

			ddlState.DataTextField = "StateName"
			ddlState.DataValueField = "Scode"
			ddlState.DataBind()
			ddlState.Items.Insert(0, New ListItem("Select State", "0"))
			'ddlState.SelectedIndex = 0

			cmd.Connection.Close()

			cmd = New SqlCommand("ListallCity", con)
			cmd.Connection.Open()
			adapter = New SqlDataAdapter(cmd)
			ds = New DataSet
			adapter.Fill(ds, "Dieases")
			ddlCity.DataTextField = "CityName"
			ddlCity.DataValueField = "CityCode"
			ddlCity.DataSource = ds
			ddlCity.DataBind()
			ddlCity.Items.Insert(0, New ListItem("Select City", "0"))

			'	ddlCity.SelectedValue = "0"
			cmd.Connection.Close()

			cmd = New SqlCommand("ListallDiease", con)
			cmd.Connection.Open()
			adapter = New SqlDataAdapter(cmd)
			ds = New DataSet
			adapter.Fill(ds, "Dieases")
			ddlDieases.DataTextField = "DieasesName"
			ddlDieases.DataValueField = "DieasesCode"

			ddlDieases.DataSource = ds
			ddlDieases.DataBind()
			ddlDieases.Items.Insert(0, New ListItem("Select dieases", "0"))
			'ddlDieases.SelectedValue = "0"
			cmd.Connection.Close()

			cmd = New SqlCommand("ListSpecialization", con)
			cmd.Connection.Open()
			adapter = New SqlDataAdapter(cmd)
			ds = New DataSet
			adapter.Fill(ds, "Dieases")
			ddlSpecialization.DataTextField = "SName"
			ddlSpecialization.DataValueField = "Scode"

			ddlSpecialization.DataSource = ds
			ddlSpecialization.DataBind()
			ddlSpecialization.Items.Insert(0, New ListItem("Select Specialization", "0"))
			'ddlSpecialization.SelectedValue = "0"
			cmd.Connection.Close()

		Catch ex As Exception
			'DisplayError(ex.Message)
		End Try


	End Sub

	Private Sub btnSearch_Click(sender As Object, e As EventArgs) Handles btnSearch.Click
		Response.Redirect("~/home/SearchResult.aspx?cid=" & ddlCity.SelectedValue & "&sid=" & ddlState.SelectedValue &
						   "&spid=" & ddlSpecialization.SelectedValue &
						   "&did=" & ddlDieases.SelectedValue)
	End Sub
End Class