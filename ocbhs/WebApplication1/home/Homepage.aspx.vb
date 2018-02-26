Public Class Homepage
	Inherits System.Web.UI.Page

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

	End Sub

	Private Sub btnAdmin_Click(sender As Object, e As EventArgs) Handles btnAdmin.Click
		Response.Redirect("~/Admin/LoginPage.aspx")
	End Sub
End Class