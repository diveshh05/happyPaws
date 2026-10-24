<%@ Page Title="My Requests | HappyPaws" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MyRequests.aspx.cs" Inherits="BCNS30869cw.Owner.MyRequests" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- START PAGE BANNER -->
    <section class="section-top">
        <div class="container">
            <div class="col-lg-10 offset-lg-1 text-center">
                <div class="section-top-title wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.3s" data-wow-offset="0">
                    <h1>My Requests</h1>
                    <ul>
                        <li><a runat="server" href="~/Default.aspx">Home</a></li>
                        <li> / My Requests</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- END PAGE BANNER -->

    <!-- START MY REQUESTS (F5, F6, F7) -->
    <section class="section-padding">
        <div class="container">

            <!-- Heading + new request button -->
            <div class="d-flex flex-wrap justify-content-between align-items-center mb-4">
                <div>
                    <h3 class="mb-1">Your surrender requests</h3>
                    <p class="mb-0">Follow each request and find your drop-off details here.</p>
                </div>
                <a runat="server" href="~/Owner/SurrenderRequest.aspx" class="btn_one mt-3 mt-md-0">New request</a>
            </div>

            <!-- Message after an action (e.g. "Your request has been cancelled.") -->
            <asp:Label ID="lblMessage" runat="server" CssClass="hp-success" EnableViewState="false" />

            <!-- Shown by the backend when the owner has no requests -->
            <asp:Label ID="lblNoRequests" runat="server" Visible="false" CssClass="d-block text-center mb-4"
                Text="You have not submitted any surrender requests." />

            <!-- ===== Request 1: PENDING (can edit, upload documents, cancel) ===== -->
            <div class="hp-card mb-4">
                <div class="row align-items-center">
                    <div class="col-md-3 mb-3 mb-md-0">
                        <img runat="server" src="~/Assets/public/img/happypaws/request-2.jpg" class="hp-request-img" alt="Tiger, a cat" />
                    </div>
                    <div class="col-md-9">
                        <div class="d-flex flex-wrap justify-content-between align-items-center">
                            <h4 class="mb-1">Tiger <small class="text-muted">· Cat · Request #5</small></h4>
                            <span class="badge rounded-pill text-bg-warning">Pending</span>
                        </div>
                        <p class="mb-0"><small>Submitted on 10 Oct 2026</small></p>

                        <!-- Tracker (F7) -->
                        <ul class="hp-tracker">
                            <li class="current">Submitted</li>
                            <li>Under review</li>
                            <li>Accepted</li>
                            <li>Dropped off</li>
                        </ul>

                        <!-- Actions -->
                        <a runat="server" href="~/Owner/SurrenderRequest.aspx?id=5" class="hp-btn-sm">
                            <i class="fa-solid fa-pen"></i> Edit request</a>
                        <a runat="server" href="~/Owner/Documents.aspx" class="hp-btn-sm">
                            <i class="fa-solid fa-file-arrow-up"></i> Documents</a>
                        <asp:LinkButton ID="btnCancel5" runat="server" CssClass="hp-btn-sm danger" CausesValidation="false"
                            OnClientClick="return confirm('Cancel the surrender request for Tiger?');">
                            <i class="fa-solid fa-xmark"></i> Cancel request</asp:LinkButton>
                    </div>
                </div>
            </div>

            <!-- ===== Request 2: ACCEPTED (shows drop-off details, can still cancel) ===== -->
            <div class="hp-card mb-4">
                <div class="row align-items-center">
                    <div class="col-md-3 mb-3 mb-md-0">
                        <img runat="server" src="~/Assets/public/img/happypaws/request-1.jpg" class="hp-request-img" alt="Max, a dog" />
                    </div>
                    <div class="col-md-9">
                        <div class="d-flex flex-wrap justify-content-between align-items-center">
                            <h4 class="mb-1">Max <small class="text-muted">· Dog · Request #7</small></h4>
                            <span class="badge rounded-pill text-bg-success">Accepted</span>
                        </div>
                        <p class="mb-0"><small>Submitted on 16 Oct 2026 · Accepted on 20 Oct 2026</small></p>

                        <!-- Tracker (F7) -->
                        <ul class="hp-tracker">
                            <li class="done">Submitted</li>
                            <li class="done">Under review</li>
                            <li class="current">Accepted</li>
                            <li>Dropped off</li>
                        </ul>

                        <!-- Drop-off details (F7): set by the admin when accepting the request (F20) -->
                        <div class="hp-dropoff">
                            <h5 class="mb-2">Drop-off details</h5>
                            <p class="mb-1"><i class="fa-regular fa-calendar"></i>Saturday 31 Oct 2026</p>
                            <p class="mb-1"><i class="fa-regular fa-clock"></i>10:00</p>
                            <p class="mb-1"><i class="fa-solid fa-location-dot"></i>HappyPaws Shelter, Port Louis</p>
                            <p class="mb-0"><i class="fa-solid fa-circle-info"></i>Please bring Max's vaccination card, his lead and a favourite toy.</p>
                        </div>

                        <!-- Actions (no Edit: the request has already been reviewed) -->
                        <a runat="server" href="~/Owner/Documents.aspx" class="hp-btn-sm">
                            <i class="fa-solid fa-file-arrow-up"></i> Documents</a>
                        <asp:LinkButton ID="btnCancel7" runat="server" CssClass="hp-btn-sm danger" CausesValidation="false"
                            OnClientClick="return confirm('Cancel the surrender request for Max?');">
                            <i class="fa-solid fa-xmark"></i> Cancel request</asp:LinkButton>
                    </div>
                </div>
            </div>

            <!-- ===== Request 3: REJECTED (note from HappyPaws, no actions) ===== -->
            <div class="hp-card mb-4">
                <div class="row align-items-center">
                    <div class="col-md-3 mb-3 mb-md-0">
                        <img runat="server" src="~/Assets/public/img/happypaws/request-3.jpg" class="hp-request-img" alt="Snowy, a rabbit" />
                    </div>
                    <div class="col-md-9">
                        <div class="d-flex flex-wrap justify-content-between align-items-center">
                            <h4 class="mb-1">Snowy <small class="text-muted">· Rabbit · Request #3</small></h4>
                            <span class="badge rounded-pill text-bg-danger">Rejected</span>
                        </div>
                        <p class="mb-3"><small>Submitted on 2 Sep 2026 · Reviewed on 6 Sep 2026</small></p>
                        <p class="mb-0"><b>Note from HappyPaws:</b> We have no space for rabbits at the moment. We have emailed you the contacts of two partner shelters that can help.</p>
                    </div>
                </div>
            </div>

        </div>
    </section>
    <!-- END MY REQUESTS -->

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
