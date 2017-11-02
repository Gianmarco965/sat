<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Predio.aspx.vb" Inherits="sat.Predio" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
        <title>Urbanic Free Website Template</title>
        <meta name="keywords" content="" />
		<meta name="description" content="" />
<!--


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
        <link href="css/StyleSheet1.css"  rel='stylesheet' type='text/css'>

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
        <style type="text/css">
            .style1
            {
                width: 805px;
                margin-left: 22px;
                height: 408px;
            }
            .style2
            {
                width: 107px;
            }
            .style3
            {
                width: 95px;
                height: 84px;
            }
            .style4
            {
                width: 97px;
            }
            .style5
            {
                width: 217px;
            }
            .style6
            {
                width: 217px;
                height: 84px;
            }
            .style7
            {
                width: 97px;
                height: 84px;
            }
            .style8
            {
                width: 107px;
                height: 84px;
            }
            .style9
            {
                height: 84px;
            }
            .style10
            {
                width: 217px;
                height: 108px;
            }
            .style11
            {
                width: 97px;
                height: 108px;
            }
            .style12
            {
                width: 107px;
                height: 108px;
            }
            .style13
            {
                height: 108px;
            }
            .style14
            {
                width: 217px;
                height: 97px;
            }
            .style15
            {
                width: 97px;
                height: 97px;
            }
            .style16
            {
                width: 107px;
                height: 97px;
            }
            .style17
            {
                height: 97px;
            }
            .style18
            {
                width: 217px;
                height: 77px;
            }
            .style19
            {
                width: 97px;
                height: 77px;
            }
            .style20
            {
                width: 107px;
                height: 77px;
            }
            .style21
            {
                height: 77px;
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
                                <li><a href="WebForm1.aspx">Inicio</a> </li>
                            </ul>
                        </div><!--/.nav-collapse -->
                    </div><!--/.container-fluid -->
                </div><!--/.navbar -->
            </div> <!-- /container -->
        </div>
        
        
        
                    
         


        <!-- /.REGISTRO -->


                  <div class="templatemo-contact" style="background-image: url('images/backgr.png')">
            <div class="container">
                <div class="row">
                    <div class="templatemo-line-header head_contact">
                        <div class="text-center">
                            <hr class="team_hr team_hr_left hr_gray" style="font-size: small"/>
                            <span class="txt_darkgrey" 
                                
                                style="font-family: 'TIMes New Roman', Times, serif; font-size: 20px; font-weight: 900; color: #0000FF;">REGISTRO DE PREDIO</span>
                            <hr class="team_hr team_hr_right hr_gray" style="font-size: small"/>

                          <form id="form1" runat="server" > 
                      
                <table class="style1">
                    <tr>
                        <td class="style18">
                            </td>
                        <td class="style19">
                            </td>
                        <td class="style20">
                            <asp:Label ID="Label15" runat="server" Text="Cod. del Contribuyente :" 
                                Font-Size="13pt" Font-Bold="True" Font-Italic="False" ForeColor="#003399"></asp:Label>
                        </td>
                        <td class="style21">
                                <asp:TextBox ID="codContri" runat="server"  
                                    placeholder="Codigo del Contribuyente..." maxlength="50" Width="115px" 
                                    Height="21px"></asp:TextBox>
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="19px" 
                                    ImageUrl="~/images/Buscar.png" Width="20px" />
                                </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            <asp:Label ID="Label4" runat="server" Text="Direccción :" Width="96px" 
                                Font-Size="13pt" Font-Bold="True" Font-Italic="False" ForeColor="#003399"></asp:Label>
                        </td>
                        <td class="style7">
                                <asp:TextBox ID="ubicacion_P" runat="server" placeholder="Dirección..." maxlength="50" Width="170px"></asp:TextBox>
                        </td>
                        <td class="style8">
                            <asp:Label ID="Label8" runat="server" Text="Referencia :" Font-Size="13pt" 
                                Font-Bold="True" Font-Italic="False" ForeColor="#003399"></asp:Label>
                        </td>
                        <td class="style9">
                            <asp:TextBox ID="referencia_p" runat="server"  
                                placeholder="Referencia del la Dirección..." maxlength="50" Width="170px" 
                                Height="21px"></asp:TextBox> 
                        </td>

                        <td class="style3">
                            <asp:Label ID="Label1" runat="server" Text="Distrito :" Width="106px" 
                                Font-Size="13pt" Font-Bold="True" ForeColor="#003399"></asp:Label>
                        </td>
                        <td class="style9">
                            <asp:DropDownList ID="idDistrito" runat="server" placeholder="....." 
                                maxlength="50" Width="170px" DataSourceID="SqlDataSource1" 
                                DataTextField="descripcion" DataValueField="idDistrito" >
                                </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:satConnectionString %>" 
                                SelectCommand="SELECT [idDistrito], [descripcion] FROM [Distrito]">
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            <asp:Label ID="Label6" runat="server" Text="Condición del Predio :" 
                                Width="106px" Height="39px" Font-Size="13pt" Font-Bold="True" 
                                ForeColor="#003399"></asp:Label>
                        </td>
                        <td class="style11">
                            <asp:DropDownList ID="idCondicion" runat="server" placeholder="....." 
                                maxlength="50" Width="170px" DataSourceID="SqlDataSource2" 
                                DataTextField="descripcion" DataValueField="idCondicion_P">  </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:satConnectionString %>" 
                                SelectCommand="SELECT [idCondicion_P], [descripcion] FROM [Condicion_Propiedad]">
                            </asp:SqlDataSource>
                        </td>
                        <td class="style12">
                            <asp:Label ID="Label2" runat="server" Text="Descripción de la Condición :" 
                                Width="150px" Font-Size="13pt" Font-Bold="True" ForeColor="#003399"></asp:Label>
                        </td>
                        <td class="style13">
                            <asp:TextBox ID="descripcion_Condi" runat="server" placeholder="Desc. de la Condición." maxlength="50" Width="170px"></asp:TextBox>
                        </td>
                        <td class="style12">
                            <asp:Label ID="Label9" runat="server" Text="Estado del Predio :" 
                                Width="150px" Font-Size="13pt" Font-Bold="True" ForeColor="#003399"></asp:Label>
                        </td>
                        <td class="style13">
                            <asp:DropDownList ID="idEstado" runat="server" placeholder="....." 
                                maxlength="50" Width="170px" DataSourceID="SqlDataSource3" 
                                DataTextField="descripcion" DataValueField="idEstado">  </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:satConnectionString %>" 
                                SelectCommand="SELECT [idEstado], [descripcion] FROM [Estado]">
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="style14">
                            <asp:Label ID="Label11" runat="server" Text="Uso del Predio :" 
                                Width="106px" Height="39px" Font-Size="13pt" Font-Bold="True" 
                                ForeColor="#003399"></asp:Label>
                        </td>
                        <td class="style15">
                            <asp:DropDownList ID="idUso_predio" runat="server" placeholder="....." 
                                maxlength="50" Width="170px" DataSourceID="SqlDataSource4" 
                                DataTextField="descripcion" DataValueField="idUso_Predio">  </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:satConnectionString %>" 
                                SelectCommand="SELECT [descripcion], [idUso_Predio] FROM [Uso_Predio]">
                            </asp:SqlDataSource>
                        </td>
                        <td class="style16">
                            <asp:Label ID="Label12" runat="server" Text="Tipo del Predio :" 
                                Width="150px" Font-Size="13pt" Font-Bold="True" ForeColor="#003399"></asp:Label>
                        </td>
                        <td class="style17">
                            <asp:DropDownList ID="idTipo" runat="server" placeholder="....." maxlength="50" 
                                Width="170px" DataSourceID="SqlDataSource5" DataTextField="descripcion" 
                                DataValueField="idTipo">  </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:satConnectionString %>" 
                                SelectCommand="SELECT [descripcion], [idTipo] FROM [Tipo]">
                            </asp:SqlDataSource>
                        </td>

                        <td class="style16">
                            <asp:Label ID="Label3" runat="server" Text="Desc. Tipo del Predio :" 
                                Width="150px" Font-Size="13pt" Font-Bold="True" ForeColor="#003399"></asp:Label>
                        </td>
                        <td class="style17">
                            <asp:TextBox ID="Descripcion_Tipo" runat="server" placeholder="descripcion de otro tipo" maxlength="50" Width="170px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5">
                            <asp:Label ID="Label13" runat="server" Text="Fecha de Adq. :" 
                                Width="106px" Height="39px" Font-Size="13pt" Font-Bold="True" 
                                ForeColor="#003399"></asp:Label>
                        </td>
                        <td class="style4">
                            <asp:TextBox ID="fecha" runat="server" 
                                  placeholder="Fecha..." maxlength="50" Width="170px" TextMode="Date"></asp:TextBox>
                        </td>
                        <td class="style2">
                            <asp:Label ID="Label14" runat="server" Text="Área del Terreno :" 
                                Width="150px" Font-Size="13pt" Font-Bold="True" ForeColor="#003399"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="Area_Terreno" runat="server" placeholder="Área del terreno" maxlength="50" Width="170px"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;
                          
                            </td>


                            <td class="style2">
                            <asp:Label ID="Label5" runat="server" Text="Observación :" 
                                Width="150px" Font-Size="13pt" Font-Bold="True" ForeColor="#003399"></asp:Label>
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                          
                            <asp:TextBox ID="Observacion" runat="server" 
                                placeholder="Observacion" maxlength="50" Width="170px" Height="44px"></asp:TextBox>
                          
                            </td>
                    </tr>
                </table>
                
           
                              
                            
                                <br />
                                <br />
                                   
                              
                            
                              
                           
                            
                            <div class="form-group">
                                <asp:Button ID="Button1" runat="server" 
                                    Text="Anterior" class="btn btn-orange " BackColor="Blue" Height="46px" 
                                    Width="115px" />  <asp:Button ID="btnAgregarPredio" runat="server" 
                                    Text="Registrar" class="btn btn-orange " BackColor="Blue" Height="46px" 
                                    Width="115px" /> </div>
                             <div class="form-group"><center>
                             <asp:Label ID="lblmensaje" runat="server" Height="19px" ForeColor="Red"></asp:Label></center></div>
                             
                             
                             </form>
                    
                          
                          
                          
                           </div>
                            
                    </div>

                   
                   
                </div><!-- /.row -->
            </div><!-- /.container -->
        </div>



        <!-- /.templatemo-team -->

        

        <!-- /.blog_post 2 -->
                    
                   -->
                    
            
       
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
                            <a class="btn btn-lg btn-orange" href="#" role="button" id="btn-back-to-top">Back To Topa>
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

