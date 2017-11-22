<%@ Page Language="vb" AutoEventWireup="false"  %>
<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>
<!DOCTYPE html>
 
<html>
<head runat="server">
    <title>Página sin título</title>
    <link href="css/W3.css" rel='stylesheet' type='text/css'>
   <script language="vb" runat="server">

       Protected Sub FancyBtn_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)

           FormsAuthentication.SignOut()

           Response.Redirect("index.aspx")

       End Sub

    </script>

</head>
<body>


    <form id="form1" runat="server">
    <div>
      

        <asp:Button class="w3-button w3-block"  OnClick="FancyBtn_Click" ID="Button1" runat="server" Text="REGRESAR" />
      

    </div>
        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="True" EnableDatabaseLogonPrompt="False" EnableParameterPrompt="False" GroupTreeImagesFolderUrl="" Height="815px" ReportSourceID="CrystalReportSource1" ToolbarImagesFolderUrl="" ToolPanelWidth="200px" Width="37px" ReuseParameterValuesOnRefresh="True" />
        <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
            <Report FileName="CRPredio.rpt">
            </Report>
        </CR:CrystalReportSource>
    </form>
</body>
</html>