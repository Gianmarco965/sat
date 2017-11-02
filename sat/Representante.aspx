<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Representante.aspx.vb" Inherits="sat.Representante" %>

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
        <link href="css/StyleSheet1.css"  rel='stylesheet' type='text/css'>

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->
    
        <script language="javascript" type="text/javascript">
// <![CDATA[

            function Button1_onclick() {

            }

// ]]>
        </script>
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
                                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                </button>
                               <a href="#" class="navbar-brand"><img src="images/logo1.jpg" alt="Urbanic Template" title="Urbanic Template" /></a>
                        </div>
                        <div class="navbar-collapse collapse" id="templatemo-nav-bar">
                            <ul class="nav navbar-nav navbar-right" style="margin-top: 40px;">
                                <li class="active"><a href="#templatemo-top">HOME</a></li>
                                <li><a href="#templatemo-about">LOGIN</a></li>
                                 <li><a href="#templatemo-contact">CONTACT</a></li>
                            </ul>
                        </div><!--/.nav-collapse -->
                    </div><!--/.container-fluid -->
                </div><!--/.navbar -->
            </div> <!-- /container -->
        </div>
       
           
        
        


<!-- /.templatemo-ABOUT -->
        <div class="templatemo-t" id="templatemo-about" dir="ltr" 
            style="background-image: url('images/backgr.png');">
            <div class="container">
                <div class="row">



                    <div class="templatemo-line-header">
                        <div class="text-center">
                            <hr class="team_hr team_hr_left"/>
                            <span style="font-family: 'TIMes New Roman', Times, serif; font-size: xx-large; font-weight: 900; font-style: inherit; color: #000000; text-decoration: underline;">REGISTRO DEL REPRESENTANTE</span>
                            <hr class="team_hr team_hr_right" /> 
                            <br />
                            <br />
                             <div class="form-group">
                                 <br />
                                 <br />
                                 <form id="form1" runat="server"> 


                                 
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
                            <asp:Label ID="Label16" runat="server" Text="Nombres :" 
                                Font-Size="13pt" Font-Bold="True" Font-Italic="False" ForeColor="#003399"></asp:Label>
                            </td>
                        <td class="style7">
                            <asp:TextBox ID="txtnombres" runat="server"  placeholder="Nombres..." maxlength="50" Width="170px"></asp:TextBox>
                            </td>
                        <td class="style7">
                            <asp:Label ID="Label1" runat="server" Text="Apellidos :" 
                                Font-Size="13pt" Font-Bold="True" Font-Italic="False" ForeColor="#003399"></asp:Label>
                        </td>
                        <td class="style7">
                                 <asp:TextBox ID="txtapellido" runat="server"  placeholder="Apellidos..." maxlength="50" Width="170px"></asp:TextBox> 

                                </td>
                                <td class="style7">
                            <asp:Label ID="Label17" runat="server" Text="Documento de Identidad :" 
                                Font-Size="13pt" Font-Bold="True" Font-Italic="False" ForeColor="#003399"></asp:Label>
                            </td>
                        <td class="style7">
                                 <asp:TextBox ID="txtdni" runat="server"  placeholder="Documento de Identidad..." maxlength="50" Width="170px"></asp:TextBox>
                            </td>
                    </tr>



                     <tr>
                        <td class="style5">
                            &nbsp;</td>
                        <td class="style5">
                            &nbsp;</td>
                        <td class="style5">
                            <asp:Label ID="Label3" runat="server" Text="Parentesco del Propietario :" 
                                Font-Size="13pt" Font-Bold="True" Font-Italic="False" ForeColor="#003399"></asp:Label>
                        </td>
                        <td class="style5">
                            <asp:DropDownList ID="idTippo_material" runat="server" 
                                                maxlength="50" Width="170px" TabIndex="1" 
                                     DataSourceID="SqlDataSource1" DataTextField="descripcion" 
                                     DataValueField="idParentesco"  >  </asp:DropDownList>
                                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                     ConnectionString="<%$ ConnectionStrings:satConnectionString %>" 
                                     SelectCommand="SELECT [descripcion], [idParentesco] FROM [Parentesco]">
                                 </asp:SqlDataSource>
                         </td>
                                <td class="style5">
                                    <asp:Button ID="btnregistrar" runat="server" Text="REGISTRAR" />
                            </td>
                        <td class="style5">
                            <asp:TextBox ID="codpredio" runat="server"  
                                    placeholder="Nombre del Propietario..." maxlength="50" Width="170px" 
                                    Visible="False"></asp:TextBox>
                             </td>
                    </tr>
                        


                    </table>

                            





                               </form>
                        
                        </div>
                       
                       </div>
                      
                      
                        </div>
              

                        
                      	
                    </div> 

                       
                            
                    </div>
           
        
        
        
        <!-- /.templatemo-team -->


         


        

       


        

        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js"  type="text/javascript"></script>
        <script src="js/stickUp.min.js"  type="text/javascript"></script>
        <script src="js/colorbox/jquery.colorbox-min.js"  type="text/javascript"></script>
        <script src="js/templatemo_script.js"  type="text/javascript"></script>
		<!-- templatemo 395 urbanic -->
    </body>
</html>
