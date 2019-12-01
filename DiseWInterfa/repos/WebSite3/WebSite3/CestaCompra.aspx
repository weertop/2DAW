<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CestaCompra.aspx.cs" Inherits="CestaCompra" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            text-align: right;
        }
        .auto-style3 {
            width: 100%;
            border-style: solid;
            border-width: 1px;
            background-color: #FFCC99;
        }
        .auto-style4 {
            width: 835px;
        }
        .auto-style5 {
            width: 1383px;
            text-align: center;
        }
        .auto-style6 {
            width: 100%;
            border-style: solid;
            border-width: 1px;
            background-color: #C0C0C0;
        }
        .auto-style7 {
            width: 1010px;
        }
        .auto-style9 {
            width: 100%;
            background-color: #FFFFCC;
        }
        .auto-style10 {
            width: 1017px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <div class="auto-style1">
                <br />
                <h1><strong>Tienda Queso Badass</strong></h1>
            </div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Timer ID="Timer1" runat="server">
                    </asp:Timer>
                    <div class="auto-style2">
                        <strong>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                        <asp:Label ID="Label2" runat="server"></asp:Label>
                        </strong>
                        <br />
                        <br />
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>
            <br />
            <div class="auto-style5">
            <asp:Menu ID="Menu1" runat="server" OnMenuItemClick="Menu1_MenuItemClick" Orientation="Horizontal" RenderingMode="Table" Height="16px" Width="1376px">
                <Items>
                    <asp:MenuItem Text="Añadir a la cesta" Value="a"></asp:MenuItem>
                    <asp:MenuItem Text="Eliminar de Cesta" Value="e"></asp:MenuItem>
                    <asp:MenuItem Text="Comprar de Cesta" Value="c"></asp:MenuItem>
                </Items>
            </asp:Menu>
            </div>
            <br />
            <br />
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                    <table align="center" class="auto-style3">
                        <tr>
                            <td class="auto-style4">
                                
                                <h2>Cheddar</h2>
                                
                            </td>
                            <td>
                               
                                <h2>Gouda</h2>
                               
                            </td>
                            <td>
                                
                                <h2>Mozarella</h2>
                                
                            </td>
                            <td>
                                
                                <h2>Emmental</h2>
                                
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/cheddar.JPG" Width="400px" />
                            </td>
                            <td>
                                <asp:Image ID="Image2" runat="server" ImageUrl="~/images/gouda.jpg" Width="400px" />
                            </td>
                            <td>
                                <asp:Image ID="Image3" runat="server" ImageUrl="~/images/mozarella.jpg" Width="400px" />
                            </td>
                            <td>
                                <asp:Image ID="Image4" runat="server" ImageUrl="~/images/emmental.JPG" Width="400px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style4">
                                <asp:CheckBox ID="CheckBox1" runat="server" Text="Seleccionar" />
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox2" runat="server" Text="Seleccionar" />
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox3" runat="server" Text="Seleccionar" />
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox4" runat="server" Text="Seleccionar" />
                            </td>
                        </tr>
                    </table>
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Añadir a la cesta" OnClick="Button1_Click" />
                    <br />
                    <br />
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <br />
                    <table align="center" class="auto-style6">
                        <tr>
                            <td class="auto-style7">
                                <asp:Image ID="Image5" runat="server" />
                            </td>
                            <td>
                                <asp:CheckBoxList ID="CheckBoxList1" runat="server" >
                                </asp:CheckBoxList>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Image ID="Image6" runat="server" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Image ID="Image7" runat="server" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                <asp:Image ID="Image8" runat="server" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Eliminar" />
                    <br />
                    <br />
                </asp:View>
                <asp:View ID="View3" runat="server">
                    <br />
                    <table align="center" class="auto-style9">
                        <tr>
                            <td class="auto-style10">
                                <asp:Image ID="Image9" runat="server" />
                            </td>
                            <td>
                                <asp:CheckBoxList ID="CheckBoxList2" runat="server" >
                                </asp:CheckBoxList>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style10">
                                <asp:Image ID="Image10" runat="server" Height="16px" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style10">
                                <asp:Image ID="Image11" runat="server" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style10">
                                <asp:Image ID="Image12" runat="server" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Total: "></asp:Label>
                    <asp:Label ID="Label3" runat="server"></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Comprar" />
                    <br />
                    <br />
                </asp:View>
            </asp:MultiView>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
