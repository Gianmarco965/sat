<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="index.aspx.vb" Inherits="sat.WebForm1" %>

<!DOCTYPE html">


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

    <script language="vb" runat="server">

        Protected Sub FancyBtn_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)

            FormsAuthentication.SignOut()

            Response.Redirect(Request.UrlReferrer.ToString())

        End Sub


    </script>


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
                            <a href="#" class="w3-bar-item">
                            <img src="images/logo1.png" alt="Urbanic Template" title="Urbanic Template" /></a>
                            <a href="VerPredios.aspx" class="w3-bar-item w3-button w3-text-light-grey w3-padding-16">MOSTRAR PREDIOS</a>
                            
                            <div class="w3-dropdown-hover">
                                <button class="w3-button w3-padding-16 w3-text-light-grey">REPORTES</button>
                                <div class="w3-dropdown-content w3-bar-block w3-card-4">
                                    <a href="#" class="w3-bar-item w3-button">REPORTE DE PREDIOS</a>
                                    <a href="#" class="w3-bar-item w3-button">REPORTE POR FECHAS</a>
                                    <a href="#" class="w3-bar-item w3-button">REPORTE DE PREDIOS NO FISCALIZADOS</a>
                                </div>
                            </div>
                       
                             <input type="button"  onserverclick="FancyBtn_Click" runat="server" class="btn btn-default w3-bar-item w3-button w3-right w3-text-light-grey w3-padding-16" value="Cerrar SESION"/>
                     
                          
                       
                                </div>

                       
                  
            
      
        <!-- /container -->







    <!-- /.templatemo-ABOUT -->

    <div class="templatemo-t w3-bar" id="templatemo-about" dir="ltr"
        style="background-image: url('images/backgr.png');">


        <div class="w3-container w3-display-middle w3-margin-top">






            <form id="form1" class="w3-container w3-card-4 w3-light-grey w3-text-blue w3-margin" runat="server">

                <h2 style="color: #000000;">REGISTRO</h2>
                <table class="style1">
                    <tr>


                        <td class="style2">&nbsp;</td>

                        <td class="style5">
                            <div class="w3-card-4">
                                <a href="http://localhost:1209/Predio.aspx">
                                    <img alt="" class="style6" src="images/predial.jpg" />
                                </a>
                                <div class="w3-container w3-center w3-hover-blue">
                                    <p><a href="http://localhost:1209/Predio.aspx">REGISTRO DE PREDIO</a></p>
                                </div>
                            </div>
                            <td class="style20"></td>
                        <td class="style5">
                            <div class="w3-card-4">

                                <a href="http://localhost:1209/Vehicular.aspx">
                                    <img alt="" class="style6" src="images/vehicular.jpg" />
                                </a>
                                <div class="w3-container w3-center w3-hover-blue">
                                    <p><a href="http://localhost:1209/Vehicular.aspx">REGISTRO DE VEHICULO</a></p>
                                </div>
                            </div>
                        </td>


                    </tr>


                </table>
            </form>
        </div>
    </div>





    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/stickUp.min.js" type="text/javascript"></script>
    <script src="js/colorbox/jquery.colorbox-min.js" type="text/javascript"></script>
    <script src="js/templatemo_script.js" type="text/javascript"></script>
    <!-- templatemo 395 urbanic -->
</body>
</html>
