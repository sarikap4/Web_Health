Public Class AdminPanel
	Inherits System.Web.UI.Page

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

	End Sub

	Private Sub BtnLogout_Click(sender As Object, e As EventArgs) Handles BtnLogout.Click
		Response.Redirect("LoginPage.aspx")
	End Sub

	'Private Sub btnLogin_Click(sender As Object, e As EventArgs) Handles BtnLogout.Click

	'End Sub
End Class