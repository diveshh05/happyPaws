<%@ Page Title="Pet Catalogue | HappyPaws" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Catalogue.aspx.cs" Inherits="BCNS30869cw.Catalogue" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    
    <section class="section-top">
        <div class="container">
            <div class="col-lg-10 offset-lg-1 text-center">
                <div class="section-top-title wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.3s" data-wow-offset="0">
                    <h1>Pet Catalogue</h1>
                    <ul>
                        <li><a runat="server" href="~/Default.aspx">Home</a></li>
                        <li>/ Pet Catalogue</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <!-- catalogue -->
    <section class="home_course section-padding">
        <div class="container">

            
            <div class="d-flex flex-wrap justify-content-between align-items-center mb-4">
                <asp:Label ID="lblResultInfo" runat="server" Text="Showing all pets available for adoption" />
                <a runat="server" href="~/Adopter/AdvancedSearch.aspx">Need more filters? Try Advanced Search <i class="ti-arrow-top-right"></i></a>
            </div>

            <div class="row">
             
                <div class="col-lg-4 col-sm-6 col-xs-12">
                    <div class="single_course hp-pet-card">
                        <div class="single_c_img">
                            <img runat="server" src="~/Assets/public/img/happypaws/pet-1.jpg" class="img-fluid" alt="Luna, a rescued dog" />
                            <span>Dog</span>
                        </div>
                        <h4><a runat="server" href="~/Adopter/PetProfile.aspx">Luna</a></h4>
                        <p><i class="fa-solid fa-paw"></i>Labrador mix</p>
                        <p><i class="fa-solid fa-cake-candles"></i>2 years</p>
                        <p><i class="fa-solid fa-venus"></i>Female</p>
                        <div class="price">Available for adoption</div>
                    </div>
                </div>

                <div class="col-lg-4 col-sm-6 col-xs-12">
                    <div class="single_course hp-pet-card">
                        <div class="single_c_img">
                            <img runat="server" src="~/Assets/public/img/happypaws/pet-2.jpg" class="img-fluid" alt="Milo, a rescued cat" />
                            <span>Cat</span>
                        </div>
                        <h4><a runat="server" href="~/Adopter/PetProfile.aspx">Milo</a></h4>
                        <p><i class="fa-solid fa-paw"></i>Domestic shorthair</p>
                        <p><i class="fa-solid fa-cake-candles"></i>1 year</p>
                        <p><i class="fa-solid fa-mars"></i>Male</p>
                        <div class="price">Available for adoption</div>
                    </div>
                </div>

                <div class="col-lg-4 col-sm-6 col-xs-12">
                    <div class="single_course hp-pet-card">
                        <div class="single_c_img">
                            <img runat="server" src="~/Assets/public/img/happypaws/pet-3.jpg" class="img-fluid" alt="Coco, a rescued rabbit" />
                            <span>Rabbit</span>
                        </div>
                        <h4><a runat="server" href="~/Adopter/PetProfile.aspx">Coco</a></h4>
                        <p><i class="fa-solid fa-paw"></i>Holland Lop</p>
                        <p><i class="fa-solid fa-cake-candles"></i>Under 1 year</p>
                        <p><i class="fa-solid fa-venus"></i>Female</p>
                        <div class="price">Available for adoption</div>
                    </div>
                </div>

                <div class="col-lg-4 col-sm-6 col-xs-12">
                    <div class="single_course hp-pet-card">
                        <div class="single_c_img">
                            <img runat="server" src="~/Assets/public/img/happypaws/pet-4.jpg" class="img-fluid" alt="Rocky, a rescued dog" />
                            <span>Dog</span>
                        </div>
                        <h4><a runat="server" href="~/Adopter/PetProfile.aspx">Rocky</a></h4>
                        <p><i class="fa-solid fa-paw"></i>German Shepherd mix</p>
                        <p><i class="fa-solid fa-cake-candles"></i>4 years</p>
                        <p><i class="fa-solid fa-mars"></i>Male</p>
                        <div class="price">Available for adoption</div>
                    </div>
                </div>

                <div class="col-lg-4 col-sm-6 col-xs-12">
                    <div class="single_course hp-pet-card">
                        <div class="single_c_img">
                            <img runat="server" src="~/Assets/public/img/happypaws/pet-5.jpg" class="img-fluid" alt="Nala, a rescued cat" />
                            <span>Cat</span>
                        </div>
                        <h4><a runat="server" href="~/Adopter/PetProfile.aspx">Nala</a></h4>
                        <p><i class="fa-solid fa-paw"></i>Siamese mix</p>
                        <p><i class="fa-solid fa-cake-candles"></i>3 years</p>
                        <p><i class="fa-solid fa-venus"></i>Female</p>
                        <div class="price">Available for adoption</div>
                    </div>
                </div>

                <div class="col-lg-4 col-sm-6 col-xs-12">
                    <div class="single_course hp-pet-card">
                        <div class="single_c_img">
                            <img runat="server" src="~/Assets/public/img/happypaws/pet-6.jpg" class="img-fluid" alt="Kiwi, a rescued bird" />
                            <span>Bird</span>
                        </div>
                        <h4><a runat="server" href="~/Adopter/PetProfile.aspx">Kiwi</a></h4>
                        <p><i class="fa-solid fa-paw"></i>Budgerigar</p>
                        <p><i class="fa-solid fa-cake-candles"></i>1 year</p>
                        <p><i class="fa-solid fa-mars"></i>Male</p>
                        <div class="price">Available for adoption</div>
                    </div>
                </div>

            </div>
        </div>
    </section>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
