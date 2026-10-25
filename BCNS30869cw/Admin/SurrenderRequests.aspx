<%@ Page Title="Surrender Requests | HappyPaws Admin" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="SurrenderRequests.aspx.cs" Inherits="BCNS30869cw.Admin.SurrenderRequests" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- ===== PAGE HEADING ===== -->
    <div class="mb-6">
        <h1 class="fs-3 mb-1">Surrender Requests</h1>
        <p class="mb-0 text-secondary">Review requests from pet owners, accept or reject them, and arrange drop-off.</p>
    </div>

    <!-- Message after an action (e.g. "Request #5 accepted. Email sent to the owner.") -->
    <asp:Label ID="lblMessage" runat="server" CssClass="d-block mb-4 fw-semibold text-success" EnableViewState="false" />

    <!-- ===== LIST OF REQUESTS ===== -->
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
                        <asp:ListItem Value="Accepted" Text="Accepted" />
                        <asp:ListItem Value="Rejected" Text="Rejected" />
                        <asp:ListItem Value="DroppedOff" Text="Dropped off" />
                        <asp:ListItem Value="Cancelled" Text="Cancelled" />
                    </asp:DropDownList>
                </div>
                <div class="col-md-5">
                    <asp:Label runat="server" AssociatedControlID="txtSearch" Text="Search pet or owner" CssClass="form-label" />
                    <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" MaxLength="50" placeholder="e.g. Tiger or Kevin" />
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
                        <th>Owner</th>
                        <th>Submitted</th>
                        <th>Documents</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>

                    <!-- Pending -->
                    <tr>
                        <td>5</td>
                        <td>
                            <div class="d-flex align-items-center gap-2">
                                <img runat="server" src="~/Assets/public/img/happypaws/request-2.jpg" class="hp-admin-thumb" alt="Tiger" />
                                <span>Tiger <small class="text-secondary">(Cat)</small></span>
                            </div>
                        </td>
                        <td>Anjali P.</td>
                        <td>10 Oct 2026</td>
                        <td>2 / 4</td>
                        <td><span class="badge text-warning-emphasis bg-warning-subtle">Pending</span></td>
                        <td>
                            <asp:LinkButton ID="btnReview5" runat="server" CssClass="btn btn-white btn-sm" CausesValidation="false">Review</asp:LinkButton>
                        </td>
                    </tr>

                    <!-- Under review -->
                    <tr>
                        <td>8</td>
                        <td>
                            <div class="d-flex align-items-center gap-2">
                                <img runat="server" src="~/Assets/public/img/happypaws/pet-4.jpg" class="hp-admin-thumb" alt="Rex" />
                                <span>Rex <small class="text-secondary">(Dog)</small></span>
                            </div>
                        </td>
                        <td>Sanjay B.</td>
                        <td>21 Oct 2026</td>
                        <td>4 / 4</td>
                        <td><span class="badge text-info-emphasis bg-info-subtle">Under review</span></td>
                        <td>
                            <asp:LinkButton ID="btnReview8" runat="server" CssClass="btn btn-white btn-sm" CausesValidation="false">Review</asp:LinkButton>
                        </td>
                    </tr>

                    <!-- Accepted: waiting for drop-off -->
                    <tr>
                        <td>7</td>
                        <td>
                            <div class="d-flex align-items-center gap-2">
                                <img runat="server" src="~/Assets/public/img/happypaws/request-1.jpg" class="hp-admin-thumb" alt="Max" />
                                <span>Max <small class="text-secondary">(Dog)</small></span>
                            </div>
                        </td>
                        <td>Kevin L.</td>
                        <td>16 Oct 2026</td>
                        <td>4 / 4</td>
                        <td><span class="badge text-success-emphasis bg-success-subtle">Accepted</span></td>
                        <td>
                            <asp:LinkButton ID="btnReview7" runat="server" CssClass="btn btn-white btn-sm" CausesValidation="false">Review</asp:LinkButton>
                            <asp:LinkButton ID="btnDroppedOff7" runat="server" CssClass="btn btn-primary btn-sm" CausesValidation="false"
                                OnClientClick="return confirm('Confirm that Max has arrived at the shelter? Max will be added to the pet catalogue.');">
                                Mark dropped off</asp:LinkButton>
                        </td>
                    </tr>

                    <!-- Rejected -->
                    <tr>
                        <td>3</td>
                        <td>
                            <div class="d-flex align-items-center gap-2">
                                <img runat="server" src="~/Assets/public/img/happypaws/request-3.jpg" class="hp-admin-thumb" alt="Snowy" />
                                <span>Snowy <small class="text-secondary">(Rabbit)</small></span>
                            </div>
                        </td>
                        <td>Marc T.</td>
                        <td>2 Sep 2026</td>
                        <td>1 / 4</td>
                        <td><span class="badge text-danger-emphasis bg-danger-subtle">Rejected</span></td>
                        <td>
                            <asp:LinkButton ID="btnReview3" runat="server" CssClass="btn btn-white btn-sm" CausesValidation="false">View</asp:LinkButton>
                        </td>
                    </tr>

                </tbody>
            </table>
        </div>
    </div>

    <!-- ===== REVIEW PANEL (shown by the backend when "Review" is clicked; visible now for the design) ===== -->
    <asp:Panel ID="pnlReview" runat="server" Visible="true">
        <asp:HiddenField ID="hfRequestId" runat="server" Value="5" />

        <div class="card card-lg">
            <div class="card-header border-bottom-0">
                <h5 class="mb-0">Review request #5: Tiger</h5>
            </div>
            <div class="card-body">
                <div class="row g-6">

                    <!-- LEFT: request details -->
                    <div class="col-lg-6">
                        <img runat="server" src="~/Assets/public/img/happypaws/request-2.jpg" class="hp-admin-photo mb-4" alt="Tiger" />

                        <h6 class="mb-2">Pet</h6>
                        <p class="mb-4">Tiger · Cat · Domestic shorthair · 4 years · Male · Medium · Vaccinated: Yes<br />
                            <span class="text-secondary">Temperament: calm, likes to sleep in the sun.</span></p>

                        <h6 class="mb-2">Reason for surrender</h6>
                        <p class="mb-4"><b>Moving house or abroad.</b> I am moving to France for work in December and cannot take Tiger with me.</p>

                        <h6 class="mb-2">Owner</h6>
                        <p class="mb-4">Anjali P. · anjali.p@example.com · 5823 4567</p>

                        <h6 class="mb-2">Documents (2 of 4)</h6>
                        <ul class="list-unstyled mb-0">
                            <li><i class="ti ti-circle-check text-success"></i> Vaccination record · <a href="#" target="_blank" rel="noopener">View</a></li>
                            <li><i class="ti ti-circle-check text-success"></i> Medical record · <a href="#" target="_blank" rel="noopener">View</a></li>
                            <li><i class="ti ti-circle text-secondary"></i> Owner's ID: not uploaded</li>
                            <li><i class="ti ti-circle text-secondary"></i> Signed agreement form: not uploaded</li>
                        </ul>
                    </div>

                    <!-- RIGHT: decision -->
                    <div class="col-lg-6">

                        <!-- Option 1: ACCEPT (ValidationGroup "Accept") -->
                        <div class="border rounded-3 p-4 mb-4">
                            <h6 class="mb-3 text-success"><i class="ti ti-check"></i> Accept and arrange drop-off</h6>

                            <div class="row g-3">
                                <div class="col-sm-6">
                                    <asp:Label runat="server" AssociatedControlID="txtDropOffDate" Text="Drop-off date" CssClass="form-label" />
                                    <asp:TextBox ID="txtDropOffDate" runat="server" TextMode="Date" CssClass="form-control" />
                                    <asp:RequiredFieldValidator ID="rfvDropOffDate" runat="server" ControlToValidate="txtDropOffDate" ValidationGroup="Accept"
                                        ErrorMessage="Please choose a date." CssClass="text-danger small" Display="Dynamic" />
                                </div>
                                <div class="col-sm-6">
                                    <asp:Label runat="server" AssociatedControlID="txtDropOffTime" Text="Time" CssClass="form-label" />
                                    <asp:TextBox ID="txtDropOffTime" runat="server" TextMode="Time" CssClass="form-control" />
                                    <asp:RequiredFieldValidator ID="rfvDropOffTime" runat="server" ControlToValidate="txtDropOffTime" ValidationGroup="Accept"
                                        ErrorMessage="Please choose a time." CssClass="text-danger small" Display="Dynamic" />
                                </div>
                                <div class="col-12">
                                    <asp:Label runat="server" AssociatedControlID="txtDropOffPlace" Text="Place" CssClass="form-label" />
                                    <asp:TextBox ID="txtDropOffPlace" runat="server" CssClass="form-control" MaxLength="100" Text="HappyPaws Shelter, Port Louis" />
                                    <asp:RequiredFieldValidator ID="rfvDropOffPlace" runat="server" ControlToValidate="txtDropOffPlace" ValidationGroup="Accept"
                                        ErrorMessage="Please enter the place." CssClass="text-danger small" Display="Dynamic" />
                                </div>
                                <div class="col-12">
                                    <asp:Label runat="server" AssociatedControlID="txtInstructions" Text="Instructions for the owner (optional)" CssClass="form-label" />
                                    <asp:TextBox ID="txtInstructions" runat="server" TextMode="MultiLine" Rows="2" CssClass="form-control"
                                        placeholder="e.g. Please bring the vaccination card and a favourite toy." />
                                    <asp:RegularExpressionValidator ID="revInstructions" runat="server" ControlToValidate="txtInstructions" ValidationGroup="Accept"
                                        ValidationExpression="^[\s\S]{0,300}$"
                                        ErrorMessage="300 characters or fewer." CssClass="text-danger small" Display="Dynamic" />
                                </div>
                                <div class="col-12">
                                    <asp:Button ID="btnAccept" runat="server" Text="Accept &amp; email owner" CssClass="btn btn-success" ValidationGroup="Accept" />
                                </div>
                            </div>
                        </div>

                        <!-- Option 2: REJECT (ValidationGroup "Reject") -->
                        <div class="border rounded-3 p-4">
                            <h6 class="mb-3 text-danger"><i class="ti ti-x"></i> Reject</h6>
                            <asp:Label runat="server" AssociatedControlID="txtRejectReason" Text="Reason (sent to the owner)" CssClass="form-label" />
                            <asp:TextBox ID="txtRejectReason" runat="server" TextMode="MultiLine" Rows="2" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="rfvRejectReason" runat="server" ControlToValidate="txtRejectReason" ValidationGroup="Reject"
                                ErrorMessage="Please give a reason." CssClass="text-danger small" Display="Dynamic" />
                            <asp:RegularExpressionValidator ID="revRejectReason" runat="server" ControlToValidate="txtRejectReason" ValidationGroup="Reject"
                                ValidationExpression="^[\s\S]{0,300}$"
                                ErrorMessage="300 characters or fewer." CssClass="text-danger small" Display="Dynamic" />
                            <div class="mt-3">
                                <asp:Button ID="btnReject" runat="server" Text="Reject &amp; email owner" CssClass="btn btn-outline-danger" ValidationGroup="Reject"
                                    OnClientClick="if (Page_ClientValidate('Reject')) { return confirm('Reject this request and email the owner?'); } return false;" />
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
