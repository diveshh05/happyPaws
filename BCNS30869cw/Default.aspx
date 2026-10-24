<%@ Page Title="Home | HappyPaws" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BCNS30869cw.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- START HERO (from Eduleb's "HOME" section) -->
    <section class="hp-hero">
        <div class="container">
            <div class="row align-items-center">

                <!-- Left: heading + simple search -->
                <div class="col-lg-6 col-sm-12 col-xs-12">
                    <div class="hero-text">
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
                    <div">
                        <img runat="server" src="~/Assets/public/img/happypaws/hero-pet.jpg" class="img-fluid rounded-4 hp-hero-img" alt="A happy rescued pet" />
                    </div>
                </div>

            </div>
        </div>
    </section>
    <!-- END HERO -->
    <!-- START HOW IT WORKS (from Eduleb's "Start your journey" section) -->
    <section class="top_cat__area section-padding">
        <div class="container">
            <div class="section-title text-center">
                <h2>How adoption works</h2>
                <p>Adopting from HappyPaws is simple. Here is what happens from the moment you find a pet you love.</p>
            </div>
            <div class="row">

                <!-- Step 01 -->
                <div class="col-lg-3 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.2s" data-wow-offset="0">
                    <div class="single_tp">
                        <span class="sc_one">01</span>
                        <h3>Browse
                            <br />
                            Our Pets</h3>
                        <p>Search our catalogue by type, age, breed or size. No account needed.</p>
                    </div>
                </div>

                <!-- Step 02 -->
                <div class="col-lg-3 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.3s" data-wow-offset="0">
                    <div class="single_tp">
                        <span class="sc_two">02</span>
                        <h3>Create
                            <br />
                            An Account</h3>
                        <p>Register as an adopter to see full pet profiles, health records and more.</p>
                    </div>
                </div>

                <!-- Step 03 -->
                <div class="col-lg-3 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.4s" data-wow-offset="0">
                    <div class="single_tp">
                        <span class="sc_three">03</span>
                        <h3>Apply
                            <br />
                            To Adopt</h3>
                        <p>Fill in a short adoption form telling us about your home and your space.</p>
                    </div>
                </div>

                <!-- Step 04: YOUR TURN (see below) -->

                <div class="col-lg-3 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.5s" data-wow-offset="0">
                    <div class="single_tp">
                        <span class="sc_four">04</span>
                        <h3>Meet &amp;
                            <br />
                            Take Home</h3>
                        <p>Once your application is approved, visit the shelter, meet your pet and welcome them home.</p>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <!-- END HOW IT WORKS -->

</asp:Content>
