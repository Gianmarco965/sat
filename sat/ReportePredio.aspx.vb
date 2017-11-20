Imports System
Imports System.Data
Imports System.Data.SqlClient
Imports CrystalDecisions.CrystalReports.Engine

Public Class ReportePredio
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim conn As SqlConnection = New SqlConnection("Data Source=.;Initial Catalog=sat;Integrated Security=true;")

        Try

            Dim comando As SqlCommand = New SqlCommand("SELECT * FROM Purchasing.Vendor", conn)

            Dim adaptador As SqlDataAdapter = New SqlDataAdapter(comando)

            Dim ds = New DataSet()
            adaptador.Fill(ds)

            Dim reporte As ReportDocument = New ReportDocument()
            reporte.Load(Server.MapPath("CRPredio.rpt"))
            reporte.SetDataSource(ds.Tables(0))

            VisorCR.ReportSource = reporte

        Catch (Exception ex)
      
            lblMensaje.Text = ex.Message;
        
        Finally

            If (conn.State!= ConnectionState.Closed) Then
                conn.Close();
            conn.Dispose();


    End Sub

End Class