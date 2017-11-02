Imports System.Data.SqlClient

Public Class Vehicular
    Inherits System.Web.UI.Page

    Dim xcon As New SqlConnection("Data Source=.;Initial Catalog=sat;Integrated Security=True")
    Dim dt As New DataSet
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


    End Sub

    Protected Sub btnAgregarVehiculo_Click(sender As Object, e As EventArgs) Handles btnAgregarVehiculo.Click
        Dim idvehiculo As Integer

        Try
            xcon.Open()
            Dim xcmd As New SqlCommand("sp_insertar_vehiculo", xcon)
            xcmd.CommandType = CommandType.StoredProcedure

            With xcmd
                .Parameters.AddWithValue("fechaadq", txtfecha.Text)
                .Parameters.AddWithValue("placano", txtplacanueva.Text)
                .Parameters.AddWithValue("placaant", txtplacaanterior.Text)
                .Parameters.AddWithValue("partidaregistral", txtpartidareg.Text)
                .Parameters.AddWithValue("titulo", txttitulo.Text)
                .Parameters.AddWithValue("idcategoriaclase", idEstado.SelectedIndex + 1)
                .Parameters.AddWithValue("idmodelo", idmodelo.SelectedIndex + 1)
                .Parameters.AddWithValue("idmarca", idmarca.SelectedIndex + 1)
                .Parameters.AddWithValue("seriechasis", txtserie.Text)
                .Parameters.AddWithValue("motor", txtmotor.Text)
                .Parameters.AddWithValue("color", txtcolor.Text)
                .Parameters.AddWithValue("carroceria", txtcarroceria.Text)
                .Parameters.AddWithValue("idcombustible", id_combustible.SelectedIndex + 1)
                .Parameters.AddWithValue("anofab", txtanofab.Text)
                .Parameters.AddWithValue("anomod", txtanomodelo.Text)
                .Parameters.AddWithValue("fecharegistro", txtfechafab.Text)
                .Parameters.Add("@new_identity", SqlDbType.Int)
                .Parameters("@new_identity").Direction = ParameterDirection.Output



                .ExecuteNonQuery()

                idvehiculo = xcmd.Parameters("@new_identity").Value.ToString()

            End With
            MsgBox("Grabo Correctamente, Vehiculo Agregado")
        Catch ex As Exception
            lblmensaje.Text = "Error" & ex.Message
        Finally
            Response.Redirect("Potencia.aspx?idvehiculo=" + idvehiculo.ToString())

            xcon.Close()

        End Try
    End Sub


End Class