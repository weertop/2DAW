<%@ Page Language="C#" AutoEventWireup="true"  EnableEventValidation="false" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; RESERVAS DEL LOCAL DE LA URBANIZACIÓN<asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
                    </asp:Timer>
                    FECHA:&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                    <br />
                    HORA:
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    <br />
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <asp:Menu ID="Menu1" runat="server" BackColor="#FFFBD6" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" Orientation="Horizontal" StaticSubMenuIndent="10px" OnMenuItemClick="Menu1_MenuItemClick">
            <DynamicHoverStyle BackColor="#990000" ForeColor="White" />
            <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <DynamicMenuStyle BackColor="#FFFBD6" />
            <DynamicSelectedStyle BackColor="#FFCC66" />
            <Items>
                <asp:MenuItem Text="RESERVAR" Value="RESERVAR"></asp:MenuItem>
                <asp:MenuItem Text="CANCELAR" Value="CANCELAR"></asp:MenuItem>
                <asp:MenuItem Text="MOSTRAR RESERVA" Value="MOSTRAR RESERVA"></asp:MenuItem>
            </Items>
            <StaticHoverStyle BackColor="#990000" ForeColor="White" />
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle BackColor="#FFCC66" />
        </asp:Menu>
        <br />
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">


            <asp:View ID="View1" runat="server">
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style2" colspan="3">RESERVAR</td>
                    </tr>
                    <tr>
                        <td>CALENDARIO</td>
                        <td>NOMBRE Y APELLIDOS:</td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ListBox1" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                <ContentTemplate>
                                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </td>
                        <td class="auto-style3">PISO:<br />
                            <br />
                            <br />
                            TELÉFONO:</td>
                        <td>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                            <br />
                            <br />
                            <br />
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style2">
                            <asp:Button ID="Button1" runat="server" Text="CONFIRMAR" OnClick="Button1_Click" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
                <br />
            </asp:View>
             <asp:View ID="View2" runat="server">
                  <table class="auto-style1">
                      <tr>
                          <td class="auto-style2" colspan="3">CANCELAR RESERVA</td>
                      </tr>
                      <tr>
                          <td>PISO:</td>
                          <td>
                              <asp:TextBox ID="TextBox4" runat="server" AutoPostBack="True" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
                          </td>
                          <td>&nbsp;</td>
                      </tr>
                      <tr>
                          <td>
                              <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
                          </td>
                          <td>
                              <asp:Button ID="Button2" runat="server" Text="CANCELAR RESERVA" OnClick="Button2_Click" />
                          </td>
                          <td>&nbsp;</td>
                      </tr>
                  </table>
                  <br />
                <br />
                <br />
                <br />
            </asp:View>
             <br />
                <asp:View ID="View3" runat="server">
                    <br />
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style2" colspan="3">MOSTRAR RESERVAS</td>
                        </tr>
                        <tr>
                            <td>PISO:</td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server" AutoPostBack="True" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                <asp:Label ID="Label3" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    <br />
            </asp:View>
                <br />
                <br />
                <br />
        </asp:MultiView>
    </form>
    <p>
    </p>
    <p>
        &nbsp;</p>
</body>
</html>
