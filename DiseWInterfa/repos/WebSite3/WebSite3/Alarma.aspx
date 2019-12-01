<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Alarma.aspx.cs" Inherits="Alarma" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 190px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
                    </asp:Timer>
                    <br />
                    <asp:Label ID="Label1" runat="server" Text="HORA:"></asp:Label>
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                    <br />
                </ContentTemplate>
            </asp:UpdatePanel>
            <asp:Label ID="Label2" runat="server" Text="ALARMA:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Width="132px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="La hora de la alarma es: "></asp:Label>
            <asp:Label ID="Label4" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Activar" Width="79px" />
            <asp:Button ID="Button2" runat="server" CssClass="auto-style1" Text="Parar" Width="80px" OnClick="Button2_Click" />
        </div>
    </form>
</body>
</html>
