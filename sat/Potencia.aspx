<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Potencia.aspx.vb" Inherits="sat.Potencia" %>

<!DOCTYPE html>

<html>
<head>
    <title>Urbanic Free Website Template</title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <!--

Urbanic Template

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

    <div class="templatemo-top-menu">
        <div class="container">
            <!-- Static navbar -->
            <div class="navbar navbar-default" role="navigation">
                <div class="container">
                    <div class="navbar-header">

                        <a href="#" class="navbar-brand">
                            <img src="images/logo1.jpg" alt="Urbanic Template" title="Urbanic Template" /></a>
                    </div>

                </div>
                <!--/.container-fluid -->
            </div>
            <!--/.navbar -->
        </div>
        <!-- /container -->
    </div>






    <!-- /.templatemo-ABOUT -->

    <div class="templatemo-t w3-bar" id="templatemo-about" dir="ltr"
        style="background-image: url('images/backgr.png');">

            <div class="w3-container w3-display-middle w3-margin-top">
                            
                            
                            

                          <form id="form1" class="w3-container w3-card-4 w3-light-grey w3-text-blue w3-margin" runat="server" > 
                      <h2 style="color: #000000;">REGISTRO DE POTENCIA</h2>
                <table class="style1">
                   
                    <tr>
                      
                        <td>
                            <label>Longitud</label>
                            <asp:TextBox ID="txtlongitud" runat="server"  class="w3-input"
                                  placeholder="Longitud..." maxlength="50" ></asp:TextBox>
                        </td>
                       
                        <td>
                            <label>Altura</label>
                            <asp:TextBox ID="txtaltura" runat="server"   class="w3-input"
                                placeholder="Altura..." maxlength="50" Width="170px" 
                                ></asp:TextBox> 
                        </td>

                      
                        <td>
                            <label>Ancho</label>
                            <asp:TextBox ID="txtancho" runat="server"   class="w3-input"
                                placeholder="Ancho..." maxlength="50" 
                                ></asp:TextBox> 
                        </td>
                    </tr>
                    <tr>
                       
                        <td>
                            <label>Cilindro</label>
                            <asp:TextBox ID="txtcilindro" runat="server"  class="w3-input"
                                placeholder="Cilindro..." maxlength="50" Width="170px" 
                                ></asp:TextBox> 
                        </td>
                       
                        <td>
                            <label>Peso bruto</label>
                            <asp:TextBox ID="txtpbruto" runat="server" class="w3-input" placeholder="Peso Bruto....." maxlength="50" Width="170px"></asp:TextBox>
                        </td>
                     
                        <td>
                            <label>Peso Neto</label>
                            <asp:TextBox ID="txtpneto" class="w3-input" runat="server" placeholder="Peso neto " maxlength="50" Width="170px"></asp:TextBox>
                        </td>
                    </tr>
                    

                </table>

                            
                            <div class="form-group">
                                <asp:Button ID="Button1" runat="server" 
                                    Text="Anterior" class="w3-button w3-gray" BackColor="Blue" Height="46px" 
                                    Width="115px" />  <asp:Button ID="btnAgregarPotencia" runat="server" 
                                    Text="Registrar" class="w3-button w3-blue" BackColor="Blue" Height="46px" 
                                    Width="115px" /> </div>
                             <div class="form-group"><center>
                             <asp:Label ID="lblmensaje" runat="server" Height="19px" ForeColor="Red"></asp:Label></center></div>
                             
                             
                             </form>
                    
                          
                           </div>
                            
                    </div>

                   
               
    
</body>
</html>
