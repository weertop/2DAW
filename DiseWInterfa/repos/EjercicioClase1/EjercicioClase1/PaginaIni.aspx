<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PaginaIni.aspx.cs" Inherits="PaginaIni" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Nombre: "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 132px" ToolTip="Introduce nombre" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Se debe poner un nombre" Display="None"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Direccion: "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 118px"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="DNI:"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 168px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" Display="None" ErrorMessage="Dni no valido" ValidationExpression="([0-9]{8})*[a-zA-Z]"></asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Correo: "></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 145px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" Display="None" ErrorMessage="Email incorrecto" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Edad:"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" style="margin-left: 161px"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Tiene que ser mayor de edad" ControlToValidate="TextBox5" Display="Dynamic" MaximumValue="110" MinimumValue="18" Type="Integer"></asp:RangeValidator>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Constraseña:"></asp:Label>
            <asp:TextBox ID="TextBox11" runat="server" style="margin-left: 105px"></asp:TextBox>
            <br />
            <asp:Label ID="Label7" runat="server" Text="repetir contraseña:"></asp:Label>
            <asp:TextBox ID="TextBox12" runat="server" style="margin-left: 62px"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox12" ControlToValidate="TextBox11" Display="None" ErrorMessage="las contraseñas no coinciden"></asp:CompareValidator>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Mostrar" BackColor="#99FF99" BorderStyle="Solid" Font-Size="Larger" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="margin-left: 230px" Text="Siguiente" Font-Size="Larger" />
            <br />
            <br />
            <asp:TextBox ID="TextBox6" runat="server" style="margin-left: 180px"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox7" runat="server" style="margin-left: 182px"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox8" runat="server" style="margin-left: 179px"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox9" runat="server" style="margin-left: 184px"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox10" runat="server" style="margin-left: 183px"></asp:TextBox>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </div>
    </form>
</body>
</html>
