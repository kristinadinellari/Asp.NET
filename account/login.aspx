<%@ Page Title="Login" Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Default2" MasterPageFile="~/Master.master" %>

<asp:Content ContentPlaceHolderID="body" runat="server">
    <div class="container">
        <div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                Text="*" ErrorMessage="Emri duhet te plotesohet" ControlToValidate="emer"
                ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:Label ID="Label1" runat="server" Text="Emri"></asp:Label><br />
            <asp:TextBox ID="emer" runat="server"></asp:TextBox><br />
        </div>

        <div>
            <asp:Label ID="Label3" runat="server" Text="Fjalkalimi"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                Text="*" ErrorMessage="Fjalkalimi duhet te plotesohet" ControlToValidate="fjalkalimi"
                ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="fjalkalimi" runat="server" TextMode="Password" />
        </div>
        <asp:CheckBox ID="RememberMe" runat="server" Text="Me mbaj te loguar" />
        <asp:ValidationSummary ForeColor="Red" ID="ValidationSummary1" runat="server" />
        <asp:Button ID="login" runat="server" Text="login" OnClick="login_Click" />
        <div>
            <asp:Label runat="server" ID="label" Text="" ForeColor="Red"></asp:Label>
        </div>
        <div>
            Ne qofte se nuk jeni regjistruar ju lutem regjistrohuni ketu:
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/account/register.aspx">Regjistrohu</asp:HyperLink>
        </div>
    </div>

</asp:Content>

