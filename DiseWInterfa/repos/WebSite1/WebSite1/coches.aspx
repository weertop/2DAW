<%@ Page Language="C#" AutoEventWireup="true" CodeFile="coches.aspx.cs" Inherits="coches" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Marca"></asp:Label>
            <br />
            <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged">
                <asp:ListItem Value="to">Toyota</asp:ListItem>
                <asp:ListItem Value="ni">Nissan</asp:ListItem>
                <asp:ListItem Value="fo">Ford</asp:ListItem>
            </asp:ListBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Modelo"></asp:Label>
            <br />
            <asp:ListBox ID="ListBox2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ListBox2_SelectedIndexChanged"></asp:ListBox>
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" Height="56px" Width="105px" ImageUrl="~/imagenes/aygo.jpg" />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Extras"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True">
                <asp:ListItem Value="ct">Camara trasera</asp:ListItem>
                <asp:ListItem Value="ac">Asientos calefactados</asp:ListItem>
                <asp:ListItem Value="ap">AutoPilot</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Colores"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList2" runat="server" AutoPostBack="True">
                <asp:ListItem Value="r">Rojo</asp:ListItem>
                <asp:ListItem Value="n">Negro</asp:ListItem>
                <asp:ListItem Value="a">Azul electrico</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Enviar" Width="85px" BackColor="#33CCFF" Font-Bold="True" OnClick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Text="El precio total es:"></asp:Label>
            <asp:Label ID="Label6" runat="server"></asp:Label>
            <asp:Label ID="Label7" runat="server" Text="€"></asp:Label>
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
