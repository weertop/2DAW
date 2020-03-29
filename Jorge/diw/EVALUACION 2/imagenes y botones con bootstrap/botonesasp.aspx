<%@ Page Language="C#" AutoEventWireup="true" CodeFile="botonesasp.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Botones</title>

    <!-- Bootstrap -->
    <link href="../bootstrap-4.0.0-alpha.4/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Button" />
            <asp:Button ID="Button2" runat="server" CssClass="btn btn-secondary" Text="Button" />
            <asp:Button ID="Button3" runat="server" CssClass="btn btn-success" Text="Button" />
            <asp:Button ID="Button4" runat="server" CssClass="btn btn-info" Text="Button" />
            <asp:Button ID="Button5" runat="server" CssClass="btn btn-warning" Text="Button" />
            <asp:Button ID="Button6" runat="server" CssClass="btn btn-danger" Text="Button" />
        </div>
    </form>
</body>
</html>
