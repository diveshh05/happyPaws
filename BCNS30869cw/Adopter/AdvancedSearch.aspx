<%@ Page Title="Advanced Search | HappyPaws" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdvancedSearch.aspx.cs" Inherits="BCNS30869cw.Adopter.AdvancedSearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- START PAGE BANNER -->
    <section class="section-top">
        <div class="container">
            <div class="col-lg-10 offset-lg-1 text-center">
                <div class="section-top-title wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.3s" data-wow-offset="0">
                    <h1>Advanced Search</h1>
                    <ul>
                        <li><a runat="server" href="~/Default.aspx">Home</a></li>
                        <li>/ Advanced Search</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- END PAGE BANNER -->

    <section class="home_course section-padding">
        <div class="container">
            <div class="row">

                <!-- LEFT: FILTER PANEL (F12) -->
                <div class="col-lg-4 col-sm-12 mb-4">
                    <div class="hp-filter">
                        <h4 class="mb-3">Filter pets</h4>

                        <!-- Breed -->
                        <div class="mb-3">
                            <asp:Label runat="server" AssociatedControlID="txtBreed" Text="Breed" CssClass="form-label" />
                            <asp:TextBox ID="txtBreed" runat="server" CssClass="form-control" MaxLength="50" placeholder="e.g. Labrador" />
                            <asp:RegularExpressionValidator ID="revBreed" runat="server" ControlToValidate="txtBreed"
                                ValidationExpression="^[A-Za-z\s\-]{0,50}$"
                                ErrorMessage="Letters, spaces and hyphens only." CssClass="hp-error" Display="Dynamic" />
                        </div>

                        <!-- Gender -->
                        <div class="mb-3">
                            <asp:Label runat="server" AssociatedControlID="ddlGender" Text="Gender" CssClass="form-label" />
                            <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-select">
                                <asp:ListItem Value="" Text="Any gender" />
                                <asp:ListItem Value="Male" Text="Male" />
                                <asp:ListItem Value="Female" Text="Female" />
                            </asp:DropDownList>
                        </div>

                        <!-- Vaccinated -->
                        <div class="mb-3">
                            <asp:Label runat="server" AssociatedControlID="ddlVaccinated" Text="Vaccinated" CssClass="form-label" />
                            <asp:DropDownList ID="ddlVaccinated" runat="server" CssClass="form-select">
                                <asp:ListItem Value="" Text="Any" />
                                <asp:ListItem Value="1" Text="Vaccinated only" />
                                <asp:ListItem Value="0" Text="Not yet vaccinated" />
                            </asp:DropDownList>
                        </div>

                        
                        <!-- Starting character (F12): the first letter of the pet's name -->
                        <div class="mb-4">
                            <asp:Label runat="server" AssociatedControlID="ddlLetter" Text="Name starts with" CssClass="form-label" />
                            <asp:DropDownList ID="ddlLetter" runat="server" CssClass="form-select">
                                <asp:ListItem Value="" Text="Any letter" />
                                <asp:ListItem>A</asp:ListItem>
                                <asp:ListItem>B</asp:ListItem>
                                <asp:ListItem>C</asp:ListItem>
                                <asp:ListItem>D</asp:ListItem>
                                <asp:ListItem>E</asp:ListItem>
                                <asp:ListItem>F</asp:ListItem>
                                <asp:ListItem>G</asp:ListItem>
                                <asp:ListItem>H</asp:ListItem>
                                <asp:ListItem>I</asp:ListItem>
                                <asp:ListItem>J</asp:ListItem>
                                <asp:ListItem>K</asp:ListItem>
                                <asp:ListItem>L</asp:ListItem>
                                <asp:ListItem>M</asp:ListItem>
                                <asp:ListItem>N</asp:ListItem>
                                <asp:ListItem>O</asp:ListItem>
                                <asp:ListItem>P</asp:ListItem>
                                <asp:ListItem>Q</asp:ListItem>
                                <asp:ListItem>R</asp:ListItem>
                                <asp:ListItem>S</asp:ListItem>
                                <asp:ListItem>T</asp:ListItem>
                                <asp:ListItem>U</asp:ListItem>
                                <asp:ListItem>V</asp:ListItem>
                                <asp:ListItem>W</asp:ListItem>
                                <asp:ListItem>X</asp:ListItem>
                                <asp:ListItem>Y</asp:ListItem>
                                <asp:ListItem>Z</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        <!-- Buttons -->
                        <asp:Button ID="btnFilter" runat="server" Text="Apply Filters" CssClass="btn_one w-100 border-0 mb-2" />
                        <div class="text-center">
                            <a runat="server" href="~/Adopter/AdvancedSearch.aspx">Clear all filters</a>
                        </div>
                    </div>
                </div>

                <!-- RIGHT: LIVE SEARCH + RESULTS -->
                <div class="col-lg-8 col-sm-12">

                    <!-- LIVE SEARCH (F28): results will update while the user types (backend: AJAX UpdatePanel) -->
                    <div class="hp-live-search mb-2">
                        <i class="fa-solid fa-magnifying-glass"></i>
                        <asp:TextBox ID="txtLiveSearch" runat="server" CssClass="form-control" MaxLength="50"
                            placeholder="Start typing a name, breed or temperament..." />
                    </div>
                    <asp:RegularExpressionValidator ID="revLiveSearch" runat="server" ControlToValidate="txtLiveSearch"
                        ValidationExpression="^[A-Za-z\s\-]{0,50}$"
                        ErrorMessage="Letters, spaces and hyphens only." CssClass="hp-error mb-2" Display="Dynamic" />

                    <asp:Label ID="lblResultInfo" runat="server" CssClass="d-block mb-4" Text="Showing all pets available for adoption" />

                    <!-- Results (the backend will generate these cards) -->
                    <div class="row">

                        <!-- Result 1 -->
                        <div class="col-md-6">
                            <div class="single_course hp-pet-card">
                                <div class="single_c_img">
                                    <img runat="server" src="~/Assets/public/img/happypaws/pet-1.jpg" class="img-fluid" alt="Luna, a rescued dog" />
                                    <span>Dog</span>
                                </div>
                                <h4><a runat="server" href="~/Adopter/PetProfile.aspx">Luna</a></h4>
                                <p><i class="fa-solid fa-paw"></i>Labrador mix</p>
                                <p><i class="fa-solid fa-cake-candles"></i>2 years</p>
                                <p><i class="fa-solid fa-venus"></i>Female</p>
                                <div class="hp-badges">
                                    <span class="badge rounded-pill text-bg-light">Playful</span>
                                    <span class="badge rounded-pill text-bg-light">Friendly</span>
                                    <span class="badge rounded-pill text-bg-success">Vaccinated</span>
                                </div>
                                <div class="hp-needs">Special needs: none</div>
                                <div class="price">Available for adoption</div>
                            </div>
                        </div>

                        <!-- Result 2 -->
                        <div class="col-md-6">
                            <div class="single_course hp-pet-card">
                                <div class="single_c_img">
                                    <img runat="server" src="~/Assets/public/img/happypaws/pet-2.jpg" class="img-fluid" alt="Milo, a rescued cat" />
                                    <span>Cat</span>
                                </div>
                                <h4><a runat="server" href="~/Adopter/PetProfile.aspx">Milo</a></h4>
                                <p><i class="fa-solid fa-paw"></i>Domestic shorthair</p>
                                <p><i class="fa-solid fa-cake-candles"></i>1 year</p>
                                <p><i class="fa-solid fa-mars"></i>Male</p>
                                <div class="hp-badges">
                                    <span class="badge rounded-pill text-bg-light">Shy</span>
                                    <span class="badge rounded-pill text-bg-success">Vaccinated</span>
                                </div>
                                <div class="hp-needs">Special needs: needs a quiet home</div>
                                <div class="price">Available for adoption</div>
                            </div>
                        </div>

                        <!-- Result 3 -->
                        <div class="col-md-6">
                            <div class="single_course hp-pet-card">
                                <div class="single_c_img">
                                    <img runat="server" src="~/Assets/public/img/happypaws/pet-4.jpg" class="img-fluid" alt="Rocky, a rescued dog" />
                                    <span>Dog</span>
                                </div>
                                <h4><a runat="server" href="~/Adopter/PetProfile.aspx">Rocky</a></h4>
                                <p><i class="fa-solid fa-paw"></i>German Shepherd mix</p>
                                <p><i class="fa-solid fa-cake-candles"></i>4 years</p>
                                <p><i class="fa-solid fa-mars"></i>Male</p>
                                <div class="hp-badges">
                                    <span class="badge rounded-pill text-bg-light">Protective</span>
                                    <span class="badge rounded-pill text-bg-light">Energetic</span>
                                    <span class="badge rounded-pill text-bg-warning">Not yet vaccinated</span>
                                </div>
                                <div class="hp-needs">Special needs: daily exercise, large garden</div>
                                <div class="price">Available for adoption</div>
                            </div>
                        </div>

                        <!-- Result 4 -->
                        <div class="col-md-6">
                            <div class="single_course hp-pet-card">
                                <div class="single_c_img">
                                    <img runat="server" src="~/Assets/public/img/happypaws/pet-5.jpg" class="img-fluid" alt="Nala, a rescued cat" />
                                    <span>Cat</span>
                                </div>
                                <h4><a runat="server" href="~/Adopter/PetProfile.aspx">Nala</a></h4>
                                <p><i class="fa-solid fa-paw"></i>Siamese mix</p>
                                <p><i class="fa-solid fa-cake-candles"></i>3 years</p>
                                <p><i class="fa-solid fa-venus"></i>Female</p>
                                <div class="hp-badges">
                                    <span class="badge rounded-pill text-bg-light">Calm</span>
                                    <span class="badge rounded-pill text-bg-light">Affectionate</span>
                                    <span class="badge rounded-pill text-bg-success">Vaccinated</span>
                                </div>
                                <div class="hp-needs">Special needs: none</div>
                                <div class="price">Available for adoption</div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
