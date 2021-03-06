﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="EditarPredio.aspx.vb" Inherits="sat.EditarPredio" %>

<!DOCTYPE html">
<html>
<head>
    <title>ASIGNAR FISCALIZADOR</title>
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
                            <a href="index.aspx" class="w3-bar-item">
                            <img src="images/logo1.png" alt="Urbanic Template" title="Urbanic Template" /></a>
                            <a href="#" class="w3-bar-item w3-button w3-text-light-grey w3-padding-16">MOSTRAR PREDIOS</a>
                            
                              <div class="w3-dropdown-hover">
                                <button class="w3-button w3-padding-16 w3-text-light-grey">REPORTES</button>
                                <div class="w3-dropdown-content w3-bar-block w3-card-4">
                                    <a href="ReportePredio.aspx" class="w3-bar-item w3-button">REPORTE DE PREDIOS</a>
                                    <a href="ReportePredioxd.aspx" class="w3-bar-item w3-button">REPORTE POR FECHAS</a>
                                    <a href="ReportePredioNAsignado.aspx" class="w3-bar-item w3-button">REPORTE DE PREDIOS NO FISCALIZADOS</a>
                                </div>
                            </div>
                            <a href="#" class="w3-bar-item w3-button w3-right w3-text-light-grey w3-padding-16">CERRAR SESION</a>
                        </div>
        <!-- /container -->

    <!-- /.templatemo-ABOUT -->

    <div class="templatemo-t w3-bar" id="templatemo-about" dir="ltr"
        style="background-image: url('images/backgr.png');">


        <section>

             <div class="w3-container w3-display-middle w3-margin-top">

            <form id="form1"  class="w3-container w3-card-4 w3-light-grey w3-text-blue w3-margin"  runat="server">
                
            <h2 class="w3-center" style="color: #000000;">ASIGNAR FISCALIZADOR</h2>
                <table >
                   
                
                    <div class="w3-row">
                    <tr>
                        
                        <td></td>
                       <td>
                            <label>Fiscalizador</label>
                            <asp:DropDownList ID="cbofiscalizador" class="w3-select w3-border" runat="server" placeholder="....." maxlength="50"
                                DataSourceID="SqlDataSource6" DataTextField="nombre"
                                DataValueField="idusuario">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource6" runat="server"
                                ConnectionString="<%$ ConnectionStrings:satConnectionString %>"
                                SelectCommand="SELECT nombre + ' '+apellidos as [nombre], [idusuario] FROM [usuario] where idtipo=1"></asp:SqlDataSource>
                      
                        </td>

                        <td>
                            
                            <asp:RequiredFieldValidator id="RequiredFieldValidator6" runat="server"
                              ControlToValidate="cbofiscalizador"
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
                        Text="AGREGAR FISCALIZADOR" class="w3-button w3-blue w3-right"  Height="46px"
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
