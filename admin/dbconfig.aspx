<%@ Page Title="Produkte" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="dbconfig.aspx.cs" Inherits="Default2" %>

<asp:Content ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ContentPlaceHolderID="body" runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:barcafe_onlineConnectionString2 %>" DeleteCommand="DELETE FROM [Produkte] WHERE [Id_Produkti] = @Id_Produkti" InsertCommand="INSERT INTO [Produkte] ([Id_Produkti], [Titulli], [Autori], [URL_IMG], [kategoria], [Pershkrimi], [Renditja]) VALUES (@Id_Produkti, @Titulli, @Autori, @URL_IMG, @kategoria, @Pershkrimi, @Renditja)" SelectCommand="SELECT * FROM [Produkte] ORDER BY [Autori], [Id_Produkti], [Titulli]" UpdateCommand="UPDATE [Produkte] SET [Titulli] = @Titulli, [Autori] = @Autori, [URL_IMG] = @URL_IMG, [kategoria] = @kategoria, [Pershkrimi] = @Pershkrimi, [Renditja] = @Renditja WHERE [Id_Produkti] = @Id_Produkti">
        <DeleteParameters>
            <asp:Parameter Name="Id_Produkti" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id_Produkti" Type="String" />
            <asp:Parameter Name="Titulli" Type="String" />
            <asp:Parameter Name="Autori" Type="String" />
            <asp:Parameter Name="URL_IMG" Type="String" />
            <asp:Parameter Name="kategoria" Type="String" />
            <asp:Parameter Name="Pershkrimi" Type="String" />
            <asp:Parameter Name="Renditja" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Titulli" Type="String" />
            <asp:Parameter Name="Autori" Type="String" />
            <asp:Parameter Name="URL_IMG" Type="String" />
            <asp:Parameter Name="kategoria" Type="String" />
            <asp:Parameter Name="Pershkrimi" Type="String" />
            <asp:Parameter Name="Renditja" Type="Int32" />
            <asp:Parameter Name="Id_Produkti" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <div class="container">
        <asp:GridView Width="100%" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id_Produkti" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Id_Produkti" HeaderText="Id_Produkti" ReadOnly="True" SortExpression="Id_Produkti" />
                <asp:BoundField DataField="Titulli" HeaderText="Titulli" SortExpression="Titulli" />
                <asp:BoundField DataField="Autori" HeaderText="Autori" SortExpression="Autori" />
                <asp:BoundField DataField="URL_IMG" HeaderText="URL_IMG" SortExpression="URL_IMG" />
                <asp:BoundField DataField="kategoria" HeaderText="kategoria" SortExpression="kategoria" />
                <asp:BoundField DataField="Pershkrimi" HeaderText="Pershkrimi" SortExpression="Pershkrimi" />
                <asp:BoundField DataField="Renditja" HeaderText="Renditja" SortExpression="Renditja" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </div>
</asp:Content>
