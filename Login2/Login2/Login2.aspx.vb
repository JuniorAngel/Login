Imports System.Data
Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub botonAceptar_Click(sender As Object, e As EventArgs) Handles botonAceptar.Click
        Dim numero As Integer
        Dim dvSql As DataView = DirectCast(SqlDataSource1.Select(DataSourceSelectArguments.Empty), DataView)
        If dvSql.Count > 0 Then
            numero = 1

        Else
            lblError.Visible = True
        End If
        If numero = 1 Then
            Session("usuario") = dvSql(0).Item(0)
            Response.Redirect("PaginaAcceso.aspx")

        Else
            lblError.Visible = True



        End If
    End Sub
End Class