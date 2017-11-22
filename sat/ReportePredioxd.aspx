<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ReportePredioxd.aspx.vb" Inherits="sat.ReportePredioxd" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <link href="css/W3.css" rel='stylesheet' type='text/css'>
   <script language="vb" runat="server">

       Protected Sub FancyBtn_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)

           FormsAuthentication.SignOut()

           Response.Redirect("index.aspx")

       End Sub

    </script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
 <div>
      

        <asp:Button class="w3-button w3-block"  OnClick="FancyBtn_Click" ID="Button1" runat="server" Text="REGRESAR" />
      

    </div>

        <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="True" GroupTreeImagesFolderUrl="" Height="1202px" ReportSourceID="CrystalReportSource1" ToolbarImagesFolderUrl="" ToolPanelWidth="200px" Width="1104px" />
        <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
            <Report FileName="CRFecha.rpt">
            </Report>
        </CR:CrystalReportSource>

    </form>
</body>
</html>
