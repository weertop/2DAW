<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
    <script language="javascript" type="text/javascript">
        window.onload = function () {
            document.getElementById("Button2").onclick = ver_texto;
            document.getElementById("TextBox1").onkeyup = function (elEvento) {
                var evento = window.event || elEvento;
                if (evento.keyCode == 13) { crearctexto();}

            }
        }
        function ver_texto() {
            alert("El contenido del textbox es:" + document.getElementById("TextBox1").value);
            var num = document.getElementById("TextBox1").value;
            for (var i = 1; i < num+1; i++) {
                alert("El contenido del textbox es:" + document.getElementById("txt"+i).value);
            }
        }
        function crearctexto() {
            var num = parseInt(document.getElementById("TextBox1").value);
            for (var i = 1; i < num + 1; i++) {
                var txt = document.createElement("input");
                document.body.appendChild(txt);
                txt.type = "text";
                txt.id = "txt" + i;  
            }
        }
        

    </script>

<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server">
            </asp:Panel>
            <asp:Panel ID="Panel2" runat="server">
            </asp:Panel>
        </div>
        <asp:Panel ID="Panel3" runat="server">
        </asp:Panel>
        <asp:Label ID="Label1" runat="server" Text="número de cajas de texto:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" ViewStateMode="Enabled" ></asp:TextBox>
    &nbsp;&nbsp;
        <input id="Button2" type="button" value="boton html" />&nbsp;&nbsp;&nbsp;
        
        <asp:Button ID="Button3" runat="server" OnClientClick="ver_texto()" Text="Button" />
        
        </form>
</body>
</html>
