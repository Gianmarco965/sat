<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Potencia.aspx.vb" Inherits="sat.Potencia" %>

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

            Response.Redirect(Request.UrlReferrer.ToString())

        End Sub


    </script>
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
                            
                            
                            

                          <form id="form1" class="w3-container w3-card-4 w3-light-grey w3-text-blue w3-margin" runat="server" > 
                      <h2 style="color: #000000;">REGISTRO DE POTENCIA</h2>
                <table class="style1">
                   
                    <tr>
                      
                        <td>
                            <label>Longitud</label>
                            <asp:TextBox ID="txtlongitud" runat="server"  class="w3-input"  onkeypress="return numbersonly(event);"
                                  placeholder="Longitud..." maxlength="50" ></asp:TextBox>
                        </td>
                          <td>
                                            <asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server"
                                              ControlToValidate="txtlongitud"
                                              ErrorMessage="*"
                                              ForeColor="Red">
                                            </asp:RequiredFieldValidator>

                            </td>


                       
                        <td>
                            <label>Altura</label>
                            <asp:TextBox ID="txtaltura" runat="server"   class="w3-input"  onkeypress="return numbersonly(event);"
                                placeholder="Altura..." maxlength="50" Width="170px" 
                                ></asp:TextBox> 
                        </td>
                          <td>
                                            <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server"
                                              ControlToValidate="txtaltura"
                                              ErrorMessage="*"
                                              ForeColor="Red">
                                            </asp:RequiredFieldValidator>

                            </td>

                      
                        <td>
                            <label>Ancho</label>
                            <asp:TextBox ID="txtancho" runat="server"   class="w3-input"  onkeypress="return numbersonly(event);"
                                placeholder="Ancho..." maxlength="50" 
                                ></asp:TextBox> 
                        </td>
                           <td>
                                            <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server"
                                              ControlToValidate="txtancho"
                                              ErrorMessage="*"
                                              ForeColor="Red">
                                            </asp:RequiredFieldValidator>

                            </td>


                    </tr>
                    <tr>
                       
                        <td>
                            <label>Cilindro</label>
                            <asp:TextBox ID="txtcilindro" runat="server"  class="w3-input"  onkeypress="return numbersonly(event);"
                                placeholder="Cilindro..." maxlength="50" Width="170px" 
                                ></asp:TextBox> 
                        </td>
                           <td>
                                            <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server"
                                              ControlToValidate="txtcilindro"
                                              ErrorMessage="*"
                                              ForeColor="Red">
                                            </asp:RequiredFieldValidator>

                            </td>


                       
                        <td>
                            <label>Peso bruto</label>
                            <asp:TextBox ID="txtpbruto" runat="server" class="w3-input"  onkeypress="return numbersonly(event);"  placeholder="Peso Bruto....." maxlength="50" Width="170px"></asp:TextBox>
                        </td>
                           <td>
                                            <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server"
                                              ControlToValidate="txtpbruto"
                                              ErrorMessage="*"
                                              ForeColor="Red">
                                            </asp:RequiredFieldValidator>

                            </td>

                     
                        <td>
                            <label>Peso Neto</label>
                            <asp:TextBox ID="txtpneto" class="w3-input" runat="server"  onkeypress="return numbersonly(event);"  placeholder="Peso neto " maxlength="50" Width="170px"></asp:TextBox>
                        </td>
                         <td>
                                            <asp:RequiredFieldValidator id="RequiredFieldValidator16" runat="server"
                                              ControlToValidate="txtpneto"
                                              ErrorMessage="*"
                                              ForeColor="Red">
                                            </asp:RequiredFieldValidator>


                                          </td>

                    </tr>
                    

                </table>

                            
                            <div class="form-group">
                                <asp:Button ID="Button1" runat="server" 
                                    Text="Anterior" class="w3-button w3-gray" BackColor="Blue" Height="46px" 
                                    Width="115px" />  <asp:Button ID="btnAgregarPotencia" runat="server" 
                                    Text="Registrar" class="w3-button w3-blue" BackColor="Blue" Height="46px" 
                                    Width="115px" /> </div>
                             <div class="form-group"><center>
                             <asp:Label ID="lblmensaje" runat="server" Height="19px" ForeColor="Red"></asp:Label></center></div>
                             
                             
                             </form>
                    
                          
                           </div>
                            
                    </div>

                   
               
    
</body>
</html>
