<%@ Page Title="My Applications | HappyPaws" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyApplications.aspx.cs" Inherits="BCNS30869cw.Adopter.MyApplications" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- START PAGE BANNER -->
    <section class="section-top">
        <div class="container">
            <div class="col-lg-10 offset-lg-1 text-center">
                <div class="section-top-title wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.3s" data-wow-offset="0">
                    <h1>My Applications</h1>
                    <ul>
                        <li><a runat="server" href="~/Default.aspx">Home</a></li>
                        <li> / My Applications</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- END PAGE BANNER -->

    <!-- START MY APPLICATIONS (F16) -->
    <section class="section-padding">
        <div class="container">

            <!-- Heading + button -->
            <div class="d-flex flex-wrap justify-content-between align-items-center mb-4">
                <div>
                    <h3 class="mb-1">Your adoption applications</h3>
                    <p class="mb-0">Track the progress of every pet you have applied for.</p>
                </div>
                <a runat="server" href="~/Catalogue.aspx" class="btn_one mt-3 mt-md-0">Browse more pets</a>
            </div>

            <!-- Shown by the backend when the adopter has no applications yet -->
            <asp:Label ID="lblNoApplications" runat="server" Visible="false" CssClass="d-block text-center mb-4"
                Text="You have not applied for any pets yet. Browse our catalogue to find your new friend!" />

            <!-- Applications table (the backend will build the rows from the database) -->
            <div class="hp-card">
                <div class="table-responsive">
                    <table class="table align-middle hp-table mb-0">
                        <thead>
                            <tr>
                                <th>Pet</th>
                                <th>Applied on</th>
                                <th>Status</th>
                                <th>Note from HappyPaws</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>

                            <!-- Application 1: Pending -->
                            <tr>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <img runat="server" src="~/Assets/public/img/happypaws/pet-1.jpg" class="hp-thumb" alt="Luna" />
                                        <div>
                                            <strong>Luna</strong><br />
                                            <small>Dog · Labrador mix</small>
                                        </div>
                                    </div>
                                </td>
                                <td>20 Oct 2026</td>
                                <td><span class="badge rounded-pill text-bg-warning">Pending</span></td>
                                <td>We have received your application.</td>
                                <td><a runat="server" href="~/Adopter/PetProfile.aspx">View pet</a></td>
                            </tr>

                            <!-- Application 2: Approved -->
                            <tr>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <img runat="server" src="~/Assets/public/img/happypaws/pet-2.jpg" class="hp-thumb" alt="Milo" />
                                        <div>
                                            <strong>Milo</strong><br />
                                            <small>Cat · Domestic shorthair</small>
                                        </div>
                                    </div>
                                </td>
                                <td>2 Oct 2026</td>
                                <td><span class="badge rounded-pill text-bg-success">Approved</span></td>
                                <td>Home visit booked for 30 Oct 2026 at 10:00.</td>
                                <td><a runat="server" href="~/Adopter/PetProfile.aspx">View pet</a></td>
                            </tr>

                            <!-- Application 3: Under review -->
                            <tr>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <img runat="server" src="~/Assets/public/img/happypaws/pet-3.jpg" class="hp-thumb" alt="Coco" />
                                        <div>
                                            <strong>Coco</strong><br />
                                            <small>Rabbit · Holland Lop</small>
                                        </div>
                                    </div>
                                </td>
                                <td>28 Sep 2026</td>
                                <td><span class="badge rounded-pill text-bg-info">Under review</span></td>
                                <td>Our team will call you this week.</td>
                                <td><a runat="server" href="~/Adopter/PetProfile.aspx">View pet</a></td>
                            </tr>

                            <!-- Application 4: Rejected -->
                            <tr>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <img runat="server" src="~/Assets/public/img/happypaws/pet-4.jpg" class="hp-thumb" alt="Rocky" />
                                        <div>
                                            <strong>Rocky</strong><br />
                                            <small>Dog · German Shepherd mix</small>
                                        </div>
                                    </div>
                                </td>
                                <td>15 Sep 2026</td>
                                <td><span class="badge rounded-pill text-bg-danger">Rejected</span></td>
                                <td>Rocky needs a home with a large garden.</td>
                                <td><a runat="server" href="~/Adopter/PetProfile.aspx">View pet</a></td>
                            </tr>

                        </tbody>
                    </table>
                </div>
            </div>

            <!-- What each status means -->
            <div class="hp-legend mt-4">
                <p class="mb-2"><span class="badge rounded-pill text-bg-warning">Pending</span>Received, waiting to be reviewed.</p>
                <p class="mb-2"><span class="badge rounded-pill text-bg-info">Under review</span>Our team is checking your application and may contact you.</p>
                <p class="mb-2"><span class="badge rounded-pill text-bg-success">Approved</span>Congratulations! We will arrange a home visit and handover.</p>
                <p class="mb-0"><span class="badge rounded-pill text-bg-danger">Rejected</span>This pet is not the right match this time. See the note for details.</p>
            </div>

        </div>
    </section>
    <!-- END MY APPLICATIONS -->

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
