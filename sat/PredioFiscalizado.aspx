<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="PredioFiscalizado.aspx.vb" Inherits="sat.PredioFiscalizado" %>

<!DOCTYPE html">
<html>
<head>
    <title>VER PREDIOS</title>
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

    <link href="css/StyleSheet1.css" rel='stylesheet' type='text/css' />
    <script language="vb" runat="server">

        Protected Sub FancyBtn_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)

            FormsAuthentication.SignOut()

            Response.Redirect("WebForm1.aspx")

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
                          
                           
                           <input type="button"  onserverclick="FancyBtn_Click" runat="server" class="btn btn-default w3-bar-item w3-button w3-right w3-text-light-grey w3-padding-16" value="Cerrar SESION"/>                        
                        </div>
        <!-- /container -->

    <!-- /.templatemo-ABOUT -->

    <div class="templatemo-t w3-bar" id="templatemo-about" dir="ltr"
        style="background-image: url('images/backgr.png');">


        <section>


                <h2 style="color: #000000;">VER PREDIOS FISCALIZADOS</h2>
         
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
     
        </section>
    </div>

    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/stickUp.min.js" type="text/javascript"></script>
    <script src="js/colorbox/jquery.colorbox-min.js" type="text/javascript"></script>
    <script src="js/templatemo_script.js" type="text/javascript"></script>
    <!-- templatemo 395 urbanic -->
</body></html>
