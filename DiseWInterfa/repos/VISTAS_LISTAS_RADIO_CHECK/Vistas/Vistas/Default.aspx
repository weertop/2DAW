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
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="View1" runat="server">
                    ESTAMOS EN LA VISTA 1<br />
                    <br />
                    <br />
                    <asp:ListBox ID="ListBox1" runat="server" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged">
                        <asp:ListItem Value="M">MADRID</asp:ListItem>
                        <asp:ListItem Value="B">BARCELONA</asp:ListItem>
                        <asp:ListItem Value="S">SEVILLA</asp:ListItem>
                        <asp:ListItem Value="B">BILBAO</asp:ListItem>
                    </asp:ListBox>
                    &nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>UNO</asp:ListItem>
                        <asp:ListItem>DOS</asp:ListItem>
                        <asp:ListItem>TRES</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem>SOLTERO/A</asp:ListItem>
                        <asp:ListItem>CASADO/A</asp:ListItem>
                        <asp:ListItem>DIVORCIADO/A</asp:ListItem>
                        <asp:ListItem>VIUDO/VIUDA</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                        <asp:ListItem>FUTBOL</asp:ListItem>
                        <asp:ListItem>TENIS</asp:ListItem>
                        <asp:ListItem>BALONCESTO</asp:ListItem>
                        <asp:ListItem>NATACIÓN</asp:ListItem>
                    </asp:CheckBoxList>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Acepta condidiones" />
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                    <br />
                </asp:View>
                <br />
                <br />
                <asp:View ID="View2" runat="server">
                    ESTAMOS EN LA VISTA 2<br />
                    CIUDAD:
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    VALOR CIUDAD:
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    INDICE DEL ELEMENTO SELECCIONADO:
                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    CONTENIDO DROP DOWNLIST:&nbsp;
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    CONTENIDO RADIO BUTTON LIST:
                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    ACEPTA CONDICIONES?:
                    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    DEPORTES:&nbsp;&nbsp;
                    <asp:Label ID="Label7" runat="server"></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
                </asp:View>
                <br />
                <br />
                <asp:View ID="View3" runat="server">
                    ESTAMOS EN LA VISTA 3<br />
                    <br />
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Button" />
                </asp:View>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />


            </asp:MultiView>
        </div>
    </form>
</body>
</html>
