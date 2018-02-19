<%@ Page Title="Profili" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="account_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .block-link {
            display: block;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="Server">
    <asp:ScriptManagerProxy ID="Proxy" runat="server"></asp:ScriptManagerProxy>
    <div class="container">
        <div>
            <h1>Mire se erdhet
                <asp:Label ID="Username" runat="server" />
                :)</h1>
            <h1>Me poshte gjendet lista e produkteve e disponueshme per tu blere:</h1>
        </div>
        <asp:DropDownList ID="Produkte" runat="server" DataSourceID="SqlDataSource1" DataTextField="Titulli" DataValueField="Id_Produkti">
        </asp:DropDownList>
        <asp:Button ID="porosit" runat="server" Text="Porosit" OnClick="porosit_Click" UseSubmitBehavior="true" />
        <div runat="server">
            <asp:Literal ID="Shitjet" runat="server" />
        </div>
        <asp:HyperLink ID="AdminLink" runat="server" Visible="false" Text="One bit to rule them all" NavigateUrl="~/admin/dbconfig.aspx" CssClass="block-link" />
        <asp:Label ID="debug" runat="server" />
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:barcafe_onlineConnectionString2 %>" SelectCommand="SELECT [Titulli],[Id_Produkti] FROM [Produkte] ORDER BY ABS(Renditja) DESC, Titulli ASC, Autori ASC"></asp:SqlDataSource>
</asp:Content>

