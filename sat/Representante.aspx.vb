Imports System.Data.SqlClient

Public Class Representante
    Inherits System.Web.UI.Page
    Dim xcon As New SqlConnection("Data Source=.;Initial Catalog=sat;Integrated Security=True")
    Dim dt As New DataSet

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        predio.Text = Request.QueryString("a")
        Try

            xcon.Open()
            Dim xcmd As New SqlCommand("buscarCcontri", xcon)
            xcmd.CommandType = CommandType.StoredProcedure
            xcmd.Parameters.AddWithValue("cod_contri", predio.Text)

            Dim rs As New SqlDataAdapter(xcmd)
            Dim table As New DataTable
            rs.Fill(table)

            codpredio.Text = table.Rows(0)(0).ToString()
            MsgBox("EL PREDIO SE ENCUENTRA REGISTRADO")
            xcon.Close()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub btnregistrar_Click(sender As Object, e As EventArgs) Handles btnregistrar.Click
        Dim a As String = predio.Text
        If codpredio.Text = "" Or txtnombres.Text = "" Or txtapellido.Text = "" Or txtdni.Text = "" Or idTippo_material.Text = "" Then

            MsgBox("Falta Datos Obligatorio")
        Else

            xcon.Open()
            Dim xcmd As New SqlCommand("sp_insertar_representante", xcon)
            xcmd.CommandType = CommandType.StoredProcedure

            With xcmd

                .Parameters.AddWithValue("codpredio", codpredio.Text)
                .Parameters.AddWithValue("nombre", txtnombres.Text)
                .Parameters.AddWithValue("apellidos", txtapellido.Text)
                .Parameters.AddWithValue("dni", txtdni.Text)
                .Parameters.AddWithValue("idparentesco", idTippo_material.SelectedIndex + 1)

                .ExecuteNonQuery()
            End With
            Response.Redirect("indexx.aspx")

        End If
        xcon.Close()
    End Sub
End Class