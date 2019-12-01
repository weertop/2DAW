<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style5 {
            margin-left: 144px;
        }
        .auto-style6 {
            margin-left: 126px;
        }
        .auto-style7 {
            margin-left: 134px;
        }
        .auto-style9 {
            width: 468px;
        }
        .auto-style10 {
            width: 500px;
        }
        .auto-style11 {
            text-align: center;
        }
        .auto-style12 {
            width: 468px;
            text-align: center;
        }
        .auto-style13 {
            width: 500px;
            text-align: center;
        }
        .auto-style14 {
            font-size: large;
            color: #0066FF;
        }
        .auto-style15 {
            font-size: large;
            color: #3333FF;
        }
        .auto-style16 {
            font-size: large;
            color: #6666FF;
        }
        .auto-style17 {
            color: #FF6699;
            font-size: x-large;
            background-color: #FFCC99;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <div class="auto-style11">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Blog Literario"></asp:Label>
            </div>
            <div class="auto-style11">
                <strong>
                <asp:Menu ID="Menu1" runat="server" CssClass="auto-style17" Height="100px" OnMenuItemClick="Menu1_MenuItemClick" Orientation="Horizontal" RenderingMode="Table" Width="100%">
                    <Items>
                        <asp:MenuItem Text="comprar libro" Value="cl"></asp:MenuItem>
                        <asp:MenuItem Text="blog" Value="b"></asp:MenuItem>
                        <asp:MenuItem Text="¿Que es blog literario?" Value="que"></asp:MenuItem>
                    </Items>
                </asp:Menu>
                </strong>
            </div>
            <br />
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                    <asp:Menu ID="Menu2" runat="server" BackColor="#B5C7DE" DynamicHorizontalOffset="2" DynamicPopOutImageUrl="~/images/esparta.jpg" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" StaticSubMenuIndent="10px">
                        <DynamicHoverStyle BackColor="#284E98" ForeColor="White" />
                        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <DynamicMenuStyle BackColor="#B5C7DE" />
                        <DynamicSelectedStyle BackColor="#507CD1" />
                        <Items>
                            <asp:MenuItem Text="Generos" Value="Generos">
                                <asp:MenuItem NavigateUrl="https://www.milanuncios.com/libros/terror.htm" Text="Terror" Value="Terror"></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="https://www.iberlibro.com/collections/sc/ciencia-ficcion/o4GrsSf5N0BrDoiD4YRGI" Text="Ficcion" Value="Ficcion"></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="https://www.fnac.es/s725/Novela-historica-y-de-aventuras" Text="Aventura" Value="Aventura"></asp:MenuItem>
                            </asp:MenuItem>
                        </Items>
                        <StaticHoverStyle BackColor="#284E98" ForeColor="White" />
                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                        <StaticSelectedStyle BackColor="#507CD1" />
                    </asp:Menu>
                    <br />
                </asp:View>
                <br />
                <asp:View ID="View2" runat="server">
                    <br />
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style12"><strong>
                                <asp:Label ID="Label3" runat="server" CssClass="auto-style15" Text="El Mapa Del Fin Del Mundo"></asp:Label>
                                </strong></td>
                            <td class="auto-style13"><strong>
                                <asp:Label ID="Label4" runat="server" CssClass="auto-style14" Text="El Reino Imposible"></asp:Label>
                                </strong></td>
                            <td class="auto-style11"><strong>
                                <asp:Label ID="Label5" runat="server" CssClass="auto-style14" Text="Rebelion de Sangre"></asp:Label>
                                </strong></td>
                        </tr>
                        <tr>
                            <td class="auto-style9">
                                <asp:Image ID="Image1" runat="server" CssClass="auto-style7" Height="214px" ImageUrl="~/images/barco.jpg" Width="187px" />
                            </td>
                            <td class="auto-style10">
                                <asp:Image ID="Image2" runat="server" CssClass="auto-style5" Height="210px" ImageUrl="~/images/esparta.jpg" Width="224px" />
                            </td>
                            <td>
                                <asp:Image ID="Image3" runat="server" CssClass="auto-style6" Height="204px" ImageUrl="~/images/manzana.jpg" Width="225px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style9">
                                <asp:Label ID="Label2" runat="server" Text=" Embárcate en una de las mayores aventuras de la Historia de la humanidad: la primera vuelta al mundo de Juan Sebastián Elcano. En julio de 1526, Elcano se encuentra al borde la muerte. Está en medio del Pacífico, e intenta llegar a la Especiería por segunda vez. Al ver cerca el fin, decide redactar su testamento y dictar sus memorias. En ellas habla de su infancia ligada a la mar, sus amores y sus hijos, su hermosa nao que puso a las órdenes del Gran Capitán en Italia y de su traición a la Corona. Y de cómo en Sevilla... Ver más " Width="100%"></asp:Label>
                            </td>
                            <td class="auto-style10"><span class="js-ProductSummary-truncate is-truncated">Una apasionante novela sobre el fin del reino visigodo y los inicios de la conquista musulmana de la península ibérica. Yeyo Balbás nos regala una recreación magistral llena de épica y personajes extraordinarios. Ante un imperio con ansias de conquista y un reino envenenado de enemistades y traiciones, ha llegado el momento de empuñar las armas. 711 Anno Domini. Tras la muerte de Witiza, rey de los godos, y la minoría de edad de su heredero, Rodrigo, duque de la Bética, será el elegido para el trono. Deberá enfrentarse...</span></td>
                            <td>&quot;Poeta y narrador, Manuel Vilas nos entrega un texto didáctico y muy personal sobre la urbanidad. Una obra que viene a sumarse y a poner broche de oro a la larga tradición de libros sobre las buenas maneras.&quot; </td>
                        </tr>
                    </table>
                    <br />
                </asp:View>
                <br />
                <br />
                <asp:View ID="View3" runat="server">
                    Esta pagina esta dedicada a todos los que desean ver paginas incompletas y experimentar una falta completa de diseño para nuestros selectos usuarios.
                </asp:View>
                <br />
            </asp:MultiView>
            <br />
        </div>
    </form>
</body>
</html>
