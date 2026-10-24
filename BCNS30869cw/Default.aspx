<%@ Page Title="Home | HappyPaws" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BCNS30869cw.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- START HERO (from Eduleb's "HOME" section) -->
    <section class="home_bg hb_height hp-hero">
        <div class="container">
            <div class="row">

                <!-- Left: heading + simple search -->
                <div class="col-lg-6 col-sm-12 col-xs-12">
                    <div class="hero-text ht_top">
                        <h1><span>Adopt, don't shop.</span> Give a rescued pet a second chance</h1>
                        <p>Dogs, cats and other pets in Mauritius are waiting for a loving home.</p>
                    </div>

                    <!-- SIMPLE SEARCH (F8): guests can use it without logging in -->
                    <div class="hp-search">
                        <div class="row g-3">

                            <!-- Pet type -->
                            <div class="col-sm-6">
                                <asp:Label runat="server" AssociatedControlID="ddlType" Text="Pet type" CssClass="form-label" />
                                <asp:DropDownList ID="ddlType" runat="server" CssClass="form-select">
                                    <asp:ListItem Value="" Text="Any type" />
                                    <asp:ListItem Value="Dog" Text="Dog" />
                                    <asp:ListItem Value="Cat" Text="Cat" />
                                    <asp:ListItem Value="Rabbit" Text="Rabbit" />
                                    <asp:ListItem Value="Bird" Text="Bird" />
                                </asp:DropDownList>
                            </div>

                            <!-- Age -->
                            <div class="col-sm-6">
                                <asp:Label runat="server" AssociatedControlID="ddlAge" Text="Age" CssClass="form-label" />
                                <asp:DropDownList ID="ddlAge" runat="server" CssClass="form-select">
                                    <asp:ListItem Value="" Text="Any age" />
                                    <asp:ListItem Value="0-1" Text="Under 1 year" />
                                    <asp:ListItem Value="1-3" Text="1 to 3 years" />
                                    <asp:ListItem Value="3-7" Text="3 to 7 years" />
                                    <asp:ListItem Value="7+" Text="Over 7 years" />
                                </asp:DropDownList>
                            </div>

                            <!-- Breed -->
                            <div class="col-sm-6">
                                <asp:Label runat="server" AssociatedControlID="txtBreed" Text="Breed" CssClass="form-label" />
                                <asp:TextBox ID="txtBreed" runat="server" CssClass="form-control" MaxLength="50" placeholder="e.g. Labrador" />
                            </div>

                            <!-- Size-->

                   
                            <div class="col-sm-6">
                                <asp:Label runat="server" AssociatedControlID="ddlSize" Text="Size" CssClass="form-label" />
                                <asp:DropDownList ID="ddlSize" runat="server" CssClass="form-select">
                                    <asp:ListItem Value="" Text="Any size" />
                                    <asp:ListItem Value="Small" Text="Small" />
                                    <asp:ListItem Value="Medium" Text="Medium" />
                                    <asp:ListItem Value="Large" Text="Large" />
                                </asp:DropDownList>
                            </div>

                            <!-- Search button (no OnClick yet; the backend will add it) -->
                            <div class="col-12">
                                <asp:Button ID="btnSearch" runat="server" Text="Search Pets" CssClass="btn_one w-100 border-0" />
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Right: hero photo (replaces Eduleb's demo image and fake "4500+ students" box) -->
                <div class="col-lg-6 col-sm-12 col-xs-12">
                    <div class="hero-text-img">
                        <img runat="server" src="~/Assets/public/img/happypaws/hero-pet.jpg" class="img-fluid rounded-4 hp-hero-img" alt="A happy rescued pet" />
                    </div>
                </div>

            </div>
        </div>
    </section>
    <!-- END HERO -->

</asp:Content>