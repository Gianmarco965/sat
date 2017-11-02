<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="autovaluo.aspx.vb" Inherits="sat.autovaluo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
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
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css'>

        <!-- Custom styles for this template -->
        <link href="js/colorbox/colorbox.css"  rel='stylesheet' type='text/css'>
          <link href="css/StyleSheet1.css" rel="stylesheet" type="text/css" />
    

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
        <style type="text/css">
            .style1
            {
                height: 295px;
                margin-bottom: 8px;
            }
            .style5
            {
                height: 71px;
            }
            .style7
            {
                height: 91px;
            }
            .style8
            {
                height: 115px;
            }
        </style>
    </head>
    
    <body>

        <div class="templatemo-top-bar" id="templatemo-top">
            <div class="container">
                <div class="subheader">
                    <div id="phone" class="pull-left">
                            <img src="images/phone.png" alt="phone"/>
                            090-080-0110
                    </div>
                    <div id="email" class="pull-right">
                            <img src="images/email.png" alt="email"/>
                            info@company.com
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
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                </button>
                                
                            &nbsp;<a href="#" class="navbar-brand"><img src="images/logo1.jpg"alt="Urbanic Template" title="Urbanic Template" /></a></div>
                        <div class="navbar-collapse collapse" id="templatemo-nav-bar">
                            <ul class="nav navbar-nav navbar-right" style="margin-top: 40px;">
                                <li><a href="ZZX">CONTACT</a></li>
                            </ul>
                        </div><!--/.nav-collapse -->
                    </div><!--/.container-fluid -->
                </div><!--/.navbar -->
            </div> <!-- /container -->
        </div>
        
        
       


