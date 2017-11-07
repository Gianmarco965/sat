Imports System.Data
Imports System.Data.SqlClient
Public Class Propietario
    Inherits System.Web.UI.Page
    Dim idpredio As Integer
    Dim xcon As New SqlConnection("Data Source=.;Initial Catalog=sat;Integrated Security=True")
    Dim dt As New DataSet
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        codContri.Text = Request.QueryString("a")
        Try

            xcon.Open()
            Dim xcmd As New SqlCommand("buscarCcontri", xcon)
            xcmd.CommandType = CommandType.StoredProcedure
            xcmd.Parameters.AddWithValue("cod_contri", codContri.Text)

            Dim rs As New SqlDataAdapter(xcmd)
            Dim table As New DataTable
            rs.Fill(table)

            idpredio = table.Rows(0)(0).ToString()

            xcon.Close()
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub


    Protected Sub btnAgregarPredio_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnAgregarPredio.Click
        Dim a As String = codContri.Text
        If nombew.Text = "" Or ApellidoM.Text = "" Or ApellidoP.Text = "" Or Direccion.Text = "" Or cel.Text = "" Then

            MsgBox("Falta Datos Obligatorio")
        Else

            xcon.Open()
                Dim xcmd As New SqlCommand("IngPropietario", xcon)
                xcmd.CommandType = CommandType.StoredProcedure

                With xcmd

                .Parameters.AddWithValue("idpredio", idpredio)
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
            Response.Redirect("autovaluo.aspx?a=" + idpredio.ToString() + "&codcontri=" + codContri.Text)

        End If
            xcon.Close()


    End Sub



    

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
       
    End Sub
End Class