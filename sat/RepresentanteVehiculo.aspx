<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RepresentanteVehiculo.aspx.vb" Inherits="sat.RepresentanteVehiculo" %>
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
                            <a href="index.aspx" class="w3-bar-item">
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

                                 <h2 style="color: #000000;">REGISTRO DEL REPRESENTANTE</h2>

                                <table>

                                    <tr>                             
                                        
                                         <td>
                                            <label>Nombres</label>
                                            <asp:TextBox ID="txtnombres" runat="server" class="w3-input"
                                                placeholder="Nombre del Contribuyente..." MaxLength="50" ></asp:TextBox>
                                           </td>
                                           <td>
                                            <asp:RequiredFieldValidator id="RequiredFieldValidator12" runat="server"
                                              ControlToValidate="txtnombres"
                                              ErrorMessage="*"
                                              ForeColor="Red">
                                            </asp:RequiredFieldValidator>


                                          </td>

                                       
                                    </tr>


                                    <tr>
                                      
                                    
                                        
                                           
                                           
                                       
                                        <td>
                                             <label>Apellido</label>
                                            <asp:TextBox ID="txtapellido" runat="server" class="w3-input" placeholder="Apellidos..." MaxLength="50" ></asp:TextBox>

                                        </td>
                                         <td>
                                            <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server"
                                              ControlToValidate="txtapellido"
                                              ErrorMessage="*"
                                              ForeColor="Red">
                                            </asp:RequiredFieldValidator>


                                          </td>

                                        <td>
                                           
                                        </td>
                                        <td>
                                            <label>Documento de Identidad</label>
                                            <asp:TextBox ID="txtdni" runat="server" class="w3-input" placeholder="Documento de Identidad..." MaxLength="50" ></asp:TextBox>
                                        </td>
                                         <td>
                                            <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server"
                                              ControlToValidate="txtdni"
                                              ErrorMessage="*"
                                              ForeColor="Red">
                                            </asp:RequiredFieldValidator>


                                          </td>

                                    </tr>



                                    <tr>

                                       
                        <td>
                            <label>Parentesco del Propietario</label>
                            <asp:DropDownList ID="idTippo_material" runat="server" class="w3-select w3-border"
                                maxlength="50" TabIndex="1"
                                DataSourceID="SqlDataSource1" DataTextField="descripcion"
                                DataValueField="idParentesco">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                                ConnectionString="<%$ ConnectionStrings:satConnectionString %>"
                                SelectCommand="SELECT [descripcion], [idParentesco] FROM [Parentesco]"></asp:SqlDataSource>
                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server"
                                              ControlToValidate="idTippo_material"
                                              ErrorMessage="*"
                                              ForeColor="Red">
                                            </asp:RequiredFieldValidator>


                                          </td>

                                       
                                    </tr>

                                    <tr>

                                         <td>
                                            <asp:Button ID="btnregistrar" class="w3-button w3-blue" runat="server" Text="REGISTRAR" />
                                        </td>
                                        <td>
                                            <asp:TextBox ID="codpredio" runat="server"
                                                placeholder="Nombre del Propietario..." MaxLength="50" Width="170px"
                                                Visible="False"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server"
                                              ControlToValidate="codpredio"
                                              ErrorMessage="*"
                                              ForeColor="Red">
                                            </asp:RequiredFieldValidator>


                                          </td>
                                    </tr>


                                </table>







                            </form>

                        </div>







        <!-- /.templatemo-team -->












        <script src="js/jquery.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <script src="js/stickUp.min.js" type="text/javascript"></script>
        <script src="js/colorbox/jquery.colorbox-min.js" type="text/javascript"></script>
        <script src="js/templatemo_script.js" type="text/javascript"></script>
        <!-- templatemo 395 urbanic -->
</body>
</html>
