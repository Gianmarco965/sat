Imports System.Data.SqlClient

Public Class PrediosAsignados
    Inherits System.Web.UI.Page
    Dim xcon As New SqlConnection("Data Source=.;Initial Catalog=sat;Integrated Security=True")
    Dim dt As DataTable
    Dim idfiscalizador As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        idfiscalizador = Request.QueryString("idfiscalizador")
        MsgBox(idfiscalizador.ToString())

        cargar(idfiscalizador)

    End Sub
    Private Sub cargar(idfiscalizador As Integer)

        If Not Me.IsPostBack Then
            'Populating a DataTable from database.
            Dim dt As DataTable = Me.GetData(idfiscalizador)
            dt.Columns.Add("Editar")

            'Building an HTML string.
            Dim html As New StringBuilder()

            'Table start.
            html.Append("<table class='w3-table-all w3-border'>")

            'Building the Header row.
            html.Append("<tr class='w3-blue'>")
            For Each column As DataColumn In dt.Columns
                html.Append("<th>")
                html.Append(column.ColumnName)
                html.Append("</th>")


            Next

            html.Append("</tr>")

            'Building the Data rows.
            For Each row As DataRow In dt.Rows

                html.Append("<tr class='w3-hover-green'>")
                For Each column As DataColumn In dt.Columns
                    If dt.Columns.Count - 1 = column.Ordinal Then
                        html.Append("<td>")
                        html.Append("<a href='#'>Editar</a>")
                        html.Append("</td>")
                    End If
                    html.Append("<td>")
                    html.Append(row(column.ColumnName))
                    html.Append("</td>")

                Next



                html.Append("</tr>")

            Next

            'Table end.
            html.Append("</table>")

            'Append the HTML string to Placeholder.
            PlaceHolder1.Controls.Add(New Literal() With {
               .Text = html.ToString()
             })
        End If
    End Sub

    Private Function GetData(idfiscalizador As Integer) As DataTable
        Dim constr As String = ConfigurationManager.ConnectionStrings("satConnectionString").ConnectionString
        Dim con As New SqlConnection(constr)
        Dim cmd As New SqlCommand()
        cmd.Connection = con
        cmd.CommandText = "sp_select_predio_x_fiscalizador"
        cmd.CommandType = CommandType.StoredProcedure
        cmd.Parameters.AddWithValue("@idfiscalizador", SqlDbType.Int).Value = 2
        Dim sda As New SqlDataAdapter(cmd)

        Dim dt As New DataTable()
        sda.Fill(dt)

        Return dt


    End Function




End Class