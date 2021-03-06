﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Predio.aspx.vb" Inherits="sat.Predio" %>

<!DOCTYPE html>

<html>
<head>
    <title>Urbanic Free Website Template</title>
    <meta name="keywords" content="" />
     <meta http-equiv="Expires" content="0" /> 
        <meta http-equiv="Pragma" content="no-cache" />

        <script type="text/javascript">
          if(history.forward(1)){
            location.replace( history.forward(1) );
          }
        </script>
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
        <SCRIPT language="JavaScript">
      function numbersonly(e)
      {
        var unicode=e.charCode? e.charCode : e.keyCode
        if (unicode!=8 && unicode!=44)
        {
          if (unicode<48||unicode>57) //if not a number
          { return false} //disable key press    
        }  
      }  
</SCRIPT>
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
      <input type="button"  onserverclick="FancyBtn_Click" runat="server" class="btn btn-default w3-bar-item w3-button w3-right w3-text-light-grey w3-padding-16" value="Cerrar SESION"/>                        </div>

                       
                  
            
      
        <!-- /container -->





    <!-- /.templatemo-ABOUT -->

    <div class="templatemo-t w3-bar" id="templatemo-about" dir="ltr"
        style="background-image: url('images/backgr.png');">


      
        <div class="w3-container w3-display-middle w3-margin-top">

            <form id="form1"  class="w3-container w3-card-4 w3-light-grey w3-text-blue w3-margin"  runat="server">
                
            <h2 class="w3-center" style="color: #000000;">REGISTRO DE PREDIO</h2>
                <table >
                    <div class="w3-row">
                    <tr>
  
                        <td>
                            <label>Codigo del Contribuyente</label> 
                            <asp:TextBox ID="codContri" runat="server" class="w3-input" MaxLength="10"  onkeypress="return numbersonly(event);" 
                                placeholder="Codigo del Contribuyente..."  ></asp:TextBox>
                            
                            
                        </td>
                            <td>
                                   <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server"
                              ControlToValidate="codContri"
                              ErrorMessage="*"
                              ForeColor="Red">
                            </asp:RequiredFieldValidator>

                            </td>


                           <td><asp:ImageButton ID="ImageButton1" runat="server" Height="25px"
                                ImageUrl="~/images/Buscar.png" Width="25px" /></td>
                            
                    </tr>
                         </div>
                     <div class="w3-row">
                    <tr>
      
                        <td>
                             <label>Direccion</label>
                            <asp:TextBox   class="w3-input" ID="ubicacion_P" runat="server" placeholder="Dirección..." MaxLength="50" ></asp:TextBox>
                          
                        </td>
                        <td>
                              <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server"
                              ControlToValidate="ubicacion_P"
                              ErrorMessage="*"
                              ForeColor="Red">
                            </asp:RequiredFieldValidator>

                        </td>
                           
                            
                        <td>
                             <label>Referencia</label>
                            <asp:TextBox ID="referencia_p" runat="server" class="w3-input"
                                placeholder="Referencia del la Dirección..." MaxLength="50" 
                                ></asp:TextBox>
                           

                        </td>

                        <td>
                             <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server"
                              ControlToValidate="referencia_p"
                              ErrorMessage="*"
                              ForeColor="Red">
                            </asp:RequiredFieldValidator>

                        </td>

                        
                        <td>
                             <label>Distrito</label>
                            <asp:DropDownList ID="idDistrito" class="w3-select w3-border" runat="server" Width="150px" placeholder="....."
                                maxlength="50"  DataSourceID="SqlDataSource1"
                                DataTextField="descripcion" DataValueField="idDistrito">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                                ConnectionString="<%$ ConnectionStrings:satConnectionString %>"
                                SelectCommand="SELECT [idDistrito], [descripcion] FROM [Distrito]"></asp:SqlDataSource>

                        </td>


                        <td>
                          <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server"
                              ControlToValidate="idDistrito"
                              ErrorMessage="*"
                              ForeColor="Red">
                            </asp:RequiredFieldValidator>

                        </td>

                        <td>
                             <label>Condicion</label>
                            <asp:DropDownList ID="idCondicion" runat="server" placeholder="....."
                                maxlength="50"  DataSourceID="SqlDataSource2" class="w3-select w3-border"
                                DataTextField="descripcion" DataValueField="idCondicion_P">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server"
                                ConnectionString="<%$ ConnectionStrings:satConnectionString %>"
                                SelectCommand="SELECT [idCondicion_P], [descripcion] FROM [Condicion_Propiedad]"></asp:SqlDataSource>

                          

                        </td>
                        <td>
                               <asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server"
                              ControlToValidate="idCondicion"
                              ErrorMessage="*"
                              ForeColor="Red">
                            </asp:RequiredFieldValidator>


                        </td>




                        <td>
                            <label>Descripcion de la Condicion</label>
                            <asp:TextBox class="w3-input" ID="descripcion_Condi" runat="server" placeholder="Desc. de la Condición." MaxLength="50" ></asp:TextBox>
                       
                         
                        </td>

                      <td>

                      </td>

                    </tr>
                         
                   </div>

                     <div class="w3-row">
                    <tr>
                        
                           
                      
                        
                      
                        <td>
                            <label>Estado del Predio</label>
                            <asp:DropDownList ID="idEstado" runat="server" placeholder="....."
                                maxlength="50" class="w3-select w3-border" DataSourceID="SqlDataSource3"
                                DataTextField="descripcion" DataValueField="idEstado">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server"
                                ConnectionString="<%$ ConnectionStrings:satConnectionString %>"
                                SelectCommand="SELECT [idEstado], [descripcion] FROM [Estado]"></asp:SqlDataSource>
                       
                        </td>

                        <td>
                            
                            <asp:RequiredFieldValidator id="RequiredFieldValidator7" runat="server"
                              ControlToValidate="idEstado"
                              ErrorMessage="*"
                              ForeColor="Red">
                            </asp:RequiredFieldValidator>


                        </td>

                        <td>
                            <label>Uso del Predio</label>
                            <asp:DropDownList ID="idUso_predio" class="w3-select w3-border" runat="server" placeholder="....."
                                maxlength="50"  DataSourceID="SqlDataSource4"
                                DataTextField="descripcion" DataValueField="idUso_Predio">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server"
                                ConnectionString="<%$ ConnectionStrings:satConnectionString %>"
                                SelectCommand="SELECT [descripcion], [idUso_Predio] FROM [Uso_Predio]"></asp:SqlDataSource>
                       
                        </td>

                        <td>
                                 
                            <asp:RequiredFieldValidator id="RequiredFieldValidator8" runat="server"
                              ControlToValidate="idUso_predio"
                              ErrorMessage="*"
                              ForeColor="Red">
                            </asp:RequiredFieldValidator>


                        </td>

                          <td>
                            <label>Uso del Predio</label>
                            <asp:DropDownList ID="idTipo" class="w3-select w3-border" runat="server" placeholder="....." maxlength="50"
                                DataSourceID="SqlDataSource5" DataTextField="descripcion"
                                DataValueField="idTipo">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource5" runat="server"
                                ConnectionString="<%$ ConnectionStrings:satConnectionString %>"
                                SelectCommand="SELECT [descripcion], [idTipo] FROM [Tipo]"></asp:SqlDataSource>
                      
                        </td>

                        <td>
                            
                            <asp:RequiredFieldValidator id="RequiredFieldValidator9" runat="server"
                              ControlToValidate="idTipo"
                              ErrorMessage="*"
                              ForeColor="Red">
                            </asp:RequiredFieldValidator>

                              

                        </td>
                        
                        <td>
                            <label>Desc. Tipo de Predio</label>
                            <asp:TextBox class="w3-input" ID="Descripcion_Tipo" runat="server" placeholder="descripcion de otro tipo" MaxLength="50"></asp:TextBox>
                         
                        
                        
                        </td>
                        <td>

                        </td>
                      

                          <td>
                            <label>Fecha de Adq.</label>
                            <asp:TextBox ID="fecha" runat="server" class="w3-input"
                                placeholder="Fecha..." MaxLength="50"  TextMode="Date"></asp:TextBox>

                        
                        </td>

                        <td>
                                <asp:RequiredFieldValidator id="RequiredFieldValidator11" runat="server"
                              ControlToValidate="fecha"
                              ErrorMessage="*"
                              ForeColor="Red">
                            </asp:RequiredFieldValidator>


                        </td>
                    </tr>

                         </div>

                    <div class="w3-row">
                    <tr>
                        
                        
                    

                      
                        
                       <td>
                            <label>Area del Terreno</label>
                            <asp:TextBox ID="Area_Terreno" class="w3-input"  runat="server"  onkeypress="return numbersonly(event);"  placeholder="Área del terreno" MaxLength="50" ></asp:TextBox>
                            
                        </td>

                        <td>
                            <asp:RequiredFieldValidator id="RequiredFieldValidator12" runat="server"
                              ControlToValidate="Area_Terreno"
                              ErrorMessage="*"
                              ForeColor="Red">
                            </asp:RequiredFieldValidator>


                        </td>

                         <td>

                            <label>Observacion</label>
                            <asp:TextBox ID="Observacion" runat="server" class="w3-input"
                                placeholder="Observacion" MaxLength="50"></asp:TextBox>
                           
                        </td>
                       


                    </tr>
                         </div>
                    
                    <div class="w3-row">

                    <tr>
                       
                      
                       

                       
                       
                    </tr>
                         </div>
                </table>


                <div class="form-group">
                    <asp:Button ID="BTNANTERIOR" runat="server" OnClientClick="postback false;"
                        Text="Anterior" class="w3-button w3-blue-gray" Height="46px"
                        Width="115px" />
                    <asp:Button ID="btnAgregarPredio" runat="server"
                        Text="Registrar" class="w3-button w3-blue w3-right"  Height="46px"
                        Width="115px" />
                </div>

                <div class="form-group">
                    <center>
                        <asp:Label ID="lblmensaje" runat="server" Height="19px" ForeColor="Red"></asp:Label></center>
                </div>


            </form>

            </div>


        </div>


 
    <!-- /.row -->

    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/stickUp.min.js" type="text/javascript"></script>
    <script src="js/colorbox/jquery.colorbox-min.js" type="text/javascript"></script>
    <script src="js/templatemo_script.js" type="text/javascript"></script>
    <!-- templatemo 395 urbanic -->
</body>
</html>

