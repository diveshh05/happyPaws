<%@ Page Title="Adoption Applications | HappyPaws Admin" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdoptionApplications.aspx.cs" Inherits="BCNS30869cw.Admin.AdoptionApplications" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- ===== PAGE HEADING ===== -->
    <div class="mb-6">
        <h1 class="fs-3 mb-1">Adoption Applications</h1>
        <p class="mb-0 text-secondary">Review applications from adopters and approve or reject them. Adopters are notified by email and on their My Applications page.</p>
    </div>

    <!-- Message after an action (e.g. "Application #12 approved. Email sent to Priya R.") -->
    <asp:Label ID="lblMessage" runat="server" CssClass="d-block mb-4 fw-semibold text-success" EnableViewState="false" />

    <!-- ===== LIST OF APPLICATIONS ===== -->
    <div class="card card-lg mb-6">

        <!-- Filters -->
        <div class="card-header border-bottom-0">
            <div class="row g-3 align-items-end">
                <div class="col-md-4">
                    <asp:Label runat="server" AssociatedControlID="ddlStatusFilter" Text="Status" CssClass="form-label" />
                    <asp:DropDownList ID="ddlStatusFilter" runat="server" CssClass="form-select">
                        <asp:ListItem Value="" Text="All statuses" />
                        <asp:ListItem Value="Pending" Text="Pending" />
                        <asp:ListItem Value="UnderReview" Text="Under review" />
                        <asp:ListItem Value="Approved" Text="Approved" />
                        <asp:ListItem Value="Rejected" Text="Rejected" />
                    </asp:DropDownList>
                </div>
                <div class="col-md-5">
                    <asp:Label runat="server" AssociatedControlID="txtSearch" Text="Search pet or adopter" CssClass="form-label" />
                    <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" MaxLength="50" placeholder="e.g. Luna or Priya" />
                    <asp:RegularExpressionValidator ID="revSearch" runat="server" ControlToValidate="txtSearch" ValidationGroup="Filter"
                        ValidationExpression="^[A-Za-z\s\-']{0,50}$"
                        ErrorMessage="Letters, spaces, hyphens and apostrophes only." CssClass="text-danger small" Display="Dynamic" />
                </div>
                <div class="col-md-3">
                    <asp:Button ID="btnFilter" runat="server" Text="Filter" CssClass="btn btn-primary w-100" ValidationGroup="Filter" />
                </div>
            </div>
        </div>

        <!-- Table -->
        <div class="table-responsive">
            <table class="table text-nowrap mb-0 table-centered table-hover">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Pet</th>
                        <th>Adopter</th>
                        <th>Applied</th>
                        <th>Applicants for pet</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>

                    <!-- Pending -->
                    <tr>
                        <td>12</td>
                        <td>
                            <div class="d-flex align-items-center gap-2">
                                <img runat="server" src="~/Assets/public/img/happypaws/pet-1.jpg" class="hp-admin-thumb" alt="Luna" />
                                <span>Luna <small class="text-secondary">(Dog)</small></span>
                            </div>
                        </td>
                        <td>Priya R.</td>
                        <td>20 Oct 2026</td>
                        <td>2</td>
                        <td><span class="badge text-warning-emphasis bg-warning-subtle">Pending</span></td>
                        <td><asp:LinkButton ID="btnReview12" runat="server" CssClass="btn btn-white btn-sm" CausesValidation="false">Review</asp:LinkButton></td>
                    </tr>

                    <!-- Under review -->
                    <tr>
                        <td>11</td>
                        <td>
                            <div class="d-flex align-items-center gap-2">
                                <img runat="server" src="~/Assets/public/img/happypaws/pet-3.jpg" class="hp-admin-thumb" alt="Coco" />
                                <span>Coco <small class="text-secondary">(Rabbit)</small></span>
                            </div>
                        </td>
                        <td>David K.</td>
                        <td>28 Sep 2026</td>
                        <td>1</td>
                        <td><span class="badge text-info-emphasis bg-info-subtle">Under review</span></td>
                        <td><asp:LinkButton ID="btnReview11" runat="server" CssClass="btn btn-white btn-sm" CausesValidation="false">Review</asp:LinkButton></td>
                    </tr>

                    <!-- Approved -->
                    <tr>
                        <td>9</td>
                        <td>
                            <div class="d-flex align-items-center gap-2">
                                <img runat="server" src="~/Assets/public/img/happypaws/pet-2.jpg" class="hp-admin-thumb" alt="Milo" />
                                <span>Milo <small class="text-secondary">(Cat)</small></span>
                            </div>
                        </td>
                        <td>Aisha M.</td>
                        <td>2 Oct 2026</td>
                        <td>1</td>
                        <td><span class="badge text-success-emphasis bg-success-subtle">Approved</span></td>
                        <td><asp:LinkButton ID="btnReview9" runat="server" CssClass="btn btn-white btn-sm" CausesValidation="false">View</asp:LinkButton></td>
                    </tr>

                    <!-- Rejected -->
                    <tr>
                        <td>6</td>
                        <td>
                            <div class="d-flex align-items-center gap-2">
                                <img runat="server" src="~/Assets/public/img/happypaws/pet-4.jpg" class="hp-admin-thumb" alt="Rocky" />
                                <span>Rocky <small class="text-secondary">(Dog)</small></span>
                            </div>
                        </td>
                        <td>Priya R.</td>
                        <td>15 Sep 2026</td>
                        <td>3</td>
                        <td><span class="badge text-danger-emphasis bg-danger-subtle">Rejected</span></td>
                        <td><asp:LinkButton ID="btnReview6" runat="server" CssClass="btn btn-white btn-sm" CausesValidation="false">View</asp:LinkButton></td>
                    </tr>

                </tbody>
            </table>
        </div>
    </div>

    <!-- ===== REVIEW PANEL (shown by the backend when "Review" is clicked; visible now for the design) ===== -->
    <asp:Panel ID="pnlReview" runat="server" Visible="true">
        <asp:HiddenField ID="hfApplicationId" runat="server" Value="12" />

        <div class="card card-lg">
            <div class="card-header border-bottom-0">
                <h5 class="mb-0">Review application #12: Luna, by Priya R.</h5>
            </div>
            <div class="card-body">
                <div class="row g-6">

                    <!-- LEFT: pet + the adopter's answers (from the Adoption Form, F15) -->
                    <div class="col-lg-6">
                        <div class="d-flex align-items-center gap-3 mb-4">
                            <img runat="server" src="~/Assets/public/img/happypaws/pet-1.jpg" class="hp-admin-thumb" alt="Luna" />
                            <div>
                                <h6 class="mb-0">Luna</h6>
                                <small class="text-secondary">Dog · Labrador mix · 2 years · Female</small>
                            </div>
                        </div>

                        <h6 class="mb-2">Adopter</h6>
                        <p class="mb-4">Priya Ramdin · priya.r@example.com · 5712 3456<br />
                            <span class="text-secondary">12 Royal Road, Rose Hill</span></p>

                        <h6 class="mb-2">Home</h6>
                        <ul class="list-unstyled mb-4">
                            <li>Type of home: <b>House with a garden</b></li>
                            <li>Own or rent: <b>Own</b></li>
                            <li>Hours alone per day: <b>4</b></li>
                        </ul>

                        <h6 class="mb-2">Household</h6>
                        <ul class="list-unstyled mb-4">
                            <li>Adults: <b>2</b> · Children: <b>1</b></li>
                            <li>Other pets: <b>Yes</b>: one 5-year-old cat, friendly with dogs</li>
                        </ul>

                        <h6 class="mb-2">Experience with pets</h6>
                        <p class="mb-4">We had a Labrador for 12 years and our current cat is 5. We walk every morning.</p>

                        <h6 class="mb-2">Why this pet</h6>
                        <p class="mb-4">Luna seems playful and gentle, perfect for our daughter, and we have a big garden.</p>

                        <h6 class="mb-2">Other applicants for Luna</h6>
                        <ul class="list-unstyled mb-0">
                            <li><i class="ti ti-user"></i> Sarah N.: Pending (applied 22 Oct 2026)</li>
                        </ul>
                    </div>

                    <!-- RIGHT: decision -->
                    <div class="col-lg-6">

                        <!-- Option 1: APPROVE (ValidationGroup "Approve") -->
                        <div class="border rounded-3 p-4 mb-4">
                            <h6 class="mb-3 text-success"><i class="ti ti-check"></i> Approve</h6>
                            <div class="row g-3">
                                <div class="col-sm-6">
                                    <asp:Label runat="server" AssociatedControlID="txtHomeVisitDate" Text="Home visit date (optional)" CssClass="form-label" />
                                    <asp:TextBox ID="txtHomeVisitDate" runat="server" TextMode="Date" CssClass="form-control" />
                                </div>
                                <div class="col-12">
                                    <asp:Label runat="server" AssociatedControlID="txtApproveMessage" Text="Message to the adopter" CssClass="form-label" />
                                    <asp:TextBox ID="txtApproveMessage" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control"
                                        placeholder="e.g. Congratulations! We will visit your home on 30 Oct at 10:00." />
                                    <asp:RequiredFieldValidator ID="rfvApproveMessage" runat="server" ControlToValidate="txtApproveMessage" ValidationGroup="Approve"
                                        ErrorMessage="Please write a message for the adopter." CssClass="text-danger small" Display="Dynamic" />
                                    <asp:RegularExpressionValidator ID="revApproveMessage" runat="server" ControlToValidate="txtApproveMessage" ValidationGroup="Approve"
                                        ValidationExpression="^[\s\S]{0,300}$"
                                        ErrorMessage="300 characters or fewer." CssClass="text-danger small" Display="Dynamic" />
                                </div>
                                <div class="col-12">
                                    <p class="small text-secondary mb-2">Approving reserves Luna and automatically declines the other pending application(s) for her.</p>
                                    <asp:Button ID="btnApprove" runat="server" Text="Approve &amp; notify adopter" CssClass="btn btn-success" ValidationGroup="Approve"
                                        OnClientClick="if (Page_ClientValidate('Approve')) { return confirm('Approve this application? Other pending applications for this pet will be declined.'); } return false;" />
                                </div>
                            </div>
                        </div>

                        <!-- Option 2: REJECT (ValidationGroup "Reject") -->
                        <div class="border rounded-3 p-4">
                            <h6 class="mb-3 text-danger"><i class="ti ti-x"></i> Reject</h6>
                            <asp:Label runat="server" AssociatedControlID="txtRejectReason" Text="Reason (sent to the adopter)" CssClass="form-label" />
                            <asp:TextBox ID="txtRejectReason" runat="server" TextMode="MultiLine" Rows="2" CssClass="form-control"
                                placeholder="e.g. Luna needs a home without small children." />
                            <asp:RequiredFieldValidator ID="rfvRejectReason" runat="server" ControlToValidate="txtRejectReason" ValidationGroup="Reject"
                                ErrorMessage="Please give a reason." CssClass="text-danger small" Display="Dynamic" />
                            <asp:RegularExpressionValidator ID="revRejectReason" runat="server" ControlToValidate="txtRejectReason" ValidationGroup="Reject"
                                ValidationExpression="^[\s\S]{0,300}$"
                                ErrorMessage="300 characters or fewer." CssClass="text-danger small" Display="Dynamic" />
                            <div class="mt-3">
                                <asp:Button ID="btnReject" runat="server" Text="Reject &amp; notify adopter" CssClass="btn btn-outline-danger" ValidationGroup="Reject"
                                    OnClientClick="if (Page_ClientValidate('Reject')) { return confirm('Reject this application and notify the adopter?'); } return false;" />
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </asp:Panel>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
