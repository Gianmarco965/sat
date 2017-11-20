<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FiscalizarPredio.aspx.vb" Inherits="sat.FiscalizarPredio" %>
<!DOCTYPE html">
<html>
<head>
    <title>FISCALIZAR PREDIO</title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <!--
Urbanic Templat
http://www.templatemo.com/tm-395-urbanic

-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--<link rel="shortcut icon" href="PUT YOUR FAVICON HERE">-->

    <!-- Google Web Font Embed -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>

    <!-- Bootstrap core CSS -->
    <link href="css/W3.css" rel='stylesheet' type='text/css'>
    <link href="css/templatemo_style.css" rel="stylesheet" />
    <!-- Custom styles for this template -->
     <meta http-equiv="Expires" content="0" /> 
        <meta http-equiv="Pragma" content="no-cache" />

        <script type="text/javascript">
          if(history.forward(1)){
            location.replace( history.forward(1) );
          }
        </script>
     <script language="vb" runat="server">

         Protected Sub FancyBtn_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)

             FormsAuthentication.SignOut()

             Response.Redirect("WebForm1.aspx")


         End Sub


    </script>

    <link href="css/StyleSheet1.css" rel='stylesheet' type='text/css' />
</head>

<body>

    <div class="templatemo-top-bar" id="templatemo-top">
        <div class="container">
            <div class="subheader">
                <div id="phone" class="pull-left">
                    <img src="images/phone.png" alt="phone" />
                    090-080-0110
                </div>
                <div id="email" class="pull-right">
                    <img src="images/email.png" alt="email" />
                    sat@gmail.com
                </div>
            </div>
        </div>
    </div>

            <!-- Static navbar -->

                <div class="w3-bar navbar navbar-default" role="navigation">
                            <a href="Fiscalizador.aspx" class="w3-bar-item">
                            <img src="images/logo1.png" alt="Urbanic Template" title="Urbanic Template" /></a>
                    
                         
                          <input type="button"  onserverclick="FancyBtn_Click" runat="server" class="btn btn-default w3-bar-item w3-button w3-right w3-text-light-grey w3-padding-16" value="Cerrar SESION"/>                        
                        </div>
        <!-- /container -->

    <!-- /.templatemo-ABOUT -->

    <div class="templatemo-t w3-bar" id="templatemo-about" dir="ltr"
        style="background-image: url('images/backgr.png');">


        <section>

             <div class="w3-container w3-display-middle w3-margin-top">

            <form id="form1"  class="w3-container w3-card-4 w3-light-grey w3-text-blue w3-margin"  runat="server">
                
            <h2 class="w3-center" style="color: #000000;">FISCALIZAR PREDIO</h2>
                <table >
                   
                
                    <div class="w3-row">
                    <tr>
                        
                        <td></td>
                       <td>
                            <label>Estado Predio</label>
                            <asp:DropDownList ID="cbofiscalizar" class="w3-select w3-border" runat="server" placeholder="....." maxlength="50"
                                DataSourceID="SqlDataSource6" DataTextField="nombreestado"
                                DataValueField="idestadopredio">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource6" runat="server"
                                ConnectionString="<%$ ConnectionStrings:satConnectionString %>"
                                SelectCommand="select [idestadopredio],[nombreestado] from EstadoPredio"></asp:SqlDataSource>
                      
                        </td>

                        <td>
                            
                            <asp:RequiredFieldValidator id="RequiredFieldValidator6" runat="server"
                              ControlToValidate="cbofiscalizar"
                              ErrorMessage="*"
                              ForeColor="Red">
                            </asp:RequiredFieldValidator>

                              

                        </td>



                    </tr>
                         </div>
                    
                    <div class="w3-row">

                         </div>
                </table>


                <div class="form-group">
                    <asp:Button ID="BTNANTERIOR" runat="server" OnClientClick="postback false;"
                        Text="Anterior" class="w3-button w3-blue-gray" Height="46px"
                        Width="115px" />
                    <asp:Button ID="btnAgregarPredio" runat="server"
                        Text="ACEPTAR" class="w3-button w3-blue w3-right"  Height="46px"
                        Width="115px" />
                </div>

                <div class="form-group">
                    <center>
                        <asp:Label ID="lblmensaje" runat="server" Height="19px" ForeColor="Red"></asp:Label></center>
                </div>


            </form>

            </div>




         
          
     
        </section>
    </div>

    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/stickUp.min.js" type="text/javascript"></script>
    <script src="js/colorbox/jquery.colorbox-min.js" type="text/javascript"></script>
    <script src="js/templatemo_script.js" type="text/javascript"></script>
    <!-- templatemo 395 urbanic -->
</body>

</html>
