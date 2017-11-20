Imports System.Data.SqlClient
Public Class FiscalizarPredio
    Inherits System.Web.UI.Page
    Dim idpredio As Integer
    Dim xcon As New SqlConnection("Data Source=.;Initial Catalog=sat;Integrated Security=True")
    Dim dt As DataTable
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        idpredio = Integer.Parse(Request.QueryString("idpredio"))

    End Sub

    Protected Sub BTNANTERIOR_Click(sender As Object, e As EventArgs) Handles BTNANTERIOR.Click
        Response.Redirect("Fiscalizador.aspx")
    End Sub

    Protected Sub btnAgregarPredio_Click(sender As Object, e As EventArgs) Handles btnAgregarPredio.Click
        Try
            Dim existe As Integer
            xcon.Open()
            Dim xcmd As New SqlCommand("sp_actualizar_estadopredio", xcon)
            xcmd.CommandType = CommandType.StoredProcedure
            With xcmd
                .Parameters.AddWithValue("@idpredio", idpredio)
                .Parameters.AddWithValue("@idestadopredio", cbofiscalizar.SelectedValue)
                .ExecuteNonQuery()

                xcon.Close()
            End With

        Catch ex As Exception
            lblmensaje.Text = "Error" & ex.Message
        Finally
            Response.Redirect("Fiscalizador.aspx")
            xcon.Close()

        End Try



    End Sub
End Class