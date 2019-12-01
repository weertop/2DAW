<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Nombre" BackColor="#FFCC66" BorderStyle="Dashed"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 103px"></asp:TextBox>
        </div>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Aceptar" BackColor="Aqua" OnClick="Button1_Click1" style="margin-left: 118px" />
        </p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </p>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" PostBackUrl="~/pagina1.aspx" Text="Ir a pagina 2" />
    </form>
</body>
</html>
