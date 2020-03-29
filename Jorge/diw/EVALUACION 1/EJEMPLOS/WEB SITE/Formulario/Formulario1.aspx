<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Formulario1.aspx.cs" Inherits="Formulario1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Nombre:"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 33px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Edad:"></asp:Label>
        <br />
        <asp:ListBox ID="ListBox1" runat="server" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged">
            <asp:ListItem>0</asp:ListItem>
            <asp:ListItem>1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            <asp:ListItem>4</asp:ListItem>
            <asp:ListItem>5</asp:ListItem>
            <asp:ListItem>6</asp:ListItem>
            <asp:ListItem>7</asp:ListItem>
            <asp:ListItem>8</asp:ListItem>
            <asp:ListItem>9</asp:ListItem>
            <asp:ListItem>10</asp:ListItem>
            <asp:ListItem>11</asp:ListItem>
            <asp:ListItem>12</asp:ListItem>
            <asp:ListItem>13</asp:ListItem>
            <asp:ListItem>14</asp:ListItem>
            <asp:ListItem>15</asp:ListItem>
        </asp:ListBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ListBox1" ErrorMessage="Es obligatorio poner la edad"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Teléfono:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="DNI:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Estado civil:"></asp:Label>
        <asp:RadioButtonList ID="rbec" runat="server" OnSelectedIndexChanged="rbec_SelectedIndexChanged">
            <asp:ListItem Value="s">Soltero/a</asp:ListItem>
            <asp:ListItem Value="c">Casado/a</asp:ListItem>
            <asp:ListItem Value="v">Viudo/a</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="Dirección:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Label ID="Label7" runat="server" Text="Provincia:"></asp:Label>
        <br />
        <asp:ListBox ID="lbprovincia" runat="server" OnSelectedIndexChanged="lbprovincia_SelectedIndexChanged">
            <asp:ListItem>Madrid</asp:ListItem>
            <asp:ListItem>Cuenca</asp:ListItem>
            <asp:ListItem>Guadalajara</asp:ListItem>
            <asp:ListItem>Avila</asp:ListItem>
            <asp:ListItem>Toledo</asp:ListItem>
            <asp:ListItem>Ciudad Real</asp:ListItem>
            <asp:ListItem>Cáceres</asp:ListItem>
        </asp:ListBox>
        <br />
        <br />
        <asp:CheckBox ID="ckbacepto" runat="server" Text="Acepto condiciones" OnCheckedChanged="ckbacepto_CheckedChanged" />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Continuar" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Ver en otra pagina" OnClick="Button2_Click" />
        <br />
        <br />
        <br />
        <br />
        <asp:Label ID="lblnombre" runat="server" Text="Nombre"></asp:Label>
        <br />
        <br />
        <asp:Label ID="lbledad" runat="server" Text="Edad"></asp:Label>
        <br />
        <br />
        <asp:Label ID="lblec" runat="server" Text="Estado Civil"></asp:Label>
        <br />
        <br />
        <asp:Label ID="lblprovincia" runat="server" Text="Provincia"></asp:Label>
        <br />
        <br />
        <asp:Label ID="lblacepta" runat="server" Text="Acepta"></asp:Label>
        <br />
    
    </div>
    </form>
</body>
</html>
