<%@ Page Title="" Language="C#" MasterPageFile="~/MainSite.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="PruebaWeb22.Web.WebForm1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style3 {
            width: 29px;
        }
        .auto-style5 {
            width: 500px;
        }
        .auto-style6 {
            width: 170px;
        }
        .auto-style8 {
            width: 350px;
        }
        .auto-style9 {
            width: 467px;
            height: 27px;
        }
        .auto-style10 {
            width: 350px;
            height: 27px;
        }
        .auto-style11 {
            width: 229px;
        }
        .auto-style13 {
            width: 297px;
        }
        </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <table class="auto-style5">
        <tr>
            <div class="auto-style14">
                <div class="auto-style13">
                    <td class="auto-style6">Apellido:
                    </td>
                    <td class="auto-style8">
                        <input type="text" class="form-control"style="width: 350px" required="required" /></td>
                    <td class="auto-style11">Nombre:
                    </td>
                    <td class="auto-style8">
                        <input type="text" class="form-control" style="width: 350px" required="required" />
                    </td>
        </tr>
        <tr>
            <td class="auto-style6">Telefono:
            </td>
            <td class="auto-style8">
                <input type="tel" class="form-control" style="width: 170px" />
            </td>
            <td class="auto-style11">Mail:
            </td>
            <td class="auto-style8">
                <input type="text" class="form-control" style="width: 350px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Direccion:
            </td>
            <td class="auto-style8">
                <input type="text" class="form-control" style="width: 300px" /></td>
            <td class="auto-style11">Trabajo Habitual:
            </td>
            <td class="auto-style9">
                <input type="text" class="form-control" style="width: 350px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Comentarios:
            </td>
            <td class="auto-style8">
                <input type="text" class="form-control" style="width: 350px" />
            </td>
            <td class="auto-style11">Cuit:
            </td>
            <td class="auto-style10">
                <input type="text" class="form-control" style="width: 170px" />
            </td>
        </tr>
        <tr style="width: 200px">
            <td colspan="4" style="text-align: center; padding-top: 45px">
                <button id="BotonAgregar" type="button" class="btn btn-sm btn-primary " title="Pulsa para agregar cliente">
                    Agregar
                </button>
            </td>
        </tr>
        <tr style="width: 200px">
            <td colspan="4" style="text-align: center; padding-top: 45px">&nbsp;</td>
            </div>
            </div>
        </tr>

    </table>
</asp:Content>
