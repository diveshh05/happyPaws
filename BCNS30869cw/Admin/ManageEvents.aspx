<%@ Page Title="Events | HappyPaws Admin" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ManageEvents.aspx.cs" Inherits="BCNS30869cw.Admin.ManageEvents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- ===== PAGE HEADING ===== -->
    <div class="mb-6">
        <h1 class="fs-3 mb-1">Events</h1>
        <p class="mb-0 text-secondary">Events posted here appear on the public Events page and on the home page. Only upcoming events are shown to visitors.</p>
    </div>

    <!-- Message after an action (e.g. "Event 'Adoption Day' posted.") -->
    <asp:Label ID="lblMessage" runat="server" CssClass="d-block mb-4 fw-semibold text-success" EnableViewState="false" />

    <div class="row g-6">

        <!-- ========== LEFT: ADD / EDIT FORM ========== -->
        <div class="col-xl-5">
            <div class="card card-lg">
                <div class="card-header border-bottom-0">
                    <!-- The backend changes this to "Edit event" when Edit is clicked -->
                    <h5 class="mb-0"><asp:Literal ID="litFormTitle" runat="server" Text="Post a new event" /></h5>
                </div>
                <div class="card-body pt-0">

                    <!-- Which event is being edited (empty when posting a new one) -->
                    <asp:HiddenField ID="hfEventId" runat="server" />

                    <div class="row g-3">

                        <!-- Title -->
                        <div class="col-12">
                            <asp:Label runat="server" AssociatedControlID="txtTitle" Text="Title" CssClass="form-label" />
                            <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control" MaxLength="80" placeholder="e.g. HappyPaws Adoption Day" />
                            <asp:RequiredFieldValidator ID="rfvTitle" runat="server" ControlToValidate="txtTitle"
                                ErrorMessage="Please enter a title." CssClass="text-danger small" Display="Dynamic" />
                        </div>

                        <!-- Category -->
                        <div class="col-sm-6">
                            <asp:Label runat="server" AssociatedControlID="ddlCategory" Text="Category" CssClass="form-label" />
                            <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-select">
                                <asp:ListItem Value="" Text="-- Choose --" />
                                <asp:ListItem Value="Adoption Day" Text="Adoption Day" />
                                <asp:ListItem Value="Fundraiser" Text="Fundraiser" />
                                <asp:ListItem Value="Workshop" Text="Workshop" />
                                <asp:ListItem Value="Volunteering" Text="Volunteering" />
                                <asp:ListItem Value="Other" Text="Other" />
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvCategory" runat="server" ControlToValidate="ddlCategory"
                                ErrorMessage="Please choose a category." CssClass="text-danger small" Display="Dynamic" />
                        </div>

                        <!-- Date -->
                        <div class="col-sm-6">
                            <asp:Label runat="server" AssociatedControlID="txtDate" Text="Date" CssClass="form-label" />
                            <asp:TextBox ID="txtDate" runat="server" TextMode="Date" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="rfvDate" runat="server" ControlToValidate="txtDate"
                                ErrorMessage="Please choose a date." CssClass="text-danger small" Display="Dynamic" />
                        </div>

                        <!-- Start time -->
                        <div class="col-sm-6">
                            <asp:Label runat="server" AssociatedControlID="txtStartTime" Text="Start time" CssClass="form-label" />
                            <asp:TextBox ID="txtStartTime" runat="server" TextMode="Time" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="rfvStartTime" runat="server" ControlToValidate="txtStartTime"
                                ErrorMessage="Please choose a start time." CssClass="text-danger small" Display="Dynamic" />
                        </div>

                        <!-- End time: must be after the start time -->
                        <div class="col-sm-6">
                            <asp:Label runat="server" AssociatedControlID="txtEndTime" Text="End time" CssClass="form-label" />
                            <asp:TextBox ID="txtEndTime" runat="server" TextMode="Time" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="rfvEndTime" runat="server" ControlToValidate="txtEndTime"
                                ErrorMessage="Please choose an end time." CssClass="text-danger small" Display="Dynamic" />
                            <asp:CompareValidator ID="cvEndTime" runat="server" ControlToValidate="txtEndTime" ControlToCompare="txtStartTime"
                                Operator="GreaterThan" Type="String"
                                ErrorMessage="The end time must be after the start time." CssClass="text-danger small" Display="Dynamic" />
                        </div>

                        <!-- Location -->
                        <div class="col-12">
                            <asp:Label runat="server" AssociatedControlID="txtLocation" Text="Location" CssClass="form-label" />
                            <asp:TextBox ID="txtLocation" runat="server" CssClass="form-control" MaxLength="100" placeholder="e.g. Caudan Waterfront, Port Louis" />
                            <asp:RequiredFieldValidator ID="rfvLocation" runat="server" ControlToValidate="txtLocation"
                                ErrorMessage="Please enter a location." CssClass="text-danger small" Display="Dynamic" />
                        </div>

                        <!-- Description -->
                        <div class="col-12">
                            <asp:Label runat="server" AssociatedControlID="txtDescription" Text="Short description" CssClass="form-label" />
                            <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" />
                            <asp:RequiredFieldValidator ID="rfvDescription" runat="server" ControlToValidate="txtDescription"
                                ErrorMessage="Please write a short description." CssClass="text-danger small" Display="Dynamic" />
                            <asp:RegularExpressionValidator ID="revDescription" runat="server" ControlToValidate="txtDescription"
                                ValidationExpression="^[\s\S]{0,300}$"
                                ErrorMessage="300 characters or fewer." CssClass="text-danger small" Display="Dynamic" />
                        </div>

                        <!-- Photo (required for a new event; the backend disables rfvPhoto when editing) -->
                        <div class="col-12">
                            <asp:Label runat="server" AssociatedControlID="fuPhoto" Text="Photo" CssClass="form-label" />
                            <asp:FileUpload ID="fuPhoto" runat="server" CssClass="form-control" accept=".jpg,.jpeg,.png" />
                            <div class="form-text">JPG or PNG, maximum 2 MB. When editing, leave empty to keep the current photo.</div>
                            <asp:RequiredFieldValidator ID="rfvPhoto" runat="server" ControlToValidate="fuPhoto"
                                ErrorMessage="Please choose a photo." CssClass="text-danger small" Display="Dynamic" />
                            <asp:RegularExpressionValidator ID="revPhoto" runat="server" ControlToValidate="fuPhoto"
                                ValidationExpression="^.+\.([jJ][pP][eE]?[gG]|[pP][nN][gG])$"
                                ErrorMessage="Only JPG or PNG images are allowed." CssClass="text-danger small" Display="Dynamic" />
                        </div>

                        <!-- Buttons -->
                        <div class="col-12 d-flex gap-2">
                            <!-- The backend changes the text to "Save Changes" when editing -->
                            <asp:Button ID="btnSave" runat="server" Text="Post Event" CssClass="btn btn-primary" />
                            <!-- Clears the form and leaves edit mode -->
                            <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-white" CausesValidation="false" />
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- ========== RIGHT: LIST OF EVENTS ========== -->
        <div class="col-xl-7">
            <div class="card card-lg">
                <div class="card-header border-bottom-0">
                    <h5 class="mb-0">All events</h5>
                </div>
                <div class="table-responsive">
                    <table class="table text-nowrap mb-0 table-centered table-hover">
                        <thead>
                            <tr>
                                <th>Event</th>
                                <th>Date</th>
                                <th>Status</th>
                                <th class="text-end">Actions</th>
                            </tr>
                        </thead>
                        <tbody>

                            <tr>
                                <td>
                                    <div class="d-flex align-items-center gap-2">
                                        <img runat="server" src="~/Assets/public/img/happypaws/event-1.jpg" class="hp-admin-thumb" alt="" />
                                        <div>
                                            <div class="fw-semibold">HappyPaws Adoption Day</div>
                                            <small class="text-secondary">Adoption Day · Caudan Waterfront</small>
                                        </div>
                                    </div>
                                </td>
                                <td>14 Nov 2026<br /><small class="text-secondary">9:00 – 15:00</small></td>
                                <td><span class="badge text-success-emphasis bg-success-subtle">Upcoming</span></td>
                                <td class="text-end">
                                    <asp:LinkButton ID="btnEdit1" runat="server" CssClass="btn btn-white btn-sm" CausesValidation="false">
                                        <i class="ti ti-pencil"></i> Edit</asp:LinkButton>
                                    <asp:LinkButton ID="btnDelete1" runat="server" CssClass="btn btn-outline-danger btn-sm" CausesValidation="false"
                                        OnClientClick="return confirm('Delete this event? It will disappear from the website.');">
                                        <i class="ti ti-trash"></i></asp:LinkButton>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <div class="d-flex align-items-center gap-2">
                                        <img runat="server" src="~/Assets/public/img/happypaws/event-2.jpg" class="hp-admin-thumb" alt="" />
                                        <div>
                                            <div class="fw-semibold">Paws &amp; Pancakes Charity Breakfast</div>
                                            <small class="text-secondary">Fundraiser · HappyPaws Shelter</small>
                                        </div>
                                    </div>
                                </td>
                                <td>28 Nov 2026<br /><small class="text-secondary">8:00 – 11:00</small></td>
                                <td><span class="badge text-success-emphasis bg-success-subtle">Upcoming</span></td>
                                <td class="text-end">
                                    <asp:LinkButton ID="btnEdit2" runat="server" CssClass="btn btn-white btn-sm" CausesValidation="false">
                                        <i class="ti ti-pencil"></i> Edit</asp:LinkButton>
                                    <asp:LinkButton ID="btnDelete2" runat="server" CssClass="btn btn-outline-danger btn-sm" CausesValidation="false"
                                        OnClientClick="return confirm('Delete this event? It will disappear from the website.');">
                                        <i class="ti ti-trash"></i></asp:LinkButton>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <div class="d-flex align-items-center gap-2">
                                        <img runat="server" src="~/Assets/public/img/happypaws/event-3.jpg" class="hp-admin-thumb" alt="" />
                                        <div>
                                            <div class="fw-semibold">Caring for Your New Pet: Free Owner Workshop</div>
                                            <small class="text-secondary">Workshop · HappyPaws Shelter</small>
                                        </div>
                                    </div>
                                </td>
                                <td>12 Dec 2026<br /><small class="text-secondary">10:00 – 12:00</small></td>
                                <td><span class="badge text-success-emphasis bg-success-subtle">Upcoming</span></td>
                                <td class="text-end">
                                    <asp:LinkButton ID="btnEdit3" runat="server" CssClass="btn btn-white btn-sm" CausesValidation="false">
                                        <i class="ti ti-pencil"></i> Edit</asp:LinkButton>
                                    <asp:LinkButton ID="btnDelete3" runat="server" CssClass="btn btn-outline-danger btn-sm" CausesValidation="false"
                                        OnClientClick="return confirm('Delete this event? It will disappear from the website.');">
                                        <i class="ti ti-trash"></i></asp:LinkButton>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <div class="d-flex align-items-center gap-2">
                                        <img runat="server" src="~/Assets/public/img/happypaws/event-4.jpg" class="hp-admin-thumb" alt="" />
                                        <div>
                                            <div class="fw-semibold">Home for the Holidays Adoption Drive</div>
                                            <small class="text-secondary">Adoption Day · Grand Baie Village Hall</small>
                                        </div>
                                    </div>
                                </td>
                                <td>19 Dec 2026<br /><small class="text-secondary">9:00 – 14:00</small></td>
                                <td><span class="badge text-success-emphasis bg-success-subtle">Upcoming</span></td>
                                <td class="text-end">
                                    <asp:LinkButton ID="btnEdit4" runat="server" CssClass="btn btn-white btn-sm" CausesValidation="false">
                                        <i class="ti ti-pencil"></i> Edit</asp:LinkButton>
                                    <asp:LinkButton ID="btnDelete4" runat="server" CssClass="btn btn-outline-danger btn-sm" CausesValidation="false"
                                        OnClientClick="return confirm('Delete this event? It will disappear from the website.');">
                                        <i class="ti ti-trash"></i></asp:LinkButton>
                                </td>
                            </tr>

                            <!-- A past event: kept for records, hidden from visitors -->
                            <tr class="text-secondary">
                                <td>
                                    <div class="d-flex align-items-center gap-2">
                                        <img runat="server" src="~/Assets/public/img/happypaws/event-5.jpg" class="hp-admin-thumb opacity-50" alt="" />
                                        <div>
                                            <div class="fw-semibold">Free Vaccination Morning</div>
                                            <small>Workshop · HappyPaws Shelter</small>
                                        </div>
                                    </div>
                                </td>
                                <td>10 Oct 2026<br /><small>9:00 – 12:00</small></td>
                                <td><span class="badge text-secondary-emphasis bg-secondary-subtle">Past</span></td>
                                <td class="text-end">
                                    <asp:LinkButton ID="btnDelete5" runat="server" CssClass="btn btn-outline-danger btn-sm" CausesValidation="false"
                                        OnClientClick="return confirm('Delete this past event?');">
                                        <i class="ti ti-trash"></i></asp:LinkButton>
                                </td>
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
