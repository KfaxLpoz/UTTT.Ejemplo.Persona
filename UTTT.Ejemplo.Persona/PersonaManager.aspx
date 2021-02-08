<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonaManager.aspx.cs" Inherits="UTTT.Ejemplo.Persona.PersonaManager" debug=false%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<link href="Csss/estilos.css" rel="stylesheet" />
<head runat="server">
    <title>Registro Persona</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" ></script>
</head>
<body >
    <div class="container well contenedor">
        <div class="row">
            <div class="col-xs-12">
              <h2><asp:Label ID="lblAccion" runat="server" Text="Registro" Font-Bold="True"></asp:Label></h2>

            </div>
        </div>
        <form runat="server" class="form-horizontal">
            <div class="form-group">
                <asp:Label ID="lblSexo" runat="server" Text="Sexo:" CssClass="control-label col-sm-2"></asp:Label>
                <div class="col-sm-10">
                    <div class="dropdown">
                        <asp:DropDownList ID="ddlSexo" runat="server" 
                onselectedindexchanged="ddlSexo_SelectedIndexChanged" AutoPostBack="true" ForeColor="black"
                            CssClass="selectpicker btn btn-secondary" Width="716px">
            </asp:DropDownList>

                    </div>
                </div>
            </div>
            
            <div class="form-group">
                <asp:Label ID="lblClaveUnica" runat="server" Text="Clave Unica:" CssClass="control-label col-sm-2"></asp:Label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txtClaveUnica"  runat="server" title="Clave Unica" required
                    CssClass="form-control" placeholder="clave numerica de tres digitos"
                    MinLength="3" MaxLength="3" onkeypress="return numbersonly(event);" ></asp:TextBox>
                      <div>
                        <asp:RequiredFieldValidator ID="rsvClaveUnica" runat="server"
                            ErrorMessage="El campo de clave Unica es obligatorio" ControlToValidate="txtClaveUnica" CssClass="form-control alert-danger text-center" ></asp:RequiredFieldValidator>
                     </div>
            </div>
                   <script type="text/javascript">
                    function numbersonly(e) {
                    var unicode = e.charCode ? e.charCode : e.KeyCode
                    if (unicode != 8 && unicode != 44) {
                        if (unicode < 48 || unicode > 57) {
                            return false
                        }
                    }
                   }
            </script>
                </div>
                   
            <div class="form-group">
                <asp:Label ID="LblNombre" runat="server" Text="Nombre:" CssClass="control-label col-sm-2"></asp:Label>
                <div class="col-sm-10"> 
                    <asp:TextBox ID="txtNombre" runat="server"
                    placeholder="Nombre(s)" minlength="3" MaxLength="15" onkeypress="return letrasonly(event);"
                        CssClass="form-control" oncopy="return false" pattern="[A-Za-z]+" onpaste="return false" required></asp:TextBox>
               
                   <script type="text/javascript">
                       function letrasonly(e) {
                           var unicode = e.charCode ? e.charCode : e.KeyCode
                           if (unicode < 65 || unicode > 90) {
                               if (unicode != 241) {
                                   if (unicode < 96 || unicode > 122) {
                                       return false
                                   }
                               }
                           }

                       }
                   </script>   
       
                <div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                            ErrorMessage="El campo Nombre es oblogatorio" ControlToValidate="txtClaveUnica" CssClass="form-control alert-danger text-center" ></asp:RequiredFieldValidator>
                     </div>           
                
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="lblAPaterno" runat="server" Text="Apellido Paterno:" CssClass="control-label col-sm-2"></asp:Label>
                <div class="col-sm-10"> 
            <asp:TextBox ID="txtAPaterno" runat="server"  BorderStyle="Solid"
                placeholder="Apellido Paterno" minlength="3" MaxLength="20" onkeypress="return letrasonly(event);"
                CssClass="form-control" oncopy="return false" pattern="[A-Za-z]+" onpaste="return false" required></asp:TextBox>
                </div>
                                <div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                            ErrorMessage="El campo Apellido Paterno es obligatorio" ControlToValidate="txtClaveUnica" CssClass="form-control alert-danger text-center" ></asp:RequiredFieldValidator>
                     </div>
            </div>

             <div class="form-group">
                <asp:Label ID="lblAMaterno" runat="server" Text="Apellido Materno:" CssClass="control-label col-sm-2"></asp:Label>
                <div class="col-sm-10"> 
                    <asp:TextBox ID="txtAMaterno" runat="server" placeholder="Apellido Materno" 
                    onkeypress="return letrasonly(event);" CssClass="form-control" oncopy="return false"
                        pattern="[A-Za-z]+" onpaste="return false" required></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblFechaNacimiento" runat="server" Text="Fecha de Nacimiento:" CssClass="control-label col-sm-2"></asp:Label>
                <div class="col-sm-10"> 
                                    <asp:Calendar ID="dteCalendar" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="100px" Width="900px" CellPadding="1" DayNameFormat="Shortest">
                    <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#009999" ForeColor="#CCFF99" Font-Bold="True" />
                    <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                    <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                    <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                    <WeekendDayStyle BackColor="#CCCCFF"  />
                </asp:Calendar>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblHermanos" runat="server" Text="Numero de Hermanos:" CssClass="control-label col-sm-2"></asp:Label>
                <div class="col-sm-10"> 
                    <asp:TextBox ID="txtNumHermano" runat="server" 
                        placeholder="Numero total de hermanos" onkeypress="return numbersonly(event);"
                        MinLength="1" MaxLength="2" CssClass="form-control" oncopy="return false"
                             onpaste="return false" required></asp:TextBox>
                
                    <script language="javascript">
                        function numbersonly(e) {
                            var unicode = e.charCode ? e.charCode : e.KeyCode
                            if (unicode != 8 && unicode != 44) {
                                if (unicode < 48 || unicode > 57) {
                                    return false
                                }
                            }
                        }
                    </script>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblCorreo" runat="server" Text="Correo Electronico:" CssClass="control-label col-sm-2"></asp:Label>
                <div class="col-sm-10"> 
                        <asp:TextBox ID="txtCorreo" runat="server" 
                            placeholder="Correo electronico ej prueba@prueba.com" 
                             CssClass="form-control" oncopy="return false"
                             onpaste="return false" required></asp:TextBox>
            
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblCodigoPostal" runat="server" Text="Codigo Postal:" CssClass="control-label col-sm-2"></asp:Label>
                <div class="col-sm-10"> 
                            <asp:TextBox ID="txtCP" runat="server" 
                               CssClass="form-control" placeholder="Codigo Postal" oncopy="return false"
                             onpaste="return false" required></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="lblRFC" runat="server" Text="RFC:" CssClass="control-label col-sm-2"></asp:Label>
                <div class="col-sm-10"> 
                                <asp:TextBox ID="txtRFC" runat="server" placeholder="RFC" 
                                 CssClass="form-control" oncopy="return false"
                             onpaste="return false" required ></asp:TextBox>

                </div>
            </div>

            <div class="form-group">
                        <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" 
            onclick="btnAceptar_Click" CssClass="form-control btn btn-primary" />
            </div>
            
            <div class="form-group">
        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" 
            onclick="btnCancelar_Click" ViewStateMode="Disabled" CssClass="form-control btn btn-secondary"/>
            </div>

            <div>
                <br />
                <br />
                <br />
            </div>
    
    </form>
    </div>
</body>
</html>
