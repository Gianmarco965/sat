Imports System.Data.SqlClient
Imports System.Data
Imports System.Text
Imports System.Configuration

Public Class VerPredios
    Inherits System.Web.UI.Page
    Dim xcon As New SqlConnection("Data Source=.;Initial Catalog=sat;Integrated Security=True")
    Dim dt As DataTable
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        cargar()
    End Sub
    Private Sub cargar()

        If Not Me.IsPostBack Then
            'Populating a DataTable from database.
            Dim dt As DataTable = Me.GetData()
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

    Private Sub mostrarAuto()

        Try
            xcon.Open()
            Dim xcmd As New SqlCommand("sp_select_predio", xcon)
            xcmd.CommandType = CommandType.StoredProcedure


            xcmd.ExecuteNonQuery()

            Dim adapter As New SqlDataAdapter(xcmd)
            dt = New DataTable


            adapter.Fill(dt)
            ' MOSTRAR.DataSource = dt
            'MOSTRAR.DataBind()

        Catch ex As Exception

        Finally
            xcon.Close()

        End Try
    End Sub

    Protected Sub MOSTRAR_RowEditing(sender As Object, e As GridViewEditEventArgs)

    End Sub

    Private Function GetData() As DataTable
        Dim constr As String = ConfigurationManager.ConnectionStrings("satConnectionString").ConnectionString
        Using con As New SqlConnection(constr)
            Using cmd As New SqlCommand("sp_select_predio")
                Using sda As New SqlDataAdapter()
                    cmd.Connection = con
                    sda.SelectCommand = cmd
                    Using dt As New DataTable()
                        sda.Fill(dt)
                        Return dt
                    End Using
                End Using
            End Using
        End Using
    End Function
End Class