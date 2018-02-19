<%@ Page Title="Na Kontaktoni" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="kontakt.aspx.cs" Inherits="kontakt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="Server">
    <div>
        <!-- Start Contact Area -->
        <section id="contact-area" class="contact-section">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 text-center inner">
                        <div class="contact-content">
                            <h1>Kontakt</h1>
                            <div class="row">
                                <div class="col-sm-12">
                                    <p>
                                        Nqs keni ndonje paqartesi apo problem te hasur ne faqe ju lutemi te mos hezitoni duke na shkruar.<br />
                                        Mirepresim cdo sugjerim apo kerkese tuajen.<br />
                                        Ju faleminderit.
                                    </p>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">

                        <div class="col-sm-6 contact-form-left">
                            <div class="form-group">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                    Text="*" ErrorMessage="Emri duhet te plotesohet" ControlToValidate="emer"
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="emer" runat="server" CssClass="form-control" placeholder="Emri"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                    Text="*" ErrorMessage="Emaili duhet te plotesohet" ControlToValidate="mail"
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator runat="server" Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                    ControlToValidate="mail" ForeColor="red" ErrorMessage="Email i pavlefshem" />
                                <asp:TextBox ID="mail" runat="server" CssClass="form-control" placeholder="Emaili"> </asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                    Text="*" ErrorMessage="Subjekti duhet te plotesohet" ControlToValidate="subject"
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="subject" runat="server" CssClass="form-control" placeholder="Subjekti"> </asp:TextBox>

                            </div>
                        </div>
                        <div class="col-sm-6 contact-form-right">
                            <div class="form-group">
                                <textarea name="message" rows="6" class="form-control" id="comment" placeholder="Shkruani mesazhin tuaj ketu..."></textarea>
                                <asp:ValidationSummary ForeColor="Red" ID="ValidationSummary1" runat="server" />
                                <asp:Button ID="dergo" runat="server" Text="Dergo" CssClass="btn btn-default" />

                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </section>
        <!-- End Contact Area -->
    </div>
</asp:Content>

