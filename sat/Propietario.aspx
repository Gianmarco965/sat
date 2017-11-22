<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Propietario.aspx.vb" Inherits="sat.Propietario" %>

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
     <meta http-equiv="Expires" content="0" /> 
        <meta http-equiv="Pragma" content="no-cache" />

        <script type="text/javascript">
          if(history.forward(1)){
            location.replace( history.forward(1) );
          }
        </script>
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
                                    <a href="ReportePredio.aspx" class="w3-bar-item w3-button">REPORTE DE PREDIOS</a>
                                    <a href="ReportePredioxd.aspx" class="w3-bar-item w3-button">REPORTE POR FECHAS</a>
                                    <a href="ReportePredioNAsignado.aspx" class="w3-bar-item w3-button">REPORTE DE PREDIOS NO FISCALIZADOS</a>
                                </div>
                            </div>
                            <input type="button"  onserverclick="FancyBtn_Click" runat="server" class="btn btn-default w3-bar-item w3-button w3-right w3-text-light-grey w3-padding-16" value="Cerrar SESION"/>
                        </div>

                       
                  
            
      
        <!-- /container -->





    <!-- /.templatemo-ABOUT -->

    <div class="templatemo-t w3-bar" id="templatemo-about" dir="ltr"
        style="background-image: url('images/backgr.png');">

       
        <div class="w3-container w3-display-middle w3-margin-top">
            <form id="form2" class="w3-container w3-card-4 w3-light-grey w3-text-blue w3-margin" runat="server">
                <h2 style="color: #000000;">REGISTRO DE PROPIETARIO</h2>
                <table>
                    <div class="w3-row">
                        <tr>
                            <td>
                                <label>Codigo del Contribuyente</label>
                                <asp:TextBox ReadOnly="true" ID="codContri" runat="server" class="w3-input"
                                    placeholder="Codigo del Contribuyente..." MaxLength="50" ></asp:TextBox>
                            </td>


                            <td>
                                <asp:ImageButton ID="ImageButton1" runat="server" 
                                    ImageUrl="~/images/Buscar.png" Width="20px" />
                            </td>
                             <td>
                                 <asp:RequiredFieldValidator id="RequiredFieldValidator11" runat="server"
                              ControlToValidate="codContri"
                              ErrorMessage="*"
                              ForeColor="Red">
                            </asp:RequiredFieldValidator>


                        </td>


                        </tr>
                    </div>
                    <div class="w3-row">
                    <tr>

                        <td>
                            <label>Nombre del Propietario</label>
                            <asp:TextBox class="w3-input" ID="nombew" runat="server" placeholder="Nombre del Propietario..." MaxLength="50" ></asp:TextBox>
                        </td>
                         <td>
                                 <asp:RequiredFieldValidator id="RequiredFieldValidator10" runat="server"
                              ControlToValidate="nombew"
                              ErrorMessage="*"
                              ForeColor="Red">
                            </asp:RequiredFieldValidator>


                        </td>

                      
                        <td>
                            <label>Apellido Paterno</label>
                            <asp:TextBox ID="ApellidoP" class="w3-input" runat="server" placeholder="Apellido Paterno..." MaxLength="50" ></asp:TextBox>
                        </td>
                        <td>
                                 <asp:RequiredFieldValidator id="RequiredFieldValidator9" runat="server"
                              ControlToValidate="ApellidoP"
                              ErrorMessage="*"
                              ForeColor="Red">
                            </asp:RequiredFieldValidator>


                        </td>

                       
                        <td>
                            <label>Apellido Materno</label>
                            <asp:TextBox class="w3-input" ID="ApellidoM" runat="server" placeholder="Apellido Materno..." MaxLength="50" ></asp:TextBox>
                        </td>
                          <td>
                                 <asp:RequiredFieldValidator id="RequiredFieldValidator8" runat="server"
                              ControlToValidate="ApellidoM"
                              ErrorMessage="*"
                              ForeColor="Red">
                            </asp:RequiredFieldValidator>


                        </td>


                           <td>
                            <label>DNI</label>
                            <asp:TextBox ID="dni" class="w3-input" runat="server" placeholder="Documento de Identidad......" MaxLength="50" Width="170px"></asp:TextBox>
                       
                           </td>
                               <td>
                                 <asp:RequiredFieldValidator id="RequiredFieldValidator7" runat="server"
                              ControlToValidate="dni"
                              ErrorMessage="*"
                              ForeColor="Red">
                            </asp:RequiredFieldValidator>


                        </td>



                    </tr>

                    </div>

                    <div class="w3-row">
                    <tr>
                      
                     
                       
                        <td>
                            <label>Distrito</label>
                            <asp:DropDownList class="w3-select w3-border" ID="iddistrito" runat="server" maxlength="50" 
                                DataSourceID="SqlDataSource1" DataTextField="descripcion"
                                DataValueField="idDistrito" TabIndex="1">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                                ConnectionString="<%$ ConnectionStrings:satConnectionString %>"
                                SelectCommand="SELECT [idDistrito], [descripcion] FROM [Distrito]"></asp:SqlDataSource>
                        </td>
                                <td>
                                 <asp:RequiredFieldValidator id="RequiredFieldValidator6" runat="server"
                              ControlToValidate="iddistrito"
                              ErrorMessage="*"
                              ForeColor="Red">
                            </asp:RequiredFieldValidator>


                        </td>

                    
                        <td>
                            <label>Direccion del Domicilio</label>
                            <asp:TextBox ID="Direccion" class="w3-input" runat="server" placeholder="Direción..." MaxLength="50" ></asp:TextBox>
                        </td>
                            <td>
                                 <asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server"
                              ControlToValidate="Direccion"
                              ErrorMessage="*"
                              ForeColor="Red">
                            </asp:RequiredFieldValidator>


                        </td>


                          
                        <td class="style6">
                            <label>Ref. del Domicilio</label>
                            <asp:TextBox ID="Referencia" runat="server" class="w3-input"
                                placeholder="Referencia..." MaxLength="50"  ></asp:TextBox>
                        </td>
                       <td></td>


                        <td>
                            <label>Numero de Celular</label>
                            <asp:TextBox ID="cel" runat="server" class="w3-input" placeholder="Numero de Celular..." MaxLength="50" ></asp:TextBox>
                        </td>
                        <td>
                                 <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server"
                              ControlToValidate="cel"
                              ErrorMessage="*"
                              ForeColor="Red">
                            </asp:RequiredFieldValidator>


                        </td>
                    </tr>
                        </div>
                     <div class="w3-row">
                    <tr>
                      
                    
                        <td class="style6">
                            <label>Correo Electronico</label>
                            <asp:TextBox ID="correo" class="w3-input" runat="server" placeholder="email...." MaxLength="50" Width="170px"></asp:TextBox>
                        </td>
                              <td>
                                 <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server"
                              ControlToValidate="correo"
                              ErrorMessage="*"
                              ForeColor="Red">
                            </asp:RequiredFieldValidator>


                        </td>


                         <td>
                            <label>Tipo de Domicilio</label>
                            <asp:DropDownList ID="idt_predio" runat="server"
                                placeholder="Tipo de Domicilio....." maxlength="50" class="w3-select w3-border"
                                DataSourceID="SqlDataSource2" DataTextField="descripcion"
                                DataValueField="idT_predio" TabIndex="1">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server"
                                ConnectionString="<%$ ConnectionStrings:satConnectionString %>"
                                SelectCommand="SELECT [idT_predio], [descripcion] FROM [Tipo_Predio]"></asp:SqlDataSource>

                        </td>
                        <td>
                                 <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server"
                              ControlToValidate="idt_predio"
                              ErrorMessage="*"
                              ForeColor="Red">
                            </asp:RequiredFieldValidator>


                        </td>

                         <td>
                            <label>Descripcion del Domicilio</label>
                            <asp:TextBox class="w3-input" ID="descripcionP" runat="server" placeholder="Descripcion del Domicilio...." MaxLength="50" ></asp:TextBox>
                        </td>

                         

                    </tr>
                    </div>
                    <div class="w3-row">

                    <tr>
                        
                       
                       
                       
                        <td></td>
                        <td>
                            &nbsp;</td>
                    </tr>

                        </div>

                </table>


                <div class="form-group">

                    <div class="form-group">
                        <asp:Button ID="btnAgregarPredio" runat="server" Text="Registrar" class="w3-button w3-blue" />
                    </div>
                    <div class="form-group">
                        <center>
                            <asp:Label ID="lblmensaje" runat="server"
                                Text="" Height="19px" ForeColor="#FF0066"></asp:Label>
                        </center>
                    </div>
            </form>
            
</div>
        </div>



 


    <!-- /.REGISTRO -->



    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/stickUp.min.js" type="text/javascript"></script>
    <script src="js/colorbox/jquery.colorbox-min.js" type="text/javascript"></script>
    <script src="js/templatemo_script.js" type="text/javascript"></script>
    <!-- templatemo 395 urbanic -->
</body>
</html>

