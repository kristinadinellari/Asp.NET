<%@ Page Title="Kategori" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="kategori.aspx.cs" Inherits="kategori" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .feature-content {
            height: 700px;
        }
        .about-section {
            padding-top: 10px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="Server">

    <!-- Start Feature Area -->
    <section id="feature-area" class="about-section">
        <div class="container">
            <div class="row text-center inner">
                <div class="col-sm-4">
                    <div class="feature-content">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/img/douglas-adams-the-hitchhikers-guide-to-the-galaxy.jpg" AlternateText="imazh" Width="300px" /><br />
                        <asp:Label ID="Label1" runat="server" Font-Bold="true" Font-Size="Larger" ForeColor="Green" Text="Fantazi"></asp:Label><br />
                        <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Eshte nje zhaner shume i pelqyer nga te gjitha moshat. Romanet e ketij zhaneri jane te pelqyer ne cdo periudhe te vitit. Ky lloj i jep mundesine lexuesit te shkeputet nga realiteti dhe te harroje cdo gje qe e rrethon dhe te perfshihet ne nje bote krej imagjinare ku fantazia nuk ka limit."></asp:Label>
                        <br /><asp:Button ID="Butoni" runat="server" OnClick="Butoni_Click" ForeColor="Green" Text="Shikoni Detajet"></asp:Button>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="feature-content">
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/img/miguel-de-cervantes-don-quixote.jpg" AlternateText="imazh" Width="300px" /><br />
                        <asp:Label ID="Label4" runat="server" ForeColor="Blue" Text="Komedi"></asp:Label><br />
                        <asp:Label ID="Label5" runat="server" Text="Nje zhaner mjaft i preferuar nga lexuesit gjate diteve te qeta e larg ambjenteve te zhurmshme. Nje liber i cili eshte shume i mire ne permiresimin e humorit te cdo personi qe e lexon."></asp:Label>
                        <br /><asp:Button ID="Butoni3" runat="server" OnClick="Butoni3_Click" ForeColor="Orange" Text="Shikoni Detajet"></asp:Button>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="feature-content">
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/img/j-k-rowling-harry-potter-and-the-sorcerers-stone.jpg" AlternateText="imazh" Width="300px" /><br />
                        <asp:Label ID="Label6" runat="server" Font-Bold="true" ForeColor="Red" Text="Aventure"></asp:Label><br />
                        <asp:Label ID="Label7" runat="server" Font-Size="Medium" Text="Cdo dite kalojme nga pak aventure. Por kur ato i lexon ne nje roman duket se ato qe ke kaluar nuk kane qene thjesht caste kalimtare, por kujtime qe lene gjurme gjate."></asp:Label>
                        <br /><asp:Button ID="Butoni2" runat="server" OnClick="Butoni2_Click" ForeColor="Red" Text="Shikoni Detajet"></asp:Button>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="feature-content">
                        <asp:Image ID="Image4" runat="server" ImageUrl="~/img/j-r-r-tolkien-the-fellowship-of-the-ring.jpg" AlternateText="imazh" Width="300px" /><br />
                        <asp:Label ID="Label8" runat="server" Font-Bold="true" Font-Size="X-Large" ForeColor="Red" Text="Science fiction"></asp:Label><br />
                        <asp:Label ID="Label9" runat="server" Text="Science fiction eshte  veshtire per tu percaktuar pasi ajo pershkruan nje game te gjere te gjinive dhe temave. Autori Damon Knight permblodhi veshtiresite, duke thene: Science fiction eshte ajo qe ne tregome per kur themi se. Ndersa dikush tjeter ka thene: Ju nuk e dini se kush eshte, por do ta njihni kur ta shihni."></asp:Label>
                        <br /><asp:Button ID="Butoni9" runat="server" OnClick="Butoni9_Click" ForeColor="Red" Text="Shikoni Detajet"></asp:Button>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="feature-content">
                        <asp:Image ID="Image5" runat="server" ImageUrl="~/img/index.jpg" AlternateText="imazh" Width="300px" /><br />
                        <asp:Label ID="Label10" runat="server" Font-Bold="true" Font-Size="X-Large" ForeColor="Red" Text="Politike"></asp:Label><br />
                        <asp:Label ID="Label11" runat="server" Text="Nje zhaner i levruar se fundmi. I cili jep nje paraqitje te situates politike. shpesh situata te periudhave te ndryshme i pershtaten mjaft mire aktualiteti dhe personazheve aktuale."></asp:Label>

                        <br /><asp:Button ID="Butoni4" runat="server" OnClick="Butoni4_Click" ForeColor="Red" Text="Shikoni Detajet"></asp:Button>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="feature-content">
                        <asp:Image ID="Image6" runat="server" ImageUrl="~/img/sun-tzu-the-art-of-war.jpg" AlternateText="imazh" Width="300px" /><br />
                        <asp:Label ID="Label12" runat="server" Font-Bold="true" Font-Size="X-Large" ForeColor="Red" Text="Lufte"> </asp:Label><br />
                        <asp:Label ID="Label13" runat="server" Font-Size="Medium" Text="Ky zhaner gjithmone ka zgjuar kureshtjen e lexuesve. Shpesh per te mesuar shkakun, here per tu frymezuar nga personazhet e here per te kuptuar vleren e vertete te jetes."> </asp:Label>
                        <br /><asp:Button ID="Butoni5" runat="server" OnClick="Butoni5_Click" ForeColor="Red" Text="Shikoni Detajet"></asp:Button>
                    </div>
                </div>
            </div>
        </div>

    </section>
    <!-- End Feature Area -->
</asp:Content>

