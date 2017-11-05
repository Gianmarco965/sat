Imports System.Data.SqlClient

Public Class Potencia
    Inherits System.Web.UI.Page
    Dim xcon As New SqlConnection("Data Source=.;Initial Catalog=sat;Integrated Security=True")
    Dim dt As DataTable
    Dim idvehiculo As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        idvehiculo = Integer.Parse(Request.QueryString("idvehiculo"))

    End Sub

    Protected Sub btnAgregarPotencia_Click(sender As Object, e As EventArgs) Handles btnAgregarPotencia.Click


        Try
            xcon.Open()
            Dim xcmd As New SqlCommand("sp_insertar_potencia", xcon)
            xcmd.CommandType = CommandType.StoredProcedure
            With xcmd
                .Parameters.AddWithValue("idvehiculo", idvehiculo)
                .Parameters.AddWithValue("longitud", txtlongitud)
                .Parameters.AddWithValue("altura", txtaltura.Text)
                .Parameters.AddWithValue("ancho", txtancho.Text)
                .Parameters.AddWithValue("cilindro", txtcilindro.Text)
                .Parameters.AddWithValue("P_bruto", txtpbruto.Text)
                .Parameters.AddWithValue("P_neto", txtpneto.Text)


                .ExecuteNonQuery()
            End With

            lblmensaje.Text = "Grabo Correctamente, Clientes Agregado"
        Catch ex As Exception
            lblmensaje.Text = "Error" & ex.Message
        Finally


            xcon.Close()


            Response.Redirect("PropietarioVehiculo.aspx?idvehiculo=" + idvehiculo.ToString())
            MsgBox(idvehiculo.ToString())

        End Try


    End Sub
End Class