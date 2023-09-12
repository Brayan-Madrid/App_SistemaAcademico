<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_estudiantes.aspx.cs" Inherits="App_SistemaAcademico.frm_estudiantes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registro Estudiantes</title>
    <link rel="stylesheet" type="text/css" href="estilos/estilo.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div id="container">
            <h3>Formulario registro de estudiantes</h3>
            <div class="form-group">
                <asp:TextBox ID="txt_codigo" runat="server" placeholder="Identificación *" required ="true"></asp:TextBox> 
            </div>
            <div class="form-group">
                <asp:TextBox ID="txt_nombre" runat="server" placeholder="Nombre Completo *"></asp:TextBox> 
            </div>
            <div class="form-group">
                <asp:TextBox ID="txt_contacto" runat="server" placeholder="Contacto *" ></asp:TextBox> 
            </div>
            <div class="form-group">
                <asp:TextBox ID="txt_correo" runat="server" placeholder="Correo *" ></asp:TextBox> 
            </div>
            <div class="form-group">
                <asp:TextBox ID="txt_direccion" runat="server" placeholder="Dirección *" ></asp:TextBox> 
            </div>
            <div class="form-group">
                <asp:TextBox ID="txt_salario" runat="server" placeholder="Acudiente *" ></asp:TextBox> 
            </div>
            <asp:DropDownList ID="cbx_estrato" runat="server" CssClass="cbx">
                <asp:ListItem Value="0 ">1 Estrato</asp:ListItem>
                <asp:ListItem Value="1 ">2 Estrato</asp:ListItem>
                <asp:ListItem Value="2 ">3 Estrato</asp:ListItem>
                <asp:ListItem Value="3 ">4 Estrato</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="cbx_sexo" runat="server" CssClass="cbx">
                <asp:ListItem Value="0 ">Hombre</asp:ListItem>
                <asp:ListItem Value="1 ">Mujer</asp:ListItem>
            </asp:DropDownList>
            <div class="form-group">
                <asp:TextBox ID="txt_observaciones" runat="server" placeholder="Observaciones" ></asp:TextBox> 
            </div>

            <div class="btn-group">
                <asp:Button ID="btn_registrar" runat="server" Text="Registrar" CssClass="btn" OnClick="btn_registrar_Click"  />
                <asp:Button ID="btn_cancelar" runat="server" Text="Cancelar" CssClass="btn btn-cancelar"  />
                <asp:Button ID="btn_consultar" runat="server" Text="Consulta" CssClass="btn" />
            </div>
            <asp:Label ID="lbl_mensaje" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
