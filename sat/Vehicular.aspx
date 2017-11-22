<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Vehicular.aspx.vb" Inherits="sat.Vehicular" %>

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
     <meta http-equiv="Expires" content="0" /> 
        <meta http-equiv="Pragma" content="no-cache" />

        <script type="text/javascript">
          if(history.forward(1)){
            location.replace( history.forward(1) );
          }
        </script>
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
                            <a href="index.aspx" class="w3-bar-item">
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


            <form id="form1" class="w3-container w3-card-4 w3-light-grey w3-text-blue w3-margin" runat="server">
                <h2 style="color: #000000;">REGISTRO DE VEHICULO</h2>
                <table>
                 
                   
                    <tr>
                       
                        <td>
                            <label>Fecha de Adq. del Auto</label>
                            <asp:TextBox ID="txtfecha" runat="server" class="w3-input"
                                placeholder="Fecha..." MaxLength="50" TextMode="Date"></asp:TextBox>
                        </td>
                         <td>
                                            <asp:RequiredFieldValidator id="RequiredFieldValidator6" runat="server"
                                              ControlToValidate="txtfecha"
                                              ErrorMessage="*"
                                              ForeColor="Red">
                                            </asp:RequiredFieldValidator>


                                          </td>

                       
                        <td>
                            <label>Placa Nueva</label>
                            <asp:TextBox ID="txtplacanueva" runat="server" class="w3-input"
                                placeholder="Placa Nueva..." MaxLength="50" 
                                ></asp:TextBox>
                        </td>
                          <td>
                                            <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server"
                                              ControlToValidate="txtplacanueva"
                                              ErrorMessage="*"
                                              ForeColor="Red">
                                            </asp:RequiredFieldValidator>


                                          </td>


                      
                        <td>
                            <label>Placa Anterior</label>
                            <asp:TextBox ID="txtplacaanterior" runat="server" class="w3-input" 
                                placeholder="Placa Anterior..." MaxLength="50" 
                                ></asp:TextBox>
                        </td>
                         <td>
                                            <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server"
                                              ControlToValidate="txtplacaanterior"
                                              ErrorMessage="*"
                                              ForeColor="Red">
                                            </asp:RequiredFieldValidator>


                                          </td>


                         <td>
                            <label>Partida Registral</label>
                            <asp:TextBox ID="txtpartidareg" runat="server" class="w3-input"
                                placeholder="Partida Registral..." MaxLength="50" 
                               ></asp:TextBox>
                        </td>
                          <td>
                                            <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server"
                                              ControlToValidate="txtpartidareg"
                                              ErrorMessage="*"
                                              ForeColor="Red">
                                            </asp:RequiredFieldValidator>


                                          </td>


                    </tr>


                    <tr>
                    
                       
                      
                        <td>
                            <label>Titulo</label>
                            <asp:TextBox ID="txttitulo" runat="server" class="w3-input" placeholder="Titulo....." MaxLength="50" Width="170px"></asp:TextBox>
                        </td>

                          <td>
                                            <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server"
                                              ControlToValidate="txttitulo"
                                              ErrorMessage="*"
                                              ForeColor="Red">
                                            </asp:RequiredFieldValidator>


                                          </td>

                       
                        <td>
                            <label>Categoria/Clase</label>
                            <asp:DropDownList ID="idEstado" runat="server" placeholder="....." class="w3-input"
                                maxlength="50"  DataSourceID="SqlDataSource1"
                                DataTextField="descripcion" DataValueField="idcategoria_clase">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                                ConnectionString="<%$ ConnectionStrings:satConnectionString %>"
                                SelectCommand="SELECT [idcategoria_clase], [descripcion] FROM [Categoria_clase]"></asp:SqlDataSource>
                        </td>
                          <td>
                                            <asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server"
                                              ControlToValidate="idEstado"
                                              ErrorMessage="*"
                                              ForeColor="Red">
                                            </asp:RequiredFieldValidator>


                                          </td>

                         <td>
                            <label>Marca</label>
                            <asp:DropDownList ID="idmarca" runat="server" class="w3-input" placeholder="....."
                                maxlength="50" Width="170px" DataSourceID="SqlDataSource2" AutoPostBack="True"  
                                DataTextField="descripcion" DataValueField="idmarca">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server"
                                ConnectionString="<%$ ConnectionStrings:satConnectionString %>"
                                SelectCommand="SELECT [idmarca], [descripcion] FROM [Marca_vehiculo]"></asp:SqlDataSource>
                        </td>
                          <td>
                                            <asp:RequiredFieldValidator id="RequiredFieldValidator7" runat="server"
                                              ControlToValidate="idmarca"
                                              ErrorMessage="*"
                                              ForeColor="Red">
                                            </asp:RequiredFieldValidator>


                                          </td>

                        
                        <td>
                            <label>Modelo</label>
                            <asp:DropDownList ID="idmodelo" runat="server" placeholder="....." maxlength="50" class="w3-input"
                                Width="170px" DataSourceID="SqlDataSource3" DataTextField="descripcion"
                                DataValueField="idmodelo">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server"
                                ConnectionString="<%$ ConnectionStrings:satConnectionString %>"
                                SelectCommand="SELECT [idmodelo], [descripcion] FROM [Modelo_Vehiculo] WHERE ([idmarca] = @parametroidmarca)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="idmarca" Name="parametroidmarca"
                                        PropertyName="SelectedValue" Type="Int32"  />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                          <td>
                                            <asp:RequiredFieldValidator id="RequiredFieldValidator8" runat="server"
                                              ControlToValidate="idmodelo"
                                              ErrorMessage="*"
                                              ForeColor="Red">
                                            </asp:RequiredFieldValidator>


                                          </td>

                    </tr>
                    <tr>
                      
                       
                      

                      
                        <td>
                            <label>Serie de Chasis</label>
                            <asp:TextBox ID="txtserie" class="w3-input" runat="server" placeholder="Serie de Chasis " MaxLength="50" Width="170px"></asp:TextBox>
                        </td>
                          <td>
                                            <asp:RequiredFieldValidator id="RequiredFieldValidator9" runat="server"
                                              ControlToValidate="txtserie"
                                              ErrorMessage="*"
                                              ForeColor="Red">
                                            </asp:RequiredFieldValidator>


                                          </td>

                          <td>
                            <label>Motor</label>
                            <asp:TextBox ID="txtmotor" runat="server" placeholder="Motor del Auto....." class="w3-input"
                                MaxLength="50"></asp:TextBox>
                        </td>
                        <td>
                                            <asp:RequiredFieldValidator id="RequiredFieldValidator10" runat="server"
                                              ControlToValidate="txtmotor"
                                              ErrorMessage="*"
                                              ForeColor="Red">
                                            </asp:RequiredFieldValidator>


                                          </td>

                        <td>
                            <label>Color</label>
                            <asp:TextBox ID="txtcolor" runat="server" class="w3-input" placeholder="Color del Auto..... " MaxLength="50"></asp:TextBox>
                          
                        </td>
                         <td>
                                            <asp:RequiredFieldValidator id="RequiredFieldValidator11" runat="server"
                                              ControlToValidate="txtcolor"
                                              ErrorMessage="*"
                                              ForeColor="Red">
                                            </asp:RequiredFieldValidator>


                                          </td>



                      
                        <td>

                               <label>Carroceria</label>
                            <asp:TextBox ID="txtcarroceria" runat="server" placeholder="Carroceria...... " class="w3-input"
                                MaxLength="50"></asp:TextBox>

                        </td>
                           <td>
                                            <asp:RequiredFieldValidator id="RequiredFieldValidator12" runat="server"
                                              ControlToValidate="txtcarroceria"
                                              ErrorMessage="*"
                                              ForeColor="Red">
                                            </asp:RequiredFieldValidator>


                                          </td>

                    </tr>
                  


                    <tr>
                     
                      

                        <td>
                            <label>Combustible</label>
                            <asp:DropDownList ID="id_combustible" runat="server" placeholder="....." maxlength="50" class="w3-select w3-border"
                                DataSourceID="SqlDataSource4" DataTextField="descripcion"
                                DataValueField="id_combustible">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server"
                                ConnectionString="<%$ ConnectionStrings:satConnectionString %>"
                                SelectCommand="SELECT [id_combustible], [descripcion] FROM [Tipo_combustible]"></asp:SqlDataSource>
                        </td>
                         <td>
                                            <asp:RequiredFieldValidator id="RequiredFieldValidator13" runat="server"
                                              ControlToValidate="id_combustible"
                                              ErrorMessage="*"
                                              ForeColor="Red">
                                            </asp:RequiredFieldValidator>


                                          </td>


             
                          
                       
                        <td>
                            
                            <label>Año de Fabricacion</label>
                            <asp:TextBox ID="txtanofab" runat="server" class="w3-input" placeholder="Año de Fabricación..... " MaxLength="50" TextMode="Date"></asp:TextBox>
                          
                        </td>
                         <td>
                                            <asp:RequiredFieldValidator id="RequiredFieldValidator14" runat="server"
                                              ControlToValidate="txtanofab"
                                              ErrorMessage="*"
                                              ForeColor="Red">
                                            </asp:RequiredFieldValidator>


                                          </td>


                        
                        <td>

                            <label>Año de Modelo</label>
                            <asp:TextBox ID="txtanomodelo" runat="server" class="w3-input" placeholder="Año de Modelo...... "
                                MaxLength="50" Width="170px" TextMode="Date"></asp:TextBox>

                        </td>
                         <td>
                                            <asp:RequiredFieldValidator id="RequiredFieldValidator15" runat="server"
                                              ControlToValidate="txtanomodelo"
                                              ErrorMessage="*"
                                              ForeColor="Red">
                                            </asp:RequiredFieldValidator>


                                          </td>

                                  <td>
                                      <label>Año de FAbricacion</label>
                            <asp:TextBox ID="txtfechafab" runat="server" class="w3-input" placeholder="Año de Fabricación..... "
                                MaxLength="50" Width="170px" TextMode="Date"></asp:TextBox>

                        </td>
                         <td>
                                            <asp:RequiredFieldValidator id="RequiredFieldValidator16" runat="server"
                                              ControlToValidate="txtfechafab"
                                              ErrorMessage="*"
                                              ForeColor="Red">
                                            </asp:RequiredFieldValidator>


                                          </td>


                    </tr>

                   
                      
                </table>





                <div class="form-group">
                    <asp:Button ID="Button1" runat="server"
                        Text="Anterior" class="w3-button w3-gray" BackColor="Blue" Height="46px" OnClientClick="postback false;"
                        Width="115px" />
                    <asp:Button ID="btnAgregarVehiculo" runat="server"
                        Text="Registrar" class="w3-button w3-blue" BackColor="Blue" Height="46px"
                        Width="115px" />
                </div>
                <div class="form-group">
                    <center>
                             <asp:Label ID="lblmensaje" runat="server" Height="19px" ForeColor="Red"></asp:Label></center>
                </div>


            </form>




        </div>

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


