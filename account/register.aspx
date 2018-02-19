<%@ Page Title="Regjistrohuni" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="account_register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="Server">
    <div class="container">
        <div>
            <asp:Label ID="label" runat="server" Text=" "></asp:Label>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                Text="*" ErrorMessage="Emri duhet te plotesohet" ControlToValidate="emer"
                ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:Label ID="Label1" runat="server" Text="Emri"></asp:Label><br />
            <asp:TextBox ID="emer" runat="server"></asp:TextBox><br />
        </div>

        <div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                Text="*" ErrorMessage="Emaili duhet te plotesohet" ControlToValidate="email"
                ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator runat="server" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                ControlToValidate="email" ForeColor="Red" ErrorMessage="Email i pavlefshem" />
            <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label><br />
            <asp:TextBox ID="email" TextMode="Email" runat="server"></asp:TextBox><br />
        </div>

        <div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                Text="*" ErrorMessage="Fjalkalimi duhet te plotesohet" ControlToValidate="fjalkalimi"
                ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:Label ID="Label3" runat="server" Text="Fjalkalimi"></asp:Label><br />
            <asp:TextBox ID="fjalkalimi" runat="server" TextMode="Password"></asp:TextBox><br />
        </div>

        <div>
            <asp:CompareValidator ID="CompareValidator1"
                Text="*" runat="server" Operator="Equal" ControlToCompare="fjalkalimi"
                ErrorMessage="Passwordet duhet te perputhen" ControlToValidate="KonfPassword" ForeColor="Red"></asp:CompareValidator>
            <asp:Label ID="Label5" runat="server" Text="Fjalkalimi"></asp:Label><br />
            <asp:TextBox ID="KonfPassword" runat="server" TextMode="Password"></asp:TextBox><br />
        </div>

        <div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                Text="*" ErrorMessage="Datelindja duhet te plotesohet" ControlToValidate="datlindja"
                ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:Label ID="Label4" runat="server" Text="Datelindja"></asp:Label><br />
            <asp:TextBox ID="datlindja" runat="server" TextMode="Date" />
        </div>
        <asp:ValidationSummary ForeColor="Red" ID="ValidationSummary1" runat="server" />
        <asp:Button ID="register" runat="server" Text="Regjistrohu" OnClick="register_Click" />
        <asp:Label ID="Error" runat="server" Text="" />
        <div>
            Ne qofte se jeni loguar me pare ju lutemi kthehuni ketu:
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/account/login.aspx">Login</asp:HyperLink>
        </div>
    </div>

</asp:Content>

