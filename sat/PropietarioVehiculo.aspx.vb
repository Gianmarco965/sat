Public Class PropietarioVehiculo
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnAgregarPotencia_Click(sender As Object, e As EventArgs) Handles btnAgregarPotencia.Click

        Response.Redirect("index.aspx")

    End Sub
End Class