<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pagina1.aspx.cs" Inherits="pagina1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="View1" runat="server">
                    <asp:Label ID="Label1" runat="server" Text="Nombre:"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 185px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="None" ErrorMessage="Nombre olbigatorio"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Correo electronico:"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 94px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" Display="None" ErrorMessage="correo erroneo" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Contraseña:"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 157px" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox3" Display="None" ErrorMessage="contraseña debe ser igual"></asp:CompareValidator>
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Repetir Contraseña:"></asp:Label>
                    <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 91px" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" Height="71px" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" Width="129px">
                        <asp:ListItem Value="M">Madrid</asp:ListItem>
                        <asp:ListItem Value="B">Buenos Aires</asp:ListItem>
                        <asp:ListItem Value="Be">Berlin</asp:ListItem>
                        <asp:ListItem Value="P">Paris</asp:ListItem>
                    </asp:ListBox>
                    <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>uno</asp:ListItem>
                        <asp:ListItem>dos</asp:ListItem>
                        <asp:ListItem>tres</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                        <asp:ListItem>soltero</asp:ListItem>
                        <asp:ListItem>viudo</asp:ListItem>
                        <asp:ListItem>casado</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Acepta las condiciones?" />
                    <br />
                    <br />
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                        <asp:ListItem>Baseball</asp:ListItem>
                        <asp:ListItem>tenis</asp:ListItem>
                        <asp:ListItem>baloncesto</asp:ListItem>
                        <asp:ListItem>natacion</asp:ListItem>
                        <asp:ListItem>volieboll</asp:ListItem>
                    </asp:CheckBoxList>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" BackColor="#99CCFF" Font-Size="Larger" OnClick="Button1_Click" style="margin-left: 183px; height: 53px;" Text="Siguiente" />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Label ID="Label11" runat="server"></asp:Label>
                </asp:View>
            </asp:MultiView>
            <br />
        </div>
    </form>
</body>
</html>
