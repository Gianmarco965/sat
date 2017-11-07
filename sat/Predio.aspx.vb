Imports System.Data
Imports System.Data.SqlClient

Public Class Predio
    Inherits System.Web.UI.Page
    Dim xcon As New SqlConnection("Data Source=.;Initial Catalog=sat;Integrated Security=True")
    Dim dt As New DataSet
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


       

    End Sub


    Protected Sub btnAgregarPredio_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnAgregarPredio.Click
        Dim a As String = codContri.Text
        Dim existe As Integer
        xcon.Open()
        Dim xcmd As New SqlCommand("sp_existe_predio", xcon)
        xcmd.CommandType = CommandType.StoredProcedure
        With xcmd
            .Parameters.AddWithValue("codcontri", a)
            .Parameters.Add("@new_identity", SqlDbType.Int)
            .Parameters("@new_identity").Direction = ParameterDirection.Output
            .ExecuteNonQuery()
            existe = xcmd.Parameters("@new_identity").Value
            xcon.Close()
        End With
        If (existe = 0) Then

            Try
                xcon.Open()
                xcmd = New SqlCommand("Insertar_Predio", xcon)
                xcmd.CommandType = CommandType.StoredProcedure

                With xcmd
                    .Parameters.AddWithValue("cod_contri", codContri.Text)
                    .Parameters.AddWithValue("idDistrito", idDistrito.SelectedIndex + 1)
                    .Parameters.AddWithValue("ubicacion_P", ubicacion_P.Text)
                    .Parameters.AddWithValue("referencia_P", referencia_p.Text)
                    .Parameters.AddWithValue("idCondicion_P", idCondicion.Text + 1)
                    .Parameters.AddWithValue("descripcion_Condicion", descripcion_Condi.Text)
                    .Parameters.AddWithValue("idEstado", idEstado.SelectedIndex + 1)
                    .Parameters.AddWithValue("idUso_Predio", idUso_predio.SelectedIndex + 1)
                    .Parameters.AddWithValue("idTipo", idTipo.SelectedIndex + 1)
                    .Parameters.AddWithValue("descripcion_TipoP", Descripcion_Tipo.Text)
                    .Parameters.AddWithValue("fecha_adq", fecha.Text)
                    .Parameters.AddWithValue("area_Terreno", Area_Terreno.Text)
                    .Parameters.AddWithValue("observacion", Area_Terreno.Text)
                    .ExecuteNonQuery()


                End With

            Catch ex As Exception
                lblmensaje.Text = "Error" & ex.Message
            Finally
                Response.Redirect("Propietario.aspx?a=" + a)
                xcon.Close()

            End Try


        ElseIf (existe = 1) Then
            MsgBox("Ingresar un Codigo del Contribuyente Distinto")

        End If









    End Sub





    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        Try
            xcon.Open()
            Dim xcmd As New SqlCommand("buscarCcontri", xcon)
            xcmd.CommandType = CommandType.StoredProcedure
            xcmd.Parameters.AddWithValue("cod_contri", codContri.Text)
            xcmd.ExecuteNonQuery()
            MsgBox("OPERACION REALIZADA CON EXITO")

        Catch ex As Exception

        End Try


    End Sub

    Protected Sub referencia_p_TextChanged(ByVal sender As Object, ByVal e As EventArgs) Handles referencia_p.TextChanged

    End Sub

    Protected Sub fecha_TextChanged(ByVal sender As Object, ByVal e As EventArgs) Handles fecha.TextChanged

    End Sub



    Protected Sub BTNANTERIOR_Click(sender As Object, e As EventArgs) Handles BTNANTERIOR.Click
        Response.Redirect("index.aspx")
    End Sub
End Class