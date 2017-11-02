Imports System.Data
Imports System.Data.SqlClient


Public Class WebForm1
    Inherits System.Web.UI.Page
    Dim xcon As New SqlConnection("Data Source=.;Initial Catalog=sat;Integrated Security=True")
    Dim dt As New DataSet
    Dim ad As SqlDataAdapter


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load




    End Sub




    Protected Sub btnIngresar_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnIngresar.Click
        Dim a As Integer = 0


        Try
            xcon.Open()
            Dim xcmd As New SqlCommand("usu", xcon)
            xcmd.CommandType = CommandType.StoredProcedure
            xcmd.Parameters.Add("@email", email.Text)
            xcmd.Parameters.Add("@password", password.Text)
            xcmd.Parameters.Add("@tipo", idTrabajador.SelectedIndex + 1)

            ad = New SqlDataAdapter(xcmd)
            Dim dt As New DataTable

            ad.Fill(dt)
            a = dt.Rows(0)(5).ToString()

        Catch ex As Exception
            MsgBox("Datos incorrectos")
        Finally

            If a = 1 Then
                Response.Redirect("Fiscalizador.aspx")

                Me.ClearChildState()


            End If

            If a = 2 Then
                Response.Redirect("indexx.aspx")
                Me.ClearChildState()
            End If


            xcon.Close()

        End Try





    End Sub




    Protected Sub TextBox1_TextChanged(ByVal sender As Object, ByVal e As EventArgs)

    End Sub

    
End Class