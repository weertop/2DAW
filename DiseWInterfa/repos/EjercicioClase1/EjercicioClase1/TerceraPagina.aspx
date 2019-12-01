<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TerceraPagina.aspx.cs" Inherits="TerceraPagina" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0" OnActiveViewChanged="MultiView1_ActiveViewChanged">
                <asp:View ID="View1" runat="server">
                    Estamos en la vista 1<br />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="siguiente pagina" />
                </asp:View>
                <br />
                <asp:View ID="View2" runat="server">
                    Estamos en la vista 2<br />
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="siguiente pagina" />
                </asp:View>
                <br />
                <asp:View ID="View3" runat="server">
                    Estamos en la vista 3<br />
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Volver al inicio" />
                </asp:View>
                <br />
                <br />
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
