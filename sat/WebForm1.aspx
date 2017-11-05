<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="sat.WebForm1" %>

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
 
        <link href="css/StyleSheet1.css"  rel='stylesheet' type='text/css' />

      
    
        
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
                                
                               <a href="#" class="navbar-brand"><img src="images/logo1.jpg" alt="Urbanic Template" title="Urbanic Template" /></a>
                        </div>
                       
                    </div><!--/.container-fluid -->
                </div><!--/.navbar -->
            </div> <!-- /container -->
        </div>
       
           
        
        


<!-- /.templatemo-ABOUT -->
      
          <div class="templatemo-t w3-bar" id="templatemo-about" dir="ltr" 
            style="background-image: url('images/backgr.png');">
       
                            
            
                                 <div class="w3-container w3-display-middle w3-margin-top">
                                 <form id="formularioxd"  class="w3-container w3-card-4 w3-light-grey w3-text-blue w3-margin" runat="server">
                                     

                                      <h2 class="w3-center" style="color: #000000;" >Iniciar Sesión</h2>
                                     <div class="w3-row w3-section ">
                                         <div class="w3-col" style="width:50px">
                                              
                                        <asp:Image ID="Image1" runat="server" Height="33px" 
                                            ImageUrl="~/images/Vista_icons_04.png" Width="36px" />
                                             </div>
                                         <div class="w3-rest">
                                        <asp:TextBox type="text" ID="TextBox1" class="w3-input" runat="server" placeholder="Usuario" maxlength="50" ></asp:TextBox>
                                             </div>
                                     </div>
                                     <div class="w3-row w3-section">
                                        <div class="w3-col" style="width:50px">
                                           <asp:Image ID="Image2" runat="server" Height="35px" 
                                               ImageUrl="~/images/Vista_icons_08.png" Width="39px" />
                                        </div>
                                         <div class="w3-rest">
                                           <asp:TextBox ID="password" class="w3-input"  runat="server" placeholder="Contraseña" maxlength="50" Width="170px"></asp:TextBox> 
                                        </div>
                                   </div>
                         
                              <div class="w3-row w3-section ">
                              <asp:DropDownList class="w3-input" ID="idTrabajador" runat="server" 
                                  placeholder="....." maxlength="50"  DataSourceID="SqlDataSource2" 
                                  DataTextField="descripcion" DataValueField="idtipo" TabIndex="1">  </asp:DropDownList>
                              <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                  ConnectionString="<%$ ConnectionStrings:satConnectionString %>" 
                                  SelectCommand="SELECT [idtipo], [descripcion] FROM [tipo_trabajador]">
                              </asp:SqlDataSource>
                              <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                  ConnectionString="<%$ ConnectionStrings:satConnectionString %>" 
                                  SelectCommand="SELECT [idtipo], [descripcion] FROM [tipo_trabajador]">
                              </asp:SqlDataSource>
                         
                        </div>
                         <div class="w3-row w3-section ">
                            <asp:Button class="w3-input w3-blue w3-hover-blue-gray" ID="btnIngre" runat="server" Text="LOGIN" >

                              </asp:Button >
                            
                             </div>
                                      
                                 </form>

                  
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
