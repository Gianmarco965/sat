Public Class Fiscalizador
    Inherits System.Web.UI.Page
    Public idfiscalizador As Integer = 0

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        idfiscalizador = Request.QueryString("idfiscalizador")
    End Sub





End Class