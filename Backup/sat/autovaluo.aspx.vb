﻿Imports System.Data
Imports System.Data.SqlClient

Public Class autovaluo
    Inherits System.Web.UI.Page
    Dim xcon As New SqlConnection("Data Source=.;Initial Catalog=sat;Integrated Security=True")
    Dim dt As DataTable
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        llenarTipo()
        predio.Text = Request.QueryString("a")

    End Sub

    Protected Sub btnIngresar_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnIngresar.Click

        Dim a As String = predio.Text
        Try
            xcon.Open()
            Dim xcmd As New SqlCommand("IngAutovaluo", xcon)
            xcmd.CommandType = CommandType.StoredProcedure
            With xcmd
                .Parameters.Add("idpredio", codpredio.Text)
                .Parameters.Add("nivel", nivel.Text)
                .Parameters.Add("ambiente", ambiente.Text)
                .Parameters.Add("idInst_elect", inst_elect.Text)
                .Parameters.Add("idtipo_material", idTippo_material.SelectedIndex + 1)
                .Parameters.Add("area_construida", area.Text)


                .ExecuteNonQuery()
            End With

            lblMensaje.Text = "Grabo Correctamente, Clientes Agregado"
        Catch ex As Exception
            lblMensaje.Text = "Error" & ex.Message
        Finally

            xcon.Close()
            mostrarAuto()



        End Try


    End Sub


    Private Sub mostrarAuto()
        Try
            xcon.Open()
            Dim xcmd As New SqlCommand("MostrarAutovaluo", xcon)
            xcmd.CommandType = CommandType.StoredProcedure
            xcmd.Parameters.Add("codpredio", predio.Text)

            Dim adapter As New SqlDataAdapter(xcmd)
            dt = New DataTable
            adapter.Fill(dt)
            MOSTRAR.DataSource = dt
            MOSTRAR.DataBind()

        Catch ex As Exception
            lblMensaje.Text = "Error" & ex.Message
        Finally
            xcon.Close()

        End Try
    End Sub

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
      
    End Sub

    Private Sub llenarTipo()
        xcon.Open()
        Dim xcmd As New SqlCommand("llenarmaterial", xcon)
        Dim da As New SqlDataAdapter(xcmd)
        Dim ds As New DataSet()
        da.Fill(ds)
        idTippo_material.DataTextField = ds.Tables(0).Columns("descripcion").ToString()
        idTippo_material.DataValueField = ds.Tables(0).Columns("idtipo_material").ToString()
        idTippo_material.DataSource = ds.Tables(0)
        idTippo_material.DataBind()
        xcon.Close()
    End Sub

   
    Public Sub predio_TextChanged(ByVal sender As Object, ByVal e As EventArgs) Handles predio.TextChanged

    End Sub

    Protected Sub ambiente_TextChanged(ByVal sender As Object, ByVal e As EventArgs) Handles ambiente.TextChanged
        Try

            xcon.Open()
            Dim xcmd As New SqlCommand("buscarCcontri", xcon)
            xcmd.CommandType = CommandType.StoredProcedure
            xcmd.Parameters.Add("cod_contri", predio.Text)

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
End Class