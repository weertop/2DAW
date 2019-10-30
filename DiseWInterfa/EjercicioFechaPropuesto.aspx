<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EjercicioFechaPropuesto.aspx.cs" Inherits="EjercicioFechaPropuesto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Fecha:"></asp:Label>
            <asp:Label ID="Label4" runat="server"></asp:Label>
            <br />
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
                    </asp:Timer>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Hora:"></asp:Label>
                    <asp:Label ID="Label3" runat="server"></asp:Label>
<br />
                </ContentTemplate>
            </asp:UpdatePanel>
            <br />
            <div class="auto-style1">
                <asp:Menu ID="Menu1" runat="server" BorderStyle="Double" Orientation="Horizontal" RenderingMode="Table" Width="1501px" OnMenuItemClick="Menu1_MenuItemClick">
                    <Items>
                        <asp:MenuItem Text="Reservar" Value="r"></asp:MenuItem>
                        <asp:MenuItem Text="Cancelar Reserva" Value="cr"></asp:MenuItem>
                        <asp:MenuItem Text="Mostrar Reserva" Value="mr"></asp:MenuItem>
                    </Items>
                </asp:Menu>
            </div>
            <br />
           
                <ContentTemplate>
                    <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="-1">
                        <asp:View ID="View1" runat="server">
                            <br />
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                <ContentTemplate>
                                    <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                                    <asp:Label ID="Label12" runat="server"></asp:Label>
                                    <br />
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <asp:Label ID="Label5" runat="server" Text="Nombre y Apellido:"></asp:Label>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label6" runat="server" Text="Piso:"></asp:Label>
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label7" runat="server" Text="Telefono:"></asp:Label>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            <br />
                            <asp:HiddenField ID="HiddenField1" runat="server" />
                            <br />
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Confirmar" />
                        </asp:View>
                        <asp:View ID="View2" runat="server">
                            <br />
                            <asp:Label ID="Label8" runat="server" Text="Piso:"></asp:Label>
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            <br />
                            <asp:ListBox ID="ListBox1" runat="server" Width="246px"></asp:ListBox>
                            <br />
                            <br />
                            <asp:Button ID="Button2" runat="server" Text="Cancelar" />
                            <br />
                        </asp:View>
                        <asp:View ID="View3" runat="server">
                            <br />
                            <asp:Label ID="Label9" runat="server" Text="Piso:"></asp:Label>
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                            <br />
                            <asp:ListBox ID="ListBox2" runat="server" OnSelectedIndexChanged="ListBox2_SelectedIndexChanged" Width="253px"></asp:ListBox>
                            <br />
                            <asp:Label ID="Label10" runat="server" Text="Datos:"></asp:Label>
                            <asp:Label ID="Label11" runat="server"></asp:Label>
                            <br />
                            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Button" />
                            <br />
                        </asp:View>
                    </asp:MultiView>
                    <br />
                </ContentTemplate>
        
            <br />
            <br />
        </div>
    </form>
</body>
</html>
