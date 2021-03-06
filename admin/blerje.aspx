﻿<%@ Page Title="Blerje" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="blerje.aspx.cs" Inherits="admin_blerje" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <div class="container">
        <asp:GridView Width="100%" ID="BlerjeGrid" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_Produkti,Id_User" AutoGenerateDeleteButton="True" DataSourceID="BlerjeDS" AllowPaging="true" AllowSorting="true" PageSize="20">
            <Columns>
                <asp:BoundField DataField="Id_Produkti" HeaderText="Id_Produkti" ReadOnly="True" SortExpression="Id_Produkti" />
                <asp:BoundField DataField="Titulli" HeaderText="Titulli" SortExpression="Titulli" />
                <asp:BoundField DataField="Autori" HeaderText="Autori" SortExpression="Autori" />
                <asp:BoundField DataField="Id_User" HeaderText="Id_User" InsertVisible="False" ReadOnly="True" SortExpression="Id_User" />
                <asp:BoundField DataField="Emri" HeaderText="Emri" SortExpression="Emri" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <%--<asp:BoundField DataField="Id_Produkti1" HeaderText="Id_Produkti1" SortExpression="Id_Produkti1" />
                <asp:BoundField DataField="Id_User1" HeaderText="Id_User1" SortExpression="Id_User1" />--%>
            </Columns>
        </asp:GridView>
    </div>
    <asp:SqlDataSource ID="BlerjeDS" runat="server"
        ConnectionString="<%$ ConnectionStrings:barcafe_onlineConnectionString2 %>" 
        OldValuesParameterFormatString="original_{0}"
        SelectCommand="SELECT DISTINCT Produkte.Id_Produkti, Produkte.Titulli, Produkte.Autori, Perdorues.Id_User, Perdorues.Emri, Perdorues.Email, Produkte_Perdorues.Id_Produkti, Produkte_Perdorues.Id_User
            FROM Produkte_Perdorues
            INNER JOIN Produkte ON Produkte_Perdorues.Id_Produkti = Produkte.Id_Produkti
            INNER JOIN Perdorues ON Produkte_Perdorues.Id_User = Perdorues.Id_User
            ORDER BY Perdorues.Emri ASC, Produkte.Titulli ASC, Produkte.Autori ASC, Produkte.Id_Produkti"
        DeleteCommand="DELETE FROM Produkte_Perdorues WHERE Id_Produkti = @original_Id_Produkti AND Id_User = @original_Id_User">
        <DeleteParameters>
            <asp:Parameter Name="original_Id_Produkti" Type="String" />
            <asp:Parameter Name="original_Id_User" Type="Int32" />
        </DeleteParameters>
    </asp:SqlDataSource>
</asp:Content>

