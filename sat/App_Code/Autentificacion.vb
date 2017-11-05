Imports System.Data.SqlClient
Imports System.Data



Public Class Autentificacion
    Public Structure DatosLogin
        Public validar As Boolean
        Public a As Integer
        Sub misdatos(datovalidar As Boolean, validara As Integer)
            validar = datovalidar
            a = validara
        End Sub
    End Structure

    Public Shared Function Autenticar(usuario As String, pass As String, tipo As Integer) As DatosLogin
        Dim datos As New DatosLogin()


        Dim a As Integer = 0
        Dim ad As SqlDataAdapter
        Using xcon As SqlConnection = New SqlConnection(ConfigurationManager.ConnectionStrings("satConnectionString").ToString)

            Try
                xcon.Open()
                Dim xcmd As New SqlCommand("usu", xcon)
                xcmd.CommandType = CommandType.StoredProcedure
                xcmd.Parameters.AddWithValue("@email", usuario)
                xcmd.Parameters.AddWithValue("@password", pass)
                xcmd.Parameters.AddWithValue("@tipo", tipo)

                ad = New SqlDataAdapter(xcmd)
                Dim dt As New DataTable

                ad.Fill(dt)
                a = dt.Rows(0)(5).ToString()

            Catch ex As Exception
                datos.misdatos(False, a)

                MsgBox("Datos incorrectos")
            Finally
                datos.misdatos(True, a)

                xcon.Close()

            End Try

            Return datos

        End Using





    End Function


End Class
