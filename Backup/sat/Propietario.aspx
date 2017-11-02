<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Propietario.aspx.vb" Inherits="sat.Propietario" %>

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
        <style type="text/css">
            .style1
            {
                width: 109px;
            }
            .style2
            {
                width: 113px;
            }
            .style3
            {
                width: 140px;
            }
            .style4
            {
                width: 102px;
            }
            .style5
            {
                width: 102px;
                height: 124px;
            }
            .style6
            {
                height: 124px;
            }
            .style7
            {
                width: 140px;
                height: 124px;
            }
            .style8
            {
                width: 113px;
                height: 124px;
            }
            .style9
            {
                width: 102px;
                height: 113px;
            }
            .style10
            {
                height: 113px;
            }
            .style11
            {
                width: 140px;
                height: 113px;
            }
            .style12
            {
                width: 113px;
                height: 113px;
            }
            .style13
            {
                width: 102px;
                height: 135px;
            }
            .style14
            {
                height: 135px;
            }
            .style15
            {
                width: 140px;
                height: 135px;
            }
            .style16
            {
                width: 113px;
                height: 135px;
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
                                &nbsp;<a href="#" class="navbar-brand"><img src="images/logo1.jpg" alt="Urbanic Template" title="Urbanic Template" /></a></div>
                        <div class="navbar-collapse collapse" id="templatemo-nav-bar">
                            <ul class="nav navbar-nav navbar-right" style="margin-top: 40px;">
                                <li><a href="ZZX">CONTACT</a></li>
                            </ul>
                        </div><!--/.nav-collapse -->
                    </div><!--/.container-fluid -->
                </div><!--/.navbar -->
            </div> <!-- /container -->
        </div>
        
        
        
                    <div class="templatemo-t" id="templatemo-about" dir="ltr" 
            style="background-image: url('images/backgr.png');">
            <div class="container">
                <div class="row">
                    <div class="templatemo-line-header">
                        <div class="text-center">
                            <hr class="team_hr team_hr_left"/>
                            <span style="font-family: 'TIMes New Roman', Times, serif; font-size: 20px; font-weight: 900; color: #0000FF; ">REGISTRO DE PREDIO</span>
                            <hr class="team_hr team_hr_right" /> 
                            <br />
                            <br />
                             <div class="form-group">
                                 <br />
                                 <br />
                                 <form id="form2" runat="server"> 
                                
                               <table class="style1">
                    <tr>
                        <td class="style4">
                            </td>
                        <td class="style19">
                            </td>
                        <td class="style3">
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
                                <td class="style2">
                            </td>
                        <td class="style19">
                            </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            <asp:Label ID="Label16" runat="server" Text="Nombre del Propietario :" 
                                Font-Size="13pt" Font-Bold="True" Font-Italic="False" ForeColor="#003399"></asp:Label>
                            </td>
                        <td class="style14">
                            <asp:TextBox ID="nombew" runat="server"  placeholder="Nombre del Propietario..." maxlength="50" Width="170px"></asp:TextBox>
                            </td>
                        <td class="style15">
                            <asp:Label ID="Label1" runat="server" Text="Apellido Paterno :" 
                                Font-Size="13pt" Font-Bold="True" Font-Italic="False" ForeColor="#003399"></asp:Label>
                        </td>
                        <td class="style14">
                                <asp:TextBox ID="ApellidoP" runat="server" placeholder="Apellido Paterno..." maxlength="50" Width="170px"></asp:TextBox>
                                </td>
                                <td class="style16">
                            <asp:Label ID="Label17" runat="server" Text="Apellido Materno :" 
                                Font-Size="13pt" Font-Bold="True" Font-Italic="False" ForeColor="#003399"></asp:Label>
                            </td>
                        <td class="style14">
                            <asp:TextBox ID="ApellidoM" runat="server"  placeholder="Apellido Materno..." maxlength="50" Width="170px"></asp:TextBox> 
                            </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            <asp:Label ID="Label2" runat="server" Text="DNI :" 
                                Font-Size="13pt" Font-Bold="True" Font-Italic="False" ForeColor="#003399"></asp:Label>
                            </td>
                        <td class="style10">
                            <asp:TextBox ID="dni" runat="server"  placeholder="Documento de Identidad......" maxlength="50" Width="170px"></asp:TextBox> 
                            </td>
                        <td class="style11">
                            <asp:Label ID="Label3" runat="server" Text="Distrito :" 
                                Font-Size="13pt" Font-Bold="True" Font-Italic="False" ForeColor="#003399"></asp:Label>
                        </td>
                        <td class="style10">
                                <asp:DropDownList ID="iddistrito" runat="server" maxlength="50" Width="170px" 
                                    DataSourceID="SqlDataSource1" DataTextField="descripcion" 
                                    DataValueField="idDistrito" TabIndex="1">  </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:satConnectionString %>" 
                                    SelectCommand="SELECT [idDistrito], [descripcion] FROM [Distrito]">
                                </asp:SqlDataSource>
                                </td>
                                <td class="style12">
                            <asp:Label ID="Label4" runat="server" Text="Dirección del Domicilio :" 
                                Font-Size="13pt" Font-Bold="True" Font-Italic="False" ForeColor="#003399" 
                                        Width="105px"></asp:Label>
                            </td>
                        <td class="style10">
                            <asp:TextBox ID="Direccion" runat="server" placeholder="Direción..." maxlength="50" Width="170px"></asp:TextBox> 
                            </td>
                    </tr>
                     <tr>
                        <td class="style5">
                            <asp:Label ID="Label5" runat="server" Text="Referencia del Domicilio :" 
                                Font-Size="13pt" Font-Bold="True" Font-Italic="False" ForeColor="#003399"></asp:Label>
                            </td>
                        <td class="style6">
                            <asp:TextBox ID="Referencia" runat="server" 
                                  placeholder="Referencia..." maxlength="50" Width="170px" Height="21px" ></asp:TextBox>
                            </td>
                        <td class="style7">
                            <asp:Label ID="Label6" runat="server" Text="Numero de Celular :" 
                                Font-Size="13pt" Font-Bold="True" Font-Italic="False" ForeColor="#003399"></asp:Label>
                        </td>
                        <td class="style6">
                                <asp:TextBox ID="cel" runat="server" placeholder="Numero de Celular..." maxlength="50" Width="170px"></asp:TextBox>
                                </td>
                                <td class="style8">
                            <asp:Label ID="Label7" runat="server" Text="Correo Electronico :" 
                                Font-Size="13pt" Font-Bold="True" Font-Italic="False" ForeColor="#003399"></asp:Label>
                            </td>
                        <td class="style6">
                            <asp:TextBox ID="correo" runat="server" placeholder="email...." maxlength="50" Width="170px"></asp:TextBox> 
                            </td>
                    </tr>
                     <tr>
                        <td class="style4">
                            <asp:Label ID="Label8" runat="server" Text="Tipo de Domicilio :" 
                                Font-Size="13pt" Font-Bold="True" Font-Italic="False" ForeColor="#003399"></asp:Label>
                            </td>
                        <td class="style19">
                            <asp:DropDownList ID="idt_predio" runat="server" 
                                placeholder="Documento de Identidad....." maxlength="50" Width="170px" 
                                DataSourceID="SqlDataSource2" DataTextField="descripcion" 
                                DataValueField="idT_predio" TabIndex="1">  </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:satConnectionString %>" 
                                SelectCommand="SELECT [idT_predio], [descripcion] FROM [Tipo_Predio]">
                            </asp:SqlDataSource>
                            </td>
                        <td class="style3">
                            <asp:Label ID="Label9" runat="server" Text="Desc. Domicilio :" 
                                Font-Size="13pt" Font-Bold="True" Font-Italic="False" ForeColor="#003399"></asp:Label>
                        </td>
                        <td class="style21">
                                <asp:TextBox ID="descripcionP" runat="server" placeholder="Descripcion del Domicilio...." maxlength="50" Width="170px"></asp:TextBox>
                                </td>
                                <td class="style2">
                                    &nbsp;</td>
                        <td class="style19">
                                 <asp:TextBox ID="codpredio" runat="server"></asp:TextBox>
                            </td>
                    </tr>



                    </table>
                          
                                <br />
                                <br />
                                   
                                 <div class="form-group"> 
                            
                            <div class="form-group"><asp:Button ID="btnAgregarPredio" runat="server" Text="Registrar" class="btn btn-orange " /> </div>
                             <div class="form-group"><center><asp:Label ID="lblmensaje" runat="server" 
                                     Text="" Height="19px" ForeColor="#FF0066"></asp:Label>
                                 </center></div>
                             
                          
                          
                          </form>
                        
                        </div>
                       
                       </div>
                      
                      
                        </div>
              

                        
                      	
                    </div> 

                       
             </div>             
                    </div>
           
         


        <!-- /.REGISTRO -->


                



        <!-- /.templatemo-team -->

        

        <div id="templatemo-blog">
            <div class="container">
                <div class="row">
                    <div class="templatemo-line-header" style="margin-top: 0px;" >
                        <div class="text-center">
                            <hr class="team_hr team_hr_left hr_gray"/><span class="span_blog txt_darkgrey">BLOG POSTSg txt_darkgrey">BLOG POSTS</span>
                            <hr class="team_hr team_hr_right hr_gray" />
                        </div>
                    </div>
                    <br class="clearfix"/>
                </div>
                
                <div class="blog_box">
                    <div class="col-sm-5 col-md-6 blog_post">
                        <ul class="list-inline">
                            <li class="col-md-4">
                                <a href="#">
                                    <img class="img-responsive" src="images/blog-image-1.jpg" alt="gallery 1" />
                                </a>
                            </li>
                            <li  class="col-md-8">
                                <div class="pull-left">
                                    <span class="blog_header">GRAPHIC DESIGN</span><br/>
                                    <span>Posted by : <a class="link_orange" href="#"><span class="txt_orange">Tracy</span></a></span>
                                </div>
                                <div class="pull-right">
                                    <a class="btn btn-orange" href="#" role="button">21 February 2084</a>
                                </div>
                                <div class="clearfix"> </div>
                                <p class="blog_text">
                                    Aliquam quis rutrum risus, ut condimentum ipsum. Nullam aliquet libero augue, eget auctor felis vulputate id. Proin a enim eu libero ornare malesuada. Sed iaculis fringilla lacinia. Sed laoreet lectus vitae [...]
                                </p>
                            </li>
                        </ul>
                    </div> <!-- /.blog_post 1 -->
                    
                    <div class="col-sm-5 col-md-6 blog_post">
                        <ul class="list-inline">
                            <li class="col-md-4"><a href="#">
                                <img class="img-responsive" src="images/blog-image-2.jpg" alt="gallery 2" /></a>
                            </li>
                            <li class="col-md-8">
                                <div class="pull-left">
                                    <span class="blog_header">WEBSITE TEMPLATE</span><br/>
                                    <span>Posted by : <a class="link_orange" href="#"><span class="txt_orange">Mary</span></a></span>
                                </div>
                                <div class="pull-right">
                                    <a class="btn btn-orange" href="#" role="button">18 February 2084</a>
                                </div>
                                <div class="clearfix"> </div>
                                <p class="blog_text">
                                        Morbi imperdiet ipsum sit amet dui pharetra, vulputate porta neque tristique. Quisque id turpis tristique, venenatis erat sit amet, venenatis turpis. Ut tellus ipsum, posuere bibendum [...]
                                </p>
                            </li>
                        </ul>	
                    </div><!-- /.blog_post 2 -->
                    
                    <div class="templatemo_clear"></div>
                    
                    <div class="col-sm-5 col-md-6 blog_post">
                        <ul class="list-inline">
                            <li class="col-md-4"><a href="#">
                                <img class="img-responsive" src="images/blog-image-2.jpg" alt="gallery 3" /></a>
                            </li>
                            <li class="col-md-8">
                                <div class="pull-left">
                                    <span class="blog_header">WEB DEVELOPMENT</span><br/>
                                    <span>Posted by : <a class="link_orange" href="#"><span class="txt_orange">Julia</span></a></span>
                                </div>
                                <div class="pull-right">
                                    <a class="btn btn-orange" href="#" role="button">14 February 2084</a>
                                </div>
                                <div class="clearfix"> </div>
                                <p class="blog_text">
                                        Fusce molestie tellus risus, id commodo turpis convallis id. Morbi mattis sapien sapien, vitae lacinia ante interdum sit amet. Praesent eget varius diam, ac tempor est. Mauris at scelerisque magna [...]
                                </p>
                            </li>
                        </ul>	
                    </div><!-- /.blog_post 3 -->
                    
                    <div class="col-sm-5 col-md-6 blog_post">
                        <ul class="list-inline">
                            <li class="col-md-4">
                                <a href="#">
                                    <img class="img-responsive" src="images/blog-image-1.jpg"  alt="gallery 4" />
                                </a>
                            </li>
                            <li class="col-md-8">
                                <div class="pull-left">
                                    <span class="blog_header">NEW FLUID LAYOUT</span><br/>
                                    <span>Posted by : <a class="link_orange" href="#"><span class="txt_orange">Linda</span></a></span>
                                </div>
                                <div class="pull-right">
                                    <a class="btn btn-orange" href="#" role="button">11 February 2084</a>
                                </div>
                                <div class="clearfix"> </div>
                                <p class="blog_text">
                                    In venenatis sodales purus a cursus. Ut consectetur, libero ac elementum tristique, enim ante aliquet mauris, scelerisque congue magna neque ac purus. Aliquam facilisis volutpat odio [...]
                                </p>
                            </li>
                        </ul>
                    </div> <!-- /.blog_post 4 -->
                    
                </div>
            </div>
        </div>

        

        <div class="templatemo-tweets">
            <div class="container">
                <div class="row" style="margin-top:20px;">
                        <div class="col-md-2">
                        </div>
                        <div class="col-md-1">
                                <img src="images/quote.png" alt="icon" />
                        </div>
                        <div class="col-md-7 tweet_txt" >
                                <span>Lorem ipsum dolor sit amet, consectetur adipiscing elit suspendiise as a molesti neque vestibulum,  persiutsor de andues mare fricilus ipsum dolor sit amet cons forukus.</span>
                                <br/>
                                <span class="twitter_user">Moe Moe, Yangon</span>
                        </div>
                        <div class="col-md-2">
                        </div>
                 </div><!-- /.row -->
            </div><!-- /.container -->
        </div>

        <div class="templatemo-partners" >
            <div class="container">
                <div class="row">


                    <div class="templatemo-line-header" >
                        <div class="text-center">
                            <hr class="team_hr team_hr_left hr_gray"/><span class="txt_darkgrey">OUR PARTNERS</span>
                            <hr class="team_hr team_hr_right hr_gray" />
                        </div>
                    </div>
                    <div class="clearfix"></div>


                    <div class="text-center">

                        <div style="margin-top:60px;">
                            <ul class="list-inline">
                                <li class="col-sm-2 col-md-2 templatemo-partner-item">
                                    <a href="#"><img src="images/partner1.jpg" class="img-responsive" alt="partner 1" /></a>
                                </li>
                                <li class="col-sm-2 col-md-2 templatemo-partner-item">
                                    <a href="#"><img src="images/partner2.jpg" class="img-responsive" alt="partner 2" /></a>
                                </li>
                                <li class="col-sm-2 col-md-2 templatemo-partner-item">
                                    <a href="#"><img src="images/partner3.jpg" class="img-responsive" alt="partner 3" /></a>
                                </li>
                                <li class="col-sm-2 col-md-2 templatemo-partner-item">
                                    <a href="#"><img src="images/partner4.jpg" class="img-responsive" alt="partner 4" /></a>
                                </li>
                                <li class="col-sm-2 col-md-2 templatemo-partner-item">
                                    <a href="#"><img src="images/partner5.jpg" class="img-responsive" alt="partner 5" /></a>
                                </li>
                                <li class="col-sm-2 col-md-2 templatemo-partner-item">
                                    <a href="#"><img src="images/partner6.jpg" class="img-responsive" alt="partner 6" /></a>
                                </li>
                            </ul>

                        </div>

                    </div>
                </div>
            </div>
        </div>


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

