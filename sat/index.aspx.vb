Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (HttpContext.Current.User.Identity.IsAuthenticated) Then
            Response.Write("Bienvenido : " + User.Identity.Name)

        End If



    End Sub



End Class