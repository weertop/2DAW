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
    
        <asp:Menu ID="Menu1" runat="server" OnMenuItemClick="Menu1_MenuItemClick" Orientation="Horizontal" Height="50px" RenderingMode="Table" Width="1000px">
            <Items>
                <asp:MenuItem Text="INTRODUCIR_ DATOS" Value="INTRODUCIR_ DATOS" ToolTip="Tienes que introducir los datos"></asp:MenuItem>
                <asp:MenuItem Text="MOSTRAR_ INFORMACIÓN" Value="MOSTRAR_ INFORMACIÓN"></asp:MenuItem>
                <asp:MenuItem Text="ELEGIR_ FECHA" Value="ELEGIR_ FECHA"></asp:MenuItem>
            </Items>
        </asp:Menu>
    
    </div>
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                <asp:Label ID="Label1" runat="server" Text="INTRODUCIMOS DATOS"></asp:Label>
                <br />
                <br />
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </asp:View>
            <br />
            <br />
            <asp:View ID="View2" runat="server">
                <asp:Label ID="Label2" runat="server" Text="ELEGIMOS FECHA"></asp:Label>
            </asp:View>
            <br />
            <br />
            <asp:View ID="View3" runat="server">
                <asp:Label ID="Label3" runat="server" Text="MOSTRAMOS INFORMACIÓN"></asp:Label>
            </asp:View>
            <br />
            <br />
        </asp:MultiView>
    </form>
</body>
</html>
