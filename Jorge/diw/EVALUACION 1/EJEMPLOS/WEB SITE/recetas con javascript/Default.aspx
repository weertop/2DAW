<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <script language="javascript" type="text/javascript">
        var recetas =[]
        
        window.onload = function () {
           
           document.getElementById("TextBox2").onkeypress = function (elEvento) {
               var evento = window.event || elEvento;
               
               if (evento.keyCode == 13) {
                  evento.preventDefault();                   
                    crearctexto();
                }
                
            }
            document.getElementById("BtnGuardar").onclick = guardar;
        }
        function guardar() {
           
            recetas.push(document.getElementById("TextBox1").value);
            document.getElementById("HiddenField2").value = (document.getElementById("TextBox1").value);

           
            var radios = document.getElementsByName("dificultad");
            for (i = 0; i < radios.length; i++) {
                if (radios[i].checked) {
                    recetas.push(radios[i].value);
                    break;
                }
            } 
           
            recetas.push(document.getElementById("TextBox3").value);
           
            recetas.push(document.getElementById("TextBox4").value);
           
            recetas.push(document.getElementById("TextBox2").value);
           
            var num = document.getElementById("TextBox2").value;
           
            for (var i = 1; i < num + 1; i++) {
              
                recetas.push(document.getElementById("txt" + i.toString()).value);
                document.getElementById("HiddenField1").value = recetas.join("*");
               
            }
            
           
           
        }
       function crearctexto() {
            
            var num = parseInt(document.getElementById("TextBox2").value);
            for (var i = 1; i < num + 1; i++) {
                 var txt = document.createElement("input");
                Panel1.appendChild(txt);
                txt.type = "text";
                txt.id = "txt" + i.toString();
               
            }
        }
        

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" OnMenuItemClick="Menu1_MenuItemClick">
            <Items>
                <asp:MenuItem Text="Añadir receta" Value="Añadir receta"></asp:MenuItem>
                <asp:MenuItem Text="Consultar receta" Value="Consultar receta"></asp:MenuItem>
            </Items>
        </asp:Menu>
    
    </div>
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                TÍTULO RECETA:&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                DIFICULTAD:
                <br />
                <input id="Radio1" type="radio" name="dificultad" value="facil" />facil
                &nbsp;<br />
                <input id="Radio2" type="radio" name="dificultad" value="media" />media
                <br />
                <input id="Radio3" type="radio" name="dificultad" value="dificil" />dificil
                <br />
                <br />
                TIEMPO EMPLEADO:
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br />
                <br />
                INGREDIENTES:
                <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                <br />
                <br />
                <asp:Panel ID="Panel1" runat="server" Height="16px" Width="1484px">
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </asp:Panel>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                ELABORACIÓN:
                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
                <br />
                
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:Button ID="Button1" runat="server" OnClientClick="guardar();" Text="Guardar" OnClick="Button1_Click" />

                <asp:HiddenField ID="HiddenField1" runat="server" OnValueChanged="HiddenField1_ValueChanged" />

                <asp:HiddenField ID="HiddenField2" runat="server" OnValueChanged="HiddenField2_ValueChanged" />

            </asp:View>
            <asp:View ID="View2" runat="server">
                RECETAS:<br />
                <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"></asp:ListBox>
                <br />
                <br />
                DIFICULTASD:&nbsp;
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <br />
                <br />
                TIEMPO EMPLEADO:
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <br />
                <br />
                INGREDIENTES:
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                <br />
                <br />
                ELABORACIÓN:
                <asp:TextBox ID="TextBox8" runat="server" TextMode="MultiLine"></asp:TextBox>
                <br />
                <br />
                <br />
                <br />
                <br />
            </asp:View>
        </asp:MultiView>
    </form>
</body>
</html>
