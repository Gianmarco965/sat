<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Potencia.aspx.vb" Inherits="sat.Potencia" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <meta name="keywords" content="" />
		<meta name="description" content="" />
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
                width: 191px;
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
                width: 191px;
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
                width: 191px;
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
                width: 191px;
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
                width: 191px;
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
                                
                                style="font-family: 'TIMes New Roman', Times, serif; font-size: 20px; font-weight: 900; color: #0000FF;">REGISTRO DE POTENCIA</span>
                            <hr class="team_hr team_hr_right hr_gray" style="font-size: small"/>

                          <form id="form1" runat="server" > 
                      
                <table class="style1">
                    <tr>
                        <td class="style18">
                            </td>
                        <td class="style19">
                            </td>
                        <td class="style20">
                            &nbsp;</td>
                        <td class="style21">
                                &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style6">
                            <asp:Label ID="Label4" runat="server" Text="Longitud:" Width="96px" 
                                Font-Size="13pt" Font-Bold="True" Font-Italic="False" ForeColor="#003399"></asp:Label>
                        </td>
                        <td class="style7">
                            <asp:TextBox ID="txtlongitud" runat="server" 
                                  placeholder="Longitud..." maxlength="50" Width="170px" ></asp:TextBox>
                        </td>
                        <td class="style8">
                            <asp:Label ID="Label8" runat="server" Text="Altura:" Font-Size="13pt" 
                                Font-Bold="True" Font-Italic="False" ForeColor="#003399"></asp:Label>
                        </td>
                        <td class="style9">
                            <asp:TextBox ID="txtaltura" runat="server"  
                                placeholder="Altura..." maxlength="50" Width="170px" 
                                Height="21px"></asp:TextBox> 
                        </td>

                        <td class="style3">
                            <asp:Label ID="Label1" runat="server" Text="Ancho:" Width="106px" 
                                Font-Size="13pt" Font-Bold="True" ForeColor="#003399"></asp:Label>
                        </td>
                        <td class="style9">
                            <asp:TextBox ID="txtancho" runat="server"  
                                placeholder="Ancho..." maxlength="50" Width="170px" 
                                Height="21px"></asp:TextBox> 
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            <asp:Label ID="Label6" runat="server" Text="Cilindro :" 
                                Width="106px" Height="39px" Font-Size="13pt" Font-Bold="True" 
                                ForeColor="#003399"></asp:Label>
                        </td>
                        <td class="style11">
                            <asp:TextBox ID="txtcilindro" runat="server"  
                                placeholder="Cilindro..." maxlength="50" Width="170px" 
                                Height="21px"></asp:TextBox> 
                        </td>
                        <td class="style12">
                            <asp:Label ID="Label2" runat="server" Text="Peso Bruto :" 
                                Width="150px" Font-Size="13pt" Font-Bold="True" ForeColor="#003399"></asp:Label>
                        </td>
                        <td class="style13">
                            <asp:TextBox ID="txtpbruto" runat="server" placeholder="Peso Bruto....." maxlength="50" Width="170px"></asp:TextBox>
                        </td>
                        <td class="style12">
                            <asp:Label ID="Label9" runat="server" Text="Peso Neto :" 
                                Width="150px" Font-Size="13pt" Font-Bold="True" ForeColor="#003399"></asp:Label>
                        </td>
                        <td class="style17">
                            <asp:TextBox ID="txtpneto" runat="server" placeholder="Peso neto " maxlength="50" Width="170px"></asp:TextBox>
                        </td>
                    </tr>
                    



                     

                   
                </table>

                
           
                              
                            
                                <br />
                                <br />
                                   
                              
                            
                              
                           
                            
                            <div class="form-group">
                                <asp:Button ID="Button1" runat="server" 
                                    Text="Anterior" class="btn btn-orange " BackColor="Blue" Height="46px" 
                                    Width="115px" />  <asp:Button ID="btnAgregarPotencia" runat="server" 
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



    
</body>
</html>