<!-- /.templatemo-ABOUT -->
        <div class="templatemo-team" id="templatemo-about" 
            style="background-image: url('http://localhost:1209/images/backgr.png')">
            <div class="container" >
                <div class="row">
                    <div class="templatemo-line-header">
                        <div class="text-center">
                            <hr class="team_hr team_hr_left"/>
                            <span style="color: #000000; font-family: 'TIMes New Roman', Times, serif; font-size: 11px; text-decoration: underline; font-weight: 900;">REGISTRO DE AUTOVALUO</span>
                            <hr class="team_hr team_hr_right" /> 

                             <form id="form2" runat="server" >



                                        <table class="style1">
                    <tr>
                        <td class="style8">
                            </td>
                        <td class="style8">
                            </td>
                        <td class="style8">
                            <asp:Label ID="Label15" runat="server" Text="Cod. del Contribuyente :" 
                                Font-Size="13pt" Font-Bold="True" Font-Italic="False" ForeColor="#003399"></asp:Label>
                        </td>
                        <td class="style8">
                                 <asp:TextBox ID="predio" runat="server"  
                                    placeholder="Codigo del Contribuyente..." maxlength="50" Width="114px"></asp:TextBox>
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="16px" 
                                     ImageUrl="~/images/Buscar.png" Width="16px" />

                                </td>
                                <td class="style8">
                            </td>
                        <td class="style8">
                            </td>
                    </tr>


                      <tr>
                        <td class="style7">
                            <asp:Label ID="Label16" runat="server" Text="Nivel  :" 
                                Font-Size="13pt" Font-Bold="True" Font-Italic="False" ForeColor="#003399"></asp:Label>
                            </td>
                        <td class="style7">
                            <asp:TextBox ID="nivel" runat="server"  placeholder="Nivel..." maxlength="50" Width="170px"></asp:TextBox>
                            </td>
                        <td class="style7">
                            <asp:Label ID="Label1" runat="server" Text="Ambiente del Predio :" 
                                Font-Size="13pt" Font-Bold="True" Font-Italic="False" ForeColor="#003399"></asp:Label>
                        </td>
                        <td class="style7">
                                 <asp:TextBox ID="ambiente" runat="server"  placeholder="Ambiente..." maxlength="50" Width="170px"></asp:TextBox> 

                                </td>
                                <td class="style7">
                            <asp:Label ID="Label17" runat="server" Text="Instalacón Electrica :" 
                                Font-Size="13pt" Font-Bold="True" Font-Italic="False" ForeColor="#003399"></asp:Label>
                            </td>
                        <td class="style7">
                            <asp:DropDownList ID="inst_elect" runat="server" maxlength="50" Width="170px">
                                          <asp:ListItem>SI</asp:ListItem>
                                          <asp:ListItem>NO</asp:ListItem>
                                          </asp:DropDownList>
                            </td>
                    </tr>



                     <tr>
                        <td class="style5">
                            <asp:Label ID="Label2" runat="server" Text="Tipo de Material  :" 
                                Font-Size="13pt" Font-Bold="True" Font-Italic="False" ForeColor="#003399"></asp:Label>
                            </td>
                        <td class="style5">
                            <asp:DropDownList ID="idTippo_material" runat="server" 
                                                maxlength="50" Width="170px" TabIndex="1"  >  </asp:DropDownList>
                            </td>
                        <td class="style5">
                            <asp:Label ID="Label3" runat="server" Text="Área del Ambiente :" 
                                Font-Size="13pt" Font-Bold="True" Font-Italic="False" ForeColor="#003399"></asp:Label>
                        </td>
                        <td class="style5">
                                 <asp:TextBox ID="area" runat="server"  placeholder="Área..." maxlength="50" Width="170px"></asp:TextBox></td>
                                <td class="style5">
                            </td>
                        <td class="style5">
                            <asp:TextBox ID="codpredio" runat="server"  
                                    placeholder="Nombre del Propietario..." maxlength="50" Width="170px"></asp:TextBox>
                             </td>
                    </tr>
                    </table>


                            <asp:Button  ID="btnIngresar" runat="server" Text="ingresar" />
                            <div class="form-group"> 
                             </div>
                             <div class="form-group">
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <center><asp:GridView ID="MOSTRAR" runat="server" BackColor="White" BorderColor="#3366CC" 
                                         BorderStyle="None" BorderWidth="1px" CellPadding="4">
                                 <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                                 <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                                 <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                                 <RowStyle BackColor="White" ForeColor="#003399" />
                                 <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                 <SortedAscendingCellStyle BackColor="#EDF6F6" />
                                 <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                                 <SortedDescendingCellStyle BackColor="#D6DFDF" />
                                 <SortedDescendingHeaderStyle BackColor="#002876" />
                             </asp:GridView></center>
                              </div>
                                <br />
                                <asp:Label ID="lblMensaje" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                                <br />



                             <ul class="nav navbar-nav navbar-right" style="margin-top: 40px;">
                                 <asp:Button ID="btnSiguiente" Text="Siguiente" runat="server"></asp:Button>


                                
                            </ul>
                        </form>
                        </div>
                       
                       </div>
                      
                      
                        </div>
              

                        
                      	
                    </div> 

                       
                            
                    </div>
           
        
        
        
        <!-- /.templatemo-team -->







        <div class="templatemo-footer" >
            <div class="container">
                <div class="row">
                    <div class="text-center">

                        <div class="footer_container">
                            <ul class="list-inline">
                                <li>
                                    <a href="#">
                                        <span class="social-icon-fb"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="social-icon-rss"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="social-icon-twitter"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="social-icon-linkedin"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="social-icon-dribbble"></span>
                                    </a>
                                </li>
                            </ul>
                            <div class="height30"></div>
                            <a class="btn btn-lg btn-orange" href="#" role="button" id="btn-back-to-top">Back To Top</a>
                            <div class="height30"></div>
                        </div>
                        <div class="footer_bottom_content">
                   			<span id="footer-line">Copyright © 2084 <a href="#">Your Company Name</a></span>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>

        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js"  type="text/javascript"></script>
        <script src="js/stickUp.min.js"  type="text/javascript"></script>
        <script src="js/colorbox/jquery.colorbox-min.js"  type="text/javascript"></script>
        <script src="js/templatemo_script.js"  type="text/javascript"></script>
		<!-- templatemo 395 urbanic -->
    </body>
</html>
