<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login2.aspx.vb" Inherits="Login2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 243px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style1">Usuario:</td>
                    <td>
                        <asp:TextBox ID="usu" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">Contraseña:</td>
                    <td>
                        <asp:TextBox ID="pas" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style1">&nbsp;</td>
                    <td>
                        <asp:Button ID="botonAceptar" runat="server" Text="Aceptar" />
                        <asp:Label ID="lblError" runat="server" Text="Usuario ó contraseña invalida" Visible="False"></asp:Label>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=JANGEL-QA-LT\SQLEXPRESS;Initial Catalog=Login;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="consulta" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="usu" Name="usu" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="pas" Name="pas" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
