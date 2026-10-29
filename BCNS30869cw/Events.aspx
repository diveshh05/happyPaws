<%@ Page Title="Events | HappyPaws" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="BCNS30869cw.Events" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <section class="section-top">
        <div class="container">
            <div class="col-lg-10 offset-lg-1 text-center">
                <div class="section-top-title wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.3s" data-wow-offset="0">
                    <h1>Upcoming Events</h1>
                    <ul>
                        <li><a runat="server" href="~/Default.aspx">Home</a></li>
                        <li>/ Events</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <!--events -->
    <section class="blog_area section-padding">
        <div class="container">

            <asp:Label ID="lblNoEvents" runat="server" Visible="false" CssClass="d-block text-center mb-4"
                Text="There are no upcoming events right now. Please check back soon!" />

            <div class="row">

                <div class="col-lg-4 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s" data-wow-offset="0">
                    <div class="single_blog hp-event-card">
                        <img runat="server" src="~/Assets/public/img/happypaws/event-1.jpg" class="img-fluid" alt="HappyPaws Adoption Day" />
                        <div class="content_box">
                            <span><i class="fa-regular fa-calendar"></i>Sat 14 Nov 2026 | <strong class="hp-event-cat">Adoption Day</strong></span>
                            <h2>HappyPaws Adoption Day at Port Louis Waterfront</h2>
                            <p class="hp-event-meta"><i class="fa-regular fa-clock"></i>9:00 – 15:00</p>
                            <p class="hp-event-meta"><i class="fa-solid fa-location-dot"></i>Caudan Waterfront, Port Louis</p>
                            <p class="hp-event-desc">Meet our dogs, cats and rabbits in person, talk to our volunteers and start your adoption application on the spot.</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.2s" data-wow-offset="0">
                    <div class="single_blog hp-event-card">
                        <img runat="server" src="~/Assets/public/img/happypaws/event-2.jpg" class="img-fluid" alt="Paws and Pancakes charity breakfast" />
                        <div class="content_box">
                            <span><i class="fa-regular fa-calendar"></i>Sat 28 Nov 2026 | <strong class="hp-event-cat">Fundraiser</strong></span>
                            <h2>Paws &amp; Pancakes Charity Breakfast</h2>
                            <p class="hp-event-meta"><i class="fa-regular fa-clock"></i>8:00 – 11:00</p>
                            <p class="hp-event-meta"><i class="fa-solid fa-location-dot"></i>HappyPaws Shelter, Port Louis</p>
                            <p class="hp-event-desc">Enjoy a pancake breakfast with friends and their dogs. All proceeds go to food and vet care for our rescued pets.</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.3s" data-wow-offset="0">
                    <div class="single_blog hp-event-card">
                        <img runat="server" src="~/Assets/public/img/happypaws/event-3.jpg" class="img-fluid" alt="Free pet care workshop" />
                        <div class="content_box">
                            <span><i class="fa-regular fa-calendar"></i>Sat 12 Dec 2026 | <strong class="hp-event-cat">Workshop</strong></span>
                            <h2>Caring for Your New Pet: Free Owner Workshop</h2>
                            <p class="hp-event-meta"><i class="fa-regular fa-clock"></i>10:00 – 12:00</p>
                            <p class="hp-event-meta"><i class="fa-solid fa-location-dot"></i>HappyPaws Shelter, Port Louis</p>
                            <p class="hp-event-desc">Learn the basics of feeding, vaccinations and settling a new pet into your home. Open to everyone, no booking needed.</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.1s" data-wow-offset="0">
                    <div class="single_blog hp-event-card">
                        <img runat="server" src="~/Assets/public/img/happypaws/event-4.jpg" class="img-fluid" alt="Home for the Holidays adoption drive" />
                        <div class="content_box">
                            <span><i class="fa-regular fa-calendar"></i>Sat 19 Dec 2026 | <strong class="hp-event-cat">Adoption Day</strong></span>
                            <h2>Home for the Holidays Adoption Drive</h2>
                            <p class="hp-event-meta"><i class="fa-regular fa-clock"></i>9:00 – 14:00</p>
                            <p class="hp-event-meta"><i class="fa-solid fa-location-dot"></i>Grand Baie Village Hall</p>
                            <p class="hp-event-desc">Give a rescued pet a home for Christmas. Our team will help you find the right match for your family.</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.2s" data-wow-offset="0">
                    <div class="single_blog hp-event-card">
                        <img runat="server" src="~/Assets/public/img/happypaws/event-5.jpg" class="img-fluid" alt="Volunteer orientation morning" />
                        <div class="content_box">
                            <span><i class="fa-regular fa-calendar"></i>Sat 9 Jan 2027 | <strong class="hp-event-cat">Volunteering</strong></span>
                            <h2>Volunteer Orientation Morning</h2>
                            <p class="hp-event-meta"><i class="fa-regular fa-clock"></i>9:00 – 11:30</p>
                            <p class="hp-event-meta"><i class="fa-solid fa-location-dot"></i>HappyPaws Shelter, Port Louis</p>
                            <p class="hp-event-desc">Learn about the responsibilities of volunteering and how to make a difference in your community.</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-sm-6 col-xs-12 wow fadeInUp" data-wow-duration="1s" data-wow-delay="0.3s" data-wow-offset="0">
                    <div class="single_blog hp-event-card">
                        <img runat="server" src="~/Assets/public/img/happypaws/event-6.jpg" class="img-fluid" alt="Responsible pet ownership talk" />
                        <div class="content_box">
                            <span><i class="fa-regular fa-calendar"></i>Sat 23 Jan 2027 | <strong class="hp-event-cat">Workshop</strong></span>
                            <h2>Responsible Pet Ownership Talk</h2>
                            <p class="hp-event-meta"><i class="fa-regular fa-clock"></i>14:00 – 16:00</p>
                            <p class="hp-event-meta"><i class="fa-solid fa-location-dot"></i>Rose Hill Community Centre</p>
                            <p class="hp-event-desc">Learn about the responsibilities of pet ownership and how to provide the best care for your furry friend.</p>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </section>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
