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
                    <div>
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

    <!-- START FEATURED PETS (from Eduleb's "COURSE" section) -->
    <section class="home_course section-padding">
        <div class="container">

            <!-- Heading + "View All Pets" button -->
            <div class="row">
                <div class="col-lg-8 col-sm-6 col-xs-12">
                    <div class="section-title">
                        <h2>Meet some of our <b>rescued friends</b>
                            <br />
                            waiting for a home</h2>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6 col-xs-12">
                    <div class="cour_btn">
                        <a runat="server" href="~/Catalogue.aspx" class="btn_one">View All Pets <i class="ti-arrow-top-right"></i></a>
                    </div>
                </div>
            </div>

            <!-- Pet cards -->
            <div class="row">

                <!-- Pet card 1 -->
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

                <!-- Pet card 2 -->
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

                <!-- Pet card 3 -->
                <div class="col-lg-4 col-sm-6 col-xs-12">
                    <div class="single_course hp-pet-card">
                        <div class="single_c_img">
                            <img runat="server" src="~/Assets/public/img/happypaws/pet-3.jpg" class="img-fluid" alt="Coco, a rescued rabbit" />
                            <span>Rabbit</span>
                        </div>
                        <h4><a runat="server" href="~/Adopter/PetProfile.aspx">Coco</a></h4>
                        <p><i class="fa-solid fa-paw"></i>Holland Lop</p>
                        <p><i class="fa-solid fa-cake-candles"></i>6 months</p>
                        <p><i class="fa-solid fa-venus"></i>Female</p>
                        <div class="price">Available for adoption</div>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <!-- END FEATURED PETS -->
    <!-- START ADVERTISEMENT (F32): a random ad from App_Data/Ads.xml on every page load -->
    <section class="section-padding pt-0">
        <div class="container">
            <p class="hp-ad-label">Sponsored</p>
            <div class="hp-ad">
                <asp:AdRotator ID="adBanner" runat="server" AdvertisementFile="~/App_Data/Ads.xml" />
            </div>
        </div>
    </section>
    <!-- END ADVERTISEMENT -->

    <!-- START TESTIMONIALS (from Eduleb's testimonial slider) -->
    <section class="testi_area hp-testi section-padding">
        <div class="container">
            <div class="section-title">
                <h2>Stories from our
                    <br />
                    HappyPaws family</h2>
            </div>
            <div class="row align-items-center">

                <!-- Left: photo -->
                <div class="col-lg-6 col-sm-12 col-xs-12">
                    <img runat="server" src="~/Assets/public/img/happypaws/testimonial-side.jpg" class="hp-testi-img" alt="A happy adopter with their pet" />
                </div>

                <!-- Right: the slider. Each <div class="testimonial"> is one slide -->
                <div class="col-lg-6 col-sm-12 col-xs-12">
                    <div id="testimonial-slider" class="owl-carousel">

                        <!-- Testimonial 1 -->
                        <div class="testimonial">
                            <i class="fa-solid fa-quote-left hp-quote"></i>
                            <div class="testimonial_content">
                                <p>We adopted Bella last spring and she has filled our home with joy. The HappyPaws team made the whole process easy and answered every question we had.</p>
                            </div>
                            <div class="testi_pic_title">
                                <span class="hp-avatar">P</span>
                                <h4>Priya R.</h4>
                                <p>Adopted Bella the Labrador</p>
                            </div>
                        </div>

                        <!-- Testimonial 2 -->
                        <div class="testimonial">
                            <i class="fa-solid fa-quote-left hp-quote"></i>
                            <div class="testimonial_content">
                                <p>Moving abroad meant I could not keep my cat. HappyPaws treated Tiger with so much care and kept me updated until he found a new family.</p>
                            </div>
                            <div class="testi_pic_title">
                                <span class="hp-avatar">K</span>
                                <h4>Kevin L.</h4>
                                <p>Surrendered his cat, Tiger</p>
                            </div>
                        </div>

                        <!-- Testimonial 3: YOUR TURN (see below) -->

                        <div class="testimonial">
                            <i class="fa-solid fa-quote-left hp-quote"></i>
                            <div class="testimonial_content">
                                <p>I couldn't give Coco the space she needed after my baby was born. The HappyPaws team was kind, never judged me, and let me know when she was settled with her new family.</p>
                            </div>
                            <div class="testi_pic_title">
                                <span class="hp-avatar">S</span>
                                <h4>Sarah M.</h4>
                                <p>Surrendered her rabbit, Coco</p>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </section>
    <!-- END TESTIMONIALS -->

    <section class="blog_area section-padding">
        <div class="container">
            <div class="section-title text-center">
                <h2>Upcoming events</h2>
                <p>Come and meet our pets, support our work, or learn how to care for your new companion.</p>
            </div>
            <div class="row">

                <!-- Event 1 -->
                <div class="col-lg-4 col-sm-4 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s" data-wow-offset="0">
                    <div class="single_blog hp-event-card">
                        <img runat="server" src="~/Assets/public/img/happypaws/event-1.jpg" class="img-fluid" alt="HappyPaws Adoption Day" />
                        <div class="content_box">
                            <span><i class="fa-regular fa-calendar"></i>14 Nov 2026 | <a runat="server" href="~/Events.aspx">Adoption Day</a></span>
                            <h2><a runat="server" href="~/Events.aspx">HappyPaws Adoption Day at Port Louis Waterfront</a></h2>
                            <a runat="server" class="btn_one" href="~/Events.aspx">View Details <i class="ti-arrow-top-right"></i></a>
                        </div>
                    </div>
                </div>

                <!-- Event 2 -->
                <div class="col-lg-4 col-sm-4 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.2s" data-wow-offset="0">
                    <div class="single_blog hp-event-card">
                        <img runat="server" src="~/Assets/public/img/happypaws/event-2.jpg" class="img-fluid" alt="Paws and Pancakes charity breakfast" />
                        <div class="content_box">
                            <span><i class="fa-regular fa-calendar"></i>28 Nov 2026 | <a runat="server" href="~/Events.aspx">Fundraiser</a></span>
                            <h2><a runat="server" href="~/Events.aspx">Paws &amp; Pancakes Charity Breakfast</a></h2>
                            <a runat="server" class="btn_one" href="~/Events.aspx">View Details <i class="ti-arrow-top-right"></i></a>
                        </div>
                    </div>
                </div>

                <!-- Event 3 -->
                <div class="col-lg-4 col-sm-4 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.3s" data-wow-offset="0">
                    <div class="single_blog hp-event-card">
                        <img runat="server" src="~/Assets/public/img/happypaws/event-3.jpg" class="img-fluid" alt="Free pet care workshop" />
                        <div class="content_box">
                            <span><i class="fa-regular fa-calendar"></i>12 Dec 2026 | <a runat="server" href="~/Events.aspx">Free pet care workshop</a></span>
                            <h2><a runat="server" href="~/Events.aspx">Caring for Your New Pet: Free Owner Workshop</a></h2>
                            <a runat="server" class="btn_one" href="~/Events.aspx">View Details <i class="ti-arrow-top-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- END UPCOMING EVENTS -->


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
    <!-- Owl Carousel: only this page needs it -->
    <script src="<%: ResolveUrl("~/Assets/public/owlcarousel/js/owl.carousel.min.js") %>"></script>
    <script>
// Turn the testimonial list into a slider (settings copied from Eduleb's scripts.js)
$(function () {
    $("#testimonial-slider").owlCarousel({
        items: 1,                     // show 1 testimonial at a time
        itemsDesktop: [1000, 1],      // ...on every screen size
        itemsDesktopSmall: [980, 1],
        itemsTablet: [768, 1],
        itemsMobile: [650, 1],
        pagination: true,             // dots under the slider
        navigation: false,             // previous/next arrows
       
        slideSpeed: 1000,             // slide animation lasts 1 second
        autoPlay: 6000                // move to the next slide every 6 seconds
    });
});
    </script>
</asp:Content>
