Imports System.Data
Imports System.Data.SqlClient
Public Class Propietario
    Inherits System.Web.UI.Page

    Dim xcon As New SqlConnection("Data Source=.;Initial Catalog=sat;Integrated Security=True")
    Dim dt As New DataSet
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        codContri.Text = Request.QueryString("a")
        Try

            xcon.Open()
            Dim xcmd As New SqlCommand("buscarCcontri", xcon)
            xcmd.CommandType = CommandType.StoredProcedure
            xcmd.Parameters.Add("cod_contri", codContri.Text)

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


    Protected Sub btnAgregarPredio_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnAgregarPredio.Click
        Dim a As String = codContri.Text
            If codpredio.Text = "" Or nombew.Text = "" Or ApellidoM.Text = "" Or ApellidoP.Text = "" Or Direccion.Text = "" Or cel.Text = "" Then

                MsgBox("Falta Datos Obligatorio")
            Else
                Response.Redirect("autovaluo.aspx")
                xcon.Open()
                Dim xcmd As New SqlCommand("IngPropietario", xcon)
                xcmd.CommandType = CommandType.StoredProcedure

                With xcmd

                .Parameters.Add("idpredio", codpredio.Text)
                    .Parameters.Add("nombre", nombew.Text)
                    .Parameters.Add("apellido_p", ApellidoP.Text)
                    .Parameters.Add("apellido_m", ApellidoM.Text)
                    .Parameters.Add("dni", dni.Text)
                    .Parameters.Add("iddistrito", iddistrito.SelectedIndex + 1)
                    .Parameters.Add("direccion", Direccion.Text)
                    .Parameters.Add("referencia", Referencia.Text)
                    .Parameters.Add("telefono", cel.Text)
                    .Parameters.Add("correo", correo.Text)
                    .Parameters.Add("idT_predio", idt_predio.SelectedIndex + 1)
                    .Parameters.Add("detalle_predio", descripcionP.Text)

                    .ExecuteNonQuery()
            End With
            Response.Redirect("Pautovaluo.aspx?a=" + a)

        End If
            xcon.Close()


    End Sub



    

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
       
    End Sub
End Class