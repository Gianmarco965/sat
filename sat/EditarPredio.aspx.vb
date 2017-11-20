﻿Imports System.Data.SqlClient
Public Class EditarPredio
    Inherits System.Web.UI.Page
    Dim xcon As New SqlConnection("Data Source=.;Initial Catalog=sat;Integrated Security=True")
    Dim dt As DataTable
    Dim codpredio As Integer

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        codpredio = Integer.Parse(Request.QueryString("idpredio"))
        cargar()
    End Sub

    Private Sub cargar()



    End Sub

    Protected Sub btnAgregarPredio_Click(sender As Object, e As EventArgs) Handles btnAgregarPredio.Click

        Try
            Dim existe As Integer
            xcon.Open()
            Dim xcmd As New SqlCommand("sp_actualizar_fiscalizador", xcon)
            xcmd.CommandType = CommandType.StoredProcedure
            With xcmd
                .Parameters.AddWithValue("@idfiscalizador", cbofiscalizador.SelectedValue)
                .Parameters.AddWithValue("@idpredio", codpredio)

                .ExecuteNonQuery()

                xcon.Close()
            End With

        Catch ex As Exception
            lblmensaje.Text = "Error" & ex.Message
        Finally
            Response.Redirect("index.aspx")
            xcon.Close()

            End Try


    End Sub

    Protected Sub BTNANTERIOR_Click(sender As Object, e As EventArgs) Handles BTNANTERIOR.Click
        Response.Redirect("index.aspx")
    End Sub
End Class