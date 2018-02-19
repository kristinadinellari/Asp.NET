<%@ Page Title="Libra" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="libra.aspx.cs" Inherits="libra" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .row .float-left {
            float: left;
            margin-left: 10px;
            margin-right: 10px;
            padding: 5px;
            height: 500px;
            width: 33.33%;
        }
        .container .row {
            height: auto;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="Server">
    <div class="container">
        <asp:ListView ID="ListView1" runat="server" DataSourceID="BooksSource">
            <LayoutTemplate>
                <div runat="server" class="row">
                    <div runat="server" id="itemPlaceholder"></div>
                </div>
            </LayoutTemplate>
            <ItemTemplate>
                <div runat="server" class="testimonial-content float-left">
                    <asp:Image ID="Cover" CssClass="book-cover" runat="server" ImageUrl='<%#"~/img/" + Eval("URL_IMG") %>' AlternateText='<%#Eval("Titulli") %>' Width="300px" />
                    <div runat="server">
                        <asp:Label ID="Author" CssClass="book-author" runat="server" Text='<%#Eval("Autori") %>'></asp:Label>
                    </div>
                    <div runat="server">
                        <asp:Label ID="Title" CssClass="book-title" runat="server" Text='<%#Eval("Titulli") %>'></asp:Label>
                    </div>
                    <%--<div runat="server">
                        <asp:Label ID="Description" CssClass="book-desc" runat="server" Text='<%#Eval("Pershkrimi") %>'></asp:Label>
                    </div>--%>
                </div>
            </ItemTemplate>
        </asp:ListView>

        <asp:SqlDataSource ID="BooksSource" runat="server" ConnectionString="<%$ ConnectionStrings:barcafe_onlineConnectionString2 %>" SelectCommand="SELECT TOP(4) [Titulli], [Autori], [URL_IMG], [Pershkrimi], [Renditja] FROM [Produkte] ORDER BY ABS([Renditja]) DESC, [Titulli] ASC, [Autori] ASC"></asp:SqlDataSource>
    </div>
</asp:Content>

