<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="autovaluo.aspx.vb" Inherits="sat.autovaluo" %>

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



    <style type="text/css">
        .auto-style2 {
            width: 260px;
        }
        .auto-style4 {
            width: 231px;
        }
        .auto-style5 {
            width: 287px;
        }
        .auto-style6 {
            width: 274px;
        }
    </style>



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

      
        

            <form id="form2" class="w3-container w3-card-4 w3-light-grey w3-text-blue w3-margin" runat="server">

                <h2 style="color: #000000;">REGISTRO DE AUTOVALUO</h2>
                <table>
                    <div class="w3-row">
                    <tr>
                       
       
                        <td class="auto-style5">
                            <label>Codigo del Contribuyente</label>
                            <asp:TextBox class="w3-input" ID="predio" runat="server"
                                placeholder="Codigo del Contribuyente..." MaxLength="50" ></asp:TextBox>
                           

                        </td>
                        <td>
                                 <asp:RequiredFieldValidator id="RequiredFieldValidator11" runat="server"
                              ControlToValidate="predio"
                              ErrorMessage="*"
                              ForeColor="Red">
                            </asp:RequiredFieldValidator>


                        </td>



                        <td class="auto-style2">
                             <asp:ImageButton ID="ImageButton1" runat="server" Height="16px"
                                ImageUrl="~/images/Buscar.png" Width="16px" />
                        </td>
                       
                    </tr>
                    </div>

                    <div class="w3-row">
                    <tr>
                
                        <td class="auto-style5">
                            <label>Nivel</label>
                            <asp:TextBox class="w3-input" ID="nivel" runat="server" placeholder="Nivel..." MaxLength="50" Width="245px"></asp:TextBox>
                        </td>
                          <td>
                                 <asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server"
                              ControlToValidate="nivel"
                              ErrorMessage="*"
                              ForeColor="Red">
                            </asp:RequiredFieldValidator>


                        </td>


                       
                        <td class="auto-style2">
                            <label>Ambiente del Predio</label>
                            <asp:TextBox  class="w3-input" ID="ambiente" runat="server" placeholder="Ambiente..." MaxLength="50" Width="240px"></asp:TextBox>

                        </td>
                         <td>
                                 <asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server"
                              ControlToValidate="ambiente"
                              ErrorMessage="*"
                              ForeColor="Red">
                            </asp:RequiredFieldValidator>


                        </td>

                       
                        <td class="auto-style6">
                            <label>Ints. Electrica</label>
                            <asp:DropDownList ID="inst_elect" runat="server" class="w3-input w3-border" maxlength="50" Width="227px">
                                <asp:ListItem>SI</asp:ListItem>
                                <asp:ListItem>NO</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                         <td>
                                 <asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server"
                              ControlToValidate="inst_elect"
                              ErrorMessage="*"
                              ForeColor="Red">
                            </asp:RequiredFieldValidator>


                        </td>


                          <td class="auto-style4">
                            <label>Tipo de Material</label>
                            <asp:DropDownList ID="idTippo_material" runat="server" class="w3-input w3-border"
                                maxlength="50" Width="264px" TabIndex="1">
                            </asp:DropDownList>
                        </td>

                          <td>
                                 <asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server"
                              ControlToValidate="idTippo_material"
                              ErrorMessage="*"
                              ForeColor="Red">
                            </asp:RequiredFieldValidator>


                        </td>

                                   
                        <td>
                            <label>Area del Ambiente</label>
                            <asp:TextBox ID="area" class="w3-input" runat="server" placeholder="Área..." MaxLength="50" Width="340px"></asp:TextBox></td>

                          <td>
                                 <asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server"
                              ControlToValidate="area"
                              ErrorMessage="*"
                              ForeColor="Red">
                            </asp:RequiredFieldValidator>


                        </td>




                    </tr>
                    </div>

                    <div class="w3-row">

                  
                    </div>


                </table>


                <asp:Button ID="btnIngresar" runat="server" class="w3-button w3-blue" Text="ingresar" />
               
               
           
                <asp:Label ID="lblMensaje" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                <br />



                <ul class="nav navbar-nav navbar-right" style="margin-top: 40px;">
                    <asp:Button ID="btnSiguiente" class="w3-button w3-blue" Text="Siguiente" runat="server"></asp:Button>



                </ul>
                
                  <section>

        
                    <center><asp:GridView ID="MOSTRAR" runat="server" class="w3-table" BackColor="White" BorderColor="#3366CC" 
                                         BorderStyle="None" BorderWidth="1px" CellPadding="4">
                                 <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                                 <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                                 <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                                 <RowStyle BackColor="White" ForeColor="#003399" />
                                 <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                 <SortedAscendingCellStyle BackColor="#EDF6F6" />
                                 <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                                 <SortedDescendingCellStyle BackColor="#D6DFDF" />
                                 <SortedDescendingHeaderStyle BackColor="#002876" />
                             </asp:GridView></center>
        
                      </section>      
            </form>


        </div>






    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/stickUp.min.js" type="text/javascript"></script>
    <script src="js/colorbox/jquery.colorbox-min.js" type="text/javascript"></script>
    <script src="js/templatemo_script.js" type="text/javascript"></script>
    <!-- templatemo 395 urbanic -->
</body>
</html>
