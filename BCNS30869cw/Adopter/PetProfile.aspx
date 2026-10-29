<%@ Page Title="Pet Profile | HappyPaws" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PetProfile.aspx.cs" Inherits="BCNS30869cw.Adopter.PetProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <section class="section-top">
        <div class="container">
            <div class="col-lg-10 offset-lg-1 text-center">
                <div class="section-top-title wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.3s" data-wow-offset="0">
                    <h1>Meet
                        <asp:Literal ID="litBannerName" runat="server" Text="Luna" /></h1>
                    <ul>
                        <li><a runat="server" href="~/Default.aspx">Home</a></li>
                        <li>/ <a runat="server" href="~/Catalogue.aspx">Pet Catalogue</a></li>
                        <li>/ Pet Profile</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <!-- Pet profile -->
    <section class="our_event section-padding">
        <div class="container">
            <div class="row">

                <div class="col-lg-8 col-sm-12 col-xs-12 mb-4">

                    <div class="single_event_single">
                        <img id="imgPet" runat="server" src="~/Assets/public/img/happypaws/pet-1.jpg" class="img-fluid hp-profile-img" alt="Luna, a rescued dog" />
                        <div class="single_event_text_single">
                            <h4>
                                <asp:Literal ID="litName" runat="server" Text="Luna" /></h4>
                            <span><i class="fa-solid fa-paw"></i>Labrador mix</span>
                            <span><i class="fa-solid fa-cake-candles"></i>2 years</span>
                            <span><i class="fa-solid fa-venus"></i>Female</span>

                            <div class="mt-3">
                                <asp:LinkButton ID="btnLike" runat="server" CssClass="hp-like" CausesValidation="false">
                                    <i class="fa-solid fa-heart"></i> Like
                                </asp:LinkButton>
                                <asp:Label ID="lblLikeCount" runat="server" CssClass="hp-like-count" Text="12 people like Luna" />
                            </div>
                        </div>
                    </div>

                    <div class="course-details-content section-bg">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item"><a href="#overview" class="nav-link active" data-bs-toggle="tab">Overview</a></li>
                            <li class="nav-item"><a href="#health" class="nav-link" data-bs-toggle="tab">Health</a></li>
                            <li class="nav-item"><a href="#documents" class="nav-link" data-bs-toggle="tab">Documents</a></li>
                        </ul>

                        <div class="tab-content">

                            <!-- Overview (temperament + history) -->
                            <div class="tab-pane show fade active" id="overview">
                                <div class="overview">
                                    <p><b>Temperament:</b> Playful, friendly</p>
                                    <p><b>History:</b> Luna was found as a stray near Curepipe in 2025. After treatment and lots of care at the shelter, she is healthy, house-trained and ready for her forever home.</p>
                                </div>
                            </div>

                            <!-- Health -->
                            <div class="tab-pane fade" id="health">
                                <div class="overview">
                                    <ul class="list-unstyled hp-health">
                                        <li><b>Vaccinated:</b> Yes</li>
                                        <li><b>Special needs:</b> None</li>
                                    </ul>
                                </div>
                            </div>

                            <!-- Documents -->
                            <div class="tab-pane fade" id="documents">
                                <div class="overview">
                                    <div class="table-responsive">
                                        <table class="table hp-docs">
                                            <thead>
                                                <tr>
                                                    <th>Document</th>
                                                    <th>Uploaded</th>
                                                    <th>Actions</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td><i class="fa-regular fa-file-pdf"></i>Vaccination record</td>
                                                    <td>12 Sep 2026</td>
                                                    <td>
                                                        <a href="#" target="_blank" rel="noopener">View</a>
                                                        <a href="#" download>Download</a>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td><i class="fa-regular fa-file-pdf"></i>Medical record</td>
                                                    <td>12 Sep 2026</td>
                                                    <td>
                                                        <a href="#" target="_blank" rel="noopener">View</a>
                                                        <a href="#" download>Download</a>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <!-- details box, status, apply, related pets -->
                <div class="col-lg-4 col-sm-12 col-xs-12">

                    <div class="course_features">
                        <h3>Pet details</h3>
                        <ul>
                            <li><i class="fa-solid fa-dog"></i>Type <b>Dog</b></li>
                            <li><i class="fa-solid fa-paw"></i>Breed <b>Labrador mix</b></li>
                            <li><i class="fa-solid fa-cake-candles"></i>Age <b>2 years</b></li>
                            <li><i class="fa-solid fa-venus-mars"></i>Gender <b>Female</b></li>
                            <li><i class="fa-solid fa-ruler"></i>Size <b>Medium</b></li>
                            <li><i class="fa-solid fa-syringe"></i>Vaccinated <b>Yes</b></li>
                        </ul>
                    </div>

                    <div class="event_info_price mt-4">
                        <h4>Status: Available</h4>
                    </div>

                    <div class="event_info_register">
                        <a runat="server" href="~/Adopter/AdoptionForm.aspx" class="btn_one">Apply to Adopt</a>
                    </div>

                    <!-- You may also like -->
                    <div class="related_course">
                        <h3>You may also like</h3>

                        <div class="single_rc">
                            <div class="rc_img">
                                <img runat="server" src="~/Assets/public/img/happypaws/pet-4.jpg" alt="Rocky, a rescued dog" />
                            </div>
                            <h4><a runat="server" href="~/Adopter/PetProfile.aspx">Rocky</a></h4>
                            <span>Dog</span>
                        </div>

                        <div class="single_rc">
                            <div class="rc_img">
                                <img runat="server" src="~/Assets/public/img/happypaws/pet-2.jpg" alt="Milo, a rescued cat" />
                            </div>
                            <h4><a runat="server" href="~/Adopter/PetProfile.aspx">Milo</a></h4>
                            <span>Cat</span>
                        </div>

                        <div class="single_rc">
                            <div class="rc_img">
                                <img runat="server" src="~/Assets/public/img/happypaws/pet-3.jpg" alt="Coco, a rescued rabbit" />
                            </div>
                            <h4><a runat="server" href="~/Adopter/PetProfile.aspx">Coco</a></h4>
                            <span>Rabbit</span>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
