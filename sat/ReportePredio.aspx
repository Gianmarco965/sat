<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>
 
<%@ Register Assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304"
    Namespace="CrystalDecisions.Web" TagPrefix="CR" %>
 
<!DOCTYPE html>
 
<html xmlns="<a class="vglnk" href="http://www.w3.org/1999/xhtml" rel="nofollow"><span>http</span><span>://</span><span>www</span><span>.</span><span>w3</span><span>.</span><span>org</span><span>/</span><span>1999</span><span>/</span><span>xhtml</span></a>">
<head runat="server">
    <title>Página sin título</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
        <CR:CrystalReportViewer ID="VisorCR" runat="server" AutoDataBind="true" />
    </div>
    </form>
</body>
</html>