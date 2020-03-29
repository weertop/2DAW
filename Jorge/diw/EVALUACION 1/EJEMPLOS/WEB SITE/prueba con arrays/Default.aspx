<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Nombre:  "></asp:Label>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="GUARDAR" />
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="MOSTRAR array" />
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="MOSTRAR arrayList" />
    
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="MOSTRAR list" />
    
        <br />
        <br />
        <br />
        <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Página2" />
    
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
