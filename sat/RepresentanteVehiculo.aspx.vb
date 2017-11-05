Imports System.Data.SqlClient

Public Class RepresentanteVehiculo
    Inherits System.Web.UI.Page
    Dim xcon As New SqlConnection("Data Source=.;Initial Catalog=sat;Integrated Security=True")
    Dim dt As New DataSet
    Dim idvehiculo As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        idvehiculo = Integer.Parse(Request.QueryString("a"))

    End Sub

    Protected Sub btnregistrar_Click(sender As Object, e As EventArgs) Handles btnregistrar.Click

        If txtnombres.Text = "" Or txtapellido.Text = "" Or txtdni.Text = "" Or idTippo_material.Text = "" Then

            MsgBox("Falta Datos Obligatorio")
        Else

            xcon.Open()
            Dim xcmd As New SqlCommand("sp_insertar_representante_vehiculo", xcon)
            xcmd.CommandType = CommandType.StoredProcedure

            With xcmd

                .Parameters.AddWithValue("idvehiculo", idvehiculo)
                .Parameters.AddWithValue("nombre", txtnombres.Text)
                .Parameters.AddWithValue("apellidos", txtapellido.Text)
                .Parameters.AddWithValue("dni", txtdni.Text)
                .Parameters.AddWithValue("idparentesco", idTippo_material.SelectedIndex + 1)

                .ExecuteNonQuery()
            End With
            Response.Redirect("index.aspx")

        End If
        xcon.Close()
    End Sub
End Class