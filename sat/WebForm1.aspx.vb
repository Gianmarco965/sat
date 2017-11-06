Imports System.Data
Imports System.Data.SqlClient
Imports sat.Autentificacion

Public Class WebForm1
    Inherits System.Web.UI.Page
    Dim xcon As New SqlConnection("Data Source=.;Initial Catalog=sat;Integrated Security=True")
    Dim dt As New DataSet
    Dim ad As SqlDataAdapter



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


    End Sub


    Protected Sub btnIngre_Click(sender As Object, e As EventArgs) Handles btnIngre.Click
        Dim a As Integer = 0

        If (Autentificacion.Autenticar(TextBox1.Text, password.Text, idTrabajador.SelectedIndex + 1).validar) Then

            If Autenticar(TextBox1.Text, password.Text, idTrabajador.SelectedIndex + 1).a = 1 Then
                FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, True, "Fiscalizador.aspx")
                Response.Redirect("Fiscalizador.aspx?idfiscalizador=" + Autenticar(TextBox1.Text, password.Text, idTrabajador.SelectedIndex + 1).idempleado.ToString())


                Me.ClearChildState()
            Else

                FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, True, "index.aspx")
                Response.Redirect("index.aspx")
                Me.ClearChildState()
            End If

        End If










    End Sub
End Class