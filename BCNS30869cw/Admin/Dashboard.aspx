<%@ Page Title="Dashboard | HappyPaws Admin" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="BCNS30869cw.Admin.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- ===== WELCOME BANNER (from Dasher's dashboard heading) ===== -->
    <div class="row mb-6 g-6">
        <div class="col-12">
            <div class="bg-gradient-mixed p-8 py-10 rounded-3 p-lg-7">
                <h1 class="fs-3">👋 Hello, <asp:Literal ID="litAdminName" runat="server" Text="Admin" /></h1>
                <p class="mb-0">Welcome to the HappyPaws dashboard. Here is what is happening at the shelter today.</p>
                <p>Review new requests and keep our pets' information up to date.</p>
                <a runat="server" href="~/Admin/SurrenderRequests.aspx" class="btn btn-dark me-2 mb-2">Review surrender requests</a>
                <a runat="server" href="~/Admin/AdoptionApplications.aspx" class="btn btn-outline-dark mb-2">Review adoption applications</a>
            </div>
        </div>
    </div>

    <!-- ===== STAT CARDS (F25): Dasher's card style, 4 per row on large screens ===== -->
    <div class="row row-cols-1 row-cols-md-2 row-cols-xl-4 mb-6 g-6">

        <!-- Users -->
        <div class="col">
            <div class="card card-lg h-100">
                <div class="card-body d-flex flex-column gap-6">
                    <div class="d-flex align-items-center gap-3">
                        <div class="icon-shape icon-lg rounded-circle bg-primary-darker text-primary-lighter">
                            <i class="ti ti-users fs-4"></i>
                        </div>
                        <div>Registered users</div>
                    </div>
                    <div class="lh-1">
                        <div class="fs-3 fw-bold mb-2"><asp:Label ID="lblTotalUsers" runat="server" Text="128" /></div>
                        <div class="text-secondary small">
                            <asp:Label ID="lblAdopters" runat="server" Text="92" /> adopters ·
                            <asp:Label ID="lblOwners" runat="server" Text="36" /> pet owners
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Pets -->
        <div class="col">
            <div class="card card-lg h-100">
                <div class="card-body d-flex flex-column gap-6">
                    <div class="d-flex align-items-center gap-3">
                        <div class="icon-shape icon-lg rounded-circle bg-success-darker text-success-lighter">
                            <i class="ti ti-paw fs-4"></i>
                        </div>
                        <div>Pets</div>
                    </div>
                    <div class="lh-1">
                        <div class="fs-3 fw-bold mb-2"><asp:Label ID="lblTotalPets" runat="server" Text="46" /></div>
                        <div class="text-secondary small">
                            <asp:Label ID="lblAvailablePets" runat="server" Text="31" /> available ·
                            <asp:Label ID="lblAdoptedPets" runat="server" Text="15" /> adopted
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Pending surrender requests -->
        <div class="col">
            <div class="card card-lg h-100">
                <div class="card-body d-flex flex-column gap-6">
                    <div class="d-flex align-items-center gap-3">
                        <div class="icon-shape icon-lg rounded-circle bg-warning-darker text-warning-lighter">
                            <i class="ti ti-heart-handshake fs-4"></i>
                        </div>
                        <div>Pending surrenders</div>
                    </div>
                    <div class="lh-1">
                        <div class="fs-3 fw-bold mb-2"><asp:Label ID="lblPendingSurrenders" runat="server" Text="5" /></div>
                        <a runat="server" href="~/Admin/SurrenderRequests.aspx" class="small">View requests</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Pending adoption applications -->
        <div class="col">
            <div class="card card-lg h-100">
                <div class="card-body d-flex flex-column gap-6">
                    <div class="d-flex align-items-center gap-3">
                        <div class="icon-shape icon-lg rounded-circle bg-info-darker text-info-lighter">
                            <i class="ti ti-file-description fs-4"></i>
                        </div>
                        <div>Pending applications</div>
                    </div>
                    <div class="lh-1">
                        <div class="fs-3 fw-bold mb-2"><asp:Label ID="lblPendingApplications" runat="server" Text="9" /></div>
                        <a runat="server" href="~/Admin/AdoptionApplications.aspx" class="small">View applications</a>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- ===== LATEST ACTIVITY: two table cards (from Dasher's "Orders" table) ===== -->
    <div class="row g-6 mb-6">

        <!-- Latest surrender requests -->
        <div class="col-xl-6">
            <div class="card card-lg h-100">
                <div class="card-header border-bottom-0 d-flex justify-content-between align-items-center">
                    <h5 class="mb-0">Latest surrender requests</h5>
                    <a runat="server" href="~/Admin/SurrenderRequests.aspx" class="small">View all</a>
                </div>
                <div class="table-responsive">
                    <table class="table text-nowrap mb-0 table-centered table-hover">
                        <thead>
                            <tr>
                                <th>Pet</th>
                                <th>Owner</th>
                                <th>Submitted</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Max (Dog)</td>
                                <td>Kevin L.</td>
                                <td>16 Oct 2026</td>
                                <td><span class="badge text-success-emphasis bg-success-subtle">Accepted</span></td>
                            </tr>
                            <tr>
                                <td>Tiger (Cat)</td>
                                <td>Anjali P.</td>
                                <td>10 Oct 2026</td>
                                <td><span class="badge text-warning-emphasis bg-warning-subtle">Pending</span></td>
                            </tr>
                            <tr>
                                <td>Snowy (Rabbit)</td>
                                <td>Marc T.</td>
                                <td>2 Sep 2026</td>
                                <td><span class="badge text-danger-emphasis bg-danger-subtle">Rejected</span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <!-- Latest adoption applications -->
        <div class="col-xl-6">
            <div class="card card-lg h-100">
                <div class="card-header border-bottom-0 d-flex justify-content-between align-items-center">
                    <h5 class="mb-0">Latest adoption applications</h5>
                    <a runat="server" href="~/Admin/AdoptionApplications.aspx" class="small">View all</a>
                </div>
                <div class="table-responsive">
                    <table class="table text-nowrap mb-0 table-centered table-hover">
                        <thead>
                            <tr>
                                <th>Pet</th>
                                <th>Adopter</th>
                                <th>Applied</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Luna (Dog)</td>
                                <td>Priya R.</td>
                                <td>20 Oct 2026</td>
                                <td><span class="badge text-warning-emphasis bg-warning-subtle">Pending</span></td>
                            </tr>
                            <tr>
                                <td>Milo (Cat)</td>
                                <td>Aisha M.</td>
                                <td>2 Oct 2026</td>
                                <td><span class="badge text-success-emphasis bg-success-subtle">Approved</span></td>
                            </tr>
                            <tr>
                                <td>Coco (Rabbit)</td>
                                <td>David K.</td>
                                <td>28 Sep 2026</td>
                                <td><span class="badge text-info-emphasis bg-info-subtle">Under review</span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
