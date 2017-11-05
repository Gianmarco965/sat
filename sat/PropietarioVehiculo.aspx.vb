Imports System.Data.SqlClient


Public Class PropietarioVehiculo
    Inherits System.Web.UI.Page


    Dim xcon As New SqlConnection("Data Source=.;Initial Catalog=sat;Integrated Security=True")
    Dim dt As New DataSet
    Dim idvehiculo As Integer

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        idvehiculo = Integer.Parse(Request.QueryString("idvehiculo"))
        MsgBox(idvehiculo.ToString())
    End Sub

    Protected Sub btnAgregarPredio_Click(sender As Object, e As EventArgs) Handles btnAgregarPredio.Click

        If nombew.Text = "" Or ApellidoM.Text = "" Or ApellidoP.Text = "" Or Direccion.Text = "" Or cel.Text = "" Then

            MsgBox("Falta Datos Obligatorio")
        Else

            xcon.Open()
            Dim xcmd As New SqlCommand("sp_insertar_propietario_vehiculo", xcon)
            xcmd.CommandType = CommandType.StoredProcedure

            With xcmd

                .Parameters.AddWithValue("idvehiculo", idvehiculo)
                .Parameters.AddWithValue("nombre", nombew.Text)
                .Parameters.AddWithValue("apellido_p", ApellidoP.Text)
                .Parameters.AddWithValue("apellido_m", ApellidoM.Text)
                .Parameters.AddWithValue("dni", dni.Text)
                .Parameters.AddWithValue("iddistrito", iddistrito.SelectedIndex + 1)
                .Parameters.AddWithValue("direccion", Direccion.Text)
                .Parameters.AddWithValue("referencia", Referencia.Text)
                .Parameters.AddWithValue("telefono", cel.Text)
                .Parameters.AddWithValue("correo", correo.Text)
                .Parameters.AddWithValue("idT_predio", idt_predio.SelectedIndex + 1)
                .Parameters.AddWithValue("detalle_predio", descripcionP.Text)

                .ExecuteNonQuery()
            End With
            Response.Redirect("RepresentanteVehiculo.aspx?a=" + idvehiculo.ToString())

        End If
        xcon.Close()
    End Sub
End Class