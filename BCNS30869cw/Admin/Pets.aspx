<%@ Page Title="Pets | HappyPaws Admin" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Pets.aspx.cs" Inherits="BCNS30869cw.Admin.Pets" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- ===== PAGE HEADING ===== -->
    <div class="mb-6">
        <h1 class="fs-3 mb-1">Pets</h1>
        <p class="mb-0 text-secondary">Pets are added automatically when a surrendered pet is dropped off. Edit their details, update their status and choose which pets are featured on the home page.</p>
    </div>

    <!-- Message after an action (e.g. "Luna's details have been saved.") -->
    <asp:Label ID="lblMessage" runat="server" CssClass="d-block mb-4 fw-semibold text-success" EnableViewState="false" />

    <!-- ===== LIST OF PETS ===== -->
    <div class="card card-lg mb-6">

        <!-- Filters (ValidationGroup "Filter") -->
        <div class="card-header border-bottom-0">
            <div class="row g-3 align-items-end">
                <div class="col-md-3">
                    <asp:Label runat="server" AssociatedControlID="ddlTypeFilter" Text="Type" CssClass="form-label" />
                    <asp:DropDownList ID="ddlTypeFilter" runat="server" CssClass="form-select">
                        <asp:ListItem Value="" Text="All types" />
                        <asp:ListItem Value="Dog" Text="Dog" />
                        <asp:ListItem Value="Cat" Text="Cat" />
                        <asp:ListItem Value="Rabbit" Text="Rabbit" />
                        <asp:ListItem Value="Bird" Text="Bird" />
                    </asp:DropDownList>
                </div>
                <div class="col-md-3">
                    <asp:Label runat="server" AssociatedControlID="ddlStatusFilter" Text="Status" CssClass="form-label" />
                    <asp:DropDownList ID="ddlStatusFilter" runat="server" CssClass="form-select">
                        <asp:ListItem Value="" Text="All statuses" />
                        <asp:ListItem Value="Available" Text="Available" />
                        <asp:ListItem Value="Reserved" Text="Reserved" />
                        <asp:ListItem Value="Adopted" Text="Adopted" />
                        <asp:ListItem Value="NotAvailable" Text="Not available" />
                    </asp:DropDownList>
                </div>
                <div class="col-md-4">
                    <asp:Label runat="server" AssociatedControlID="txtSearch" Text="Search name or breed" CssClass="form-label" />
                    <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" MaxLength="50" placeholder="e.g. Luna or Labrador" />
                    <asp:RegularExpressionValidator ID="revSearch" runat="server" ControlToValidate="txtSearch" ValidationGroup="Filter"
                        ValidationExpression="^[A-Za-z\s\-']{0,50}$"
                        ErrorMessage="Letters, spaces, hyphens and apostrophes only." CssClass="text-danger small" Display="Dynamic" />
                </div>
                <div class="col-md-2">
                    <asp:Button ID="btnFilter" runat="server" Text="Filter" CssClass="btn btn-primary w-100" ValidationGroup="Filter" />
                </div>
            </div>
        </div>

        <!-- Table -->
        <div class="table-responsive">
            <table class="table text-nowrap mb-0 table-centered table-hover">
                <thead>
                    <tr>
                        <th>Pet</th>
                        <th>Age / Gender</th>
                        <th>Vaccinated</th>
                        <th>Likes</th>
                        <th>Home page</th>
                        <th>Status</th>
                        <th class="text-end">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>
                            <div class="d-flex align-items-center gap-2">
                                <img runat="server" src="~/Assets/public/img/happypaws/pet-1.jpg" class="hp-admin-thumb" alt="" />
                                <div>
                                    <div class="fw-semibold">Luna</div>
                                    <small class="text-secondary">Dog · Labrador mix</small>
                                </div>
                            </div>
                        </td>
                        <td>2 years · Female</td>
                        <td><i class="ti ti-check text-success"></i> Yes</td>
                        <td>12</td>
                        <td><span class="badge text-primary-emphasis bg-primary-subtle">Featured</span></td>
                        <td><span class="badge text-success-emphasis bg-success-subtle">Available</span></td>
                        <td class="text-end">
                            <asp:LinkButton ID="btnEdit1" runat="server" CssClass="btn btn-white btn-sm" CausesValidation="false">
                                <i class="ti ti-pencil"></i> Edit</asp:LinkButton>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="d-flex align-items-center gap-2">
                                <img runat="server" src="~/Assets/public/img/happypaws/pet-2.jpg" class="hp-admin-thumb" alt="" />
                                <div>
                                    <div class="fw-semibold">Milo</div>
                                    <small class="text-secondary">Cat · Domestic shorthair</small>
                                </div>
                            </div>
                        </td>
                        <td>1 year · Male</td>
                        <td><i class="ti ti-check text-success"></i> Yes</td>
                        <td>8</td>
                        <td><span class="badge text-primary-emphasis bg-primary-subtle">Featured</span></td>
                        <td><span class="badge text-warning-emphasis bg-warning-subtle">Reserved</span></td>
                        <td class="text-end">
                            <asp:LinkButton ID="btnEdit2" runat="server" CssClass="btn btn-white btn-sm" CausesValidation="false">
                                <i class="ti ti-pencil"></i> Edit</asp:LinkButton>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="d-flex align-items-center gap-2">
                                <img runat="server" src="~/Assets/public/img/happypaws/pet-4.jpg" class="hp-admin-thumb" alt="" />
                                <div>
                                    <div class="fw-semibold">Rocky</div>
                                    <small class="text-secondary">Dog · German Shepherd mix</small>
                                </div>
                            </div>
                        </td>
                        <td>4 years · Male</td>
                        <td><i class="ti ti-x text-danger"></i> No</td>
                        <td>5</td>
                        <td><span class="text-secondary small">-</span></td>
                        <td><span class="badge text-success-emphasis bg-success-subtle">Available</span></td>
                        <td class="text-end">
                            <asp:LinkButton ID="btnEdit3" runat="server" CssClass="btn btn-white btn-sm" CausesValidation="false">
                                <i class="ti ti-pencil"></i> Edit</asp:LinkButton>
                        </td>
                    </tr>
                    <tr class="text-secondary">
                        <td>
                            <div class="d-flex align-items-center gap-2">
                                <img runat="server" src="~/Assets/public/img/happypaws/pet-6.jpg" class="hp-admin-thumb opacity-50" alt="" />
                                <div>
                                    <div class="fw-semibold">Bella</div>
                                    <small>Dog · Labrador</small>
                                </div>
                            </div>
                        </td>
                        <td>3 years · Female</td>
                        <td><i class="ti ti-check"></i> Yes</td>
                        <td>21</td>
                        <td>-</td>
                        <td><span class="badge text-secondary-emphasis bg-secondary-subtle">Adopted</span></td>
                        <td class="text-end">
                            <asp:LinkButton ID="btnEdit4" runat="server" CssClass="btn btn-white btn-sm" CausesValidation="false">
                                <i class="ti ti-eye"></i> View</asp:LinkButton>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

    <!-- ===== EDIT PANEL (shown by the backend when "Edit" is clicked; visible now for the design) ===== -->
    <asp:Panel ID="pnlEdit" runat="server" Visible="true">
        <asp:HiddenField ID="hfPetId" runat="server" Value="1" />

        <div class="card card-lg">
            <div class="card-header border-bottom-0">
                <h5 class="mb-0">Edit pet: Luna</h5>
            </div>
            <div class="card-body pt-0">
                <div class="row g-6">

                    <!-- LEFT: photo + status + home page -->
                    <div class="col-lg-4">
                        <img runat="server" src="~/Assets/public/img/happypaws/pet-1.jpg" class="hp-admin-photo mb-3" alt="Luna" />

                        <asp:Label runat="server" AssociatedControlID="fuPhoto" Text="Replace photo (optional)" CssClass="form-label" />
                        <asp:FileUpload ID="fuPhoto" runat="server" CssClass="form-control" accept=".jpg,.jpeg,.png" />
                        <div class="form-text mb-2">JPG or PNG, maximum 2 MB. Leave empty to keep the current photo.</div>
                        <asp:RegularExpressionValidator ID="revPhoto" runat="server" ControlToValidate="fuPhoto" ValidationGroup="Edit"
                            ValidationExpression="^.+\.([jJ][pP][eE]?[gG]|[pP][nN][gG])$"
                            ErrorMessage="Only JPG or PNG images are allowed." CssClass="text-danger small d-block mb-2" Display="Dynamic" />

                        <asp:Label runat="server" AssociatedControlID="ddlStatus" Text="Status" CssClass="form-label mt-3" />
                        <asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-select mb-3">
                            <asp:ListItem Value="Available" Text="Available (shown to visitors)" Selected="True" />
                            <asp:ListItem Value="Reserved" Text="Reserved (application approved)" />
                            <asp:ListItem Value="Adopted" Text="Adopted (handed over)" />
                            <asp:ListItem Value="NotAvailable" Text="Not available (hidden, e.g. medical care)" />
                        </asp:DropDownList>

                        <asp:CheckBox ID="chkFeatured" runat="server" Checked="true" CssClass="form-check"
                            Text=" Show on the home page (Featured Pets)" />
                    </div>

                    <!-- RIGHT: details (ValidationGroup "Edit") -->
                    <div class="col-lg-8">
                        <div class="row g-3">

                            <div class="col-sm-6">
                                <asp:Label runat="server" AssociatedControlID="txtName" Text="Name" CssClass="form-label" />
                                <asp:TextBox ID="txtName" runat="server" CssClass="form-control" MaxLength="50" Text="Luna" />
                                <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ValidationGroup="Edit"
                                    ErrorMessage="Please enter a name." CssClass="text-danger small" Display="Dynamic" />
                                <asp:RegularExpressionValidator ID="revName" runat="server" ControlToValidate="txtName" ValidationGroup="Edit"
                                    ValidationExpression="^[A-Za-z\s\-']{1,50}$"
                                    ErrorMessage="Letters, spaces, hyphens and apostrophes only." CssClass="text-danger small" Display="Dynamic" />
                            </div>

                            <div class="col-sm-6">
                                <asp:Label runat="server" AssociatedControlID="ddlType" Text="Type" CssClass="form-label" />
                                <asp:DropDownList ID="ddlType" runat="server" CssClass="form-select">
                                    <asp:ListItem Value="Dog" Text="Dog" Selected="True" />
                                    <asp:ListItem Value="Cat" Text="Cat" />
                                    <asp:ListItem Value="Rabbit" Text="Rabbit" />
                                    <asp:ListItem Value="Bird" Text="Bird" />
                                </asp:DropDownList>
                            </div>

                            <div class="col-sm-6">
                                <asp:Label runat="server" AssociatedControlID="txtBreed" Text="Breed" CssClass="form-label" />
                                <asp:TextBox ID="txtBreed" runat="server" CssClass="form-control" MaxLength="50" Text="Labrador mix" />
                                <asp:RegularExpressionValidator ID="revBreed" runat="server" ControlToValidate="txtBreed" ValidationGroup="Edit"
                                    ValidationExpression="^[A-Za-z\s\-]{0,50}$"
                                    ErrorMessage="Letters, spaces and hyphens only." CssClass="text-danger small" Display="Dynamic" />
                            </div>

                            <div class="col-sm-3">
                                <asp:Label runat="server" AssociatedControlID="txtAge" Text="Age (years)" CssClass="form-label" />
                                <asp:TextBox ID="txtAge" runat="server" TextMode="Number" CssClass="form-control" min="0" max="30" Text="2" />
                                <asp:RequiredFieldValidator ID="rfvAge" runat="server" ControlToValidate="txtAge" ValidationGroup="Edit"
                                    ErrorMessage="Required." CssClass="text-danger small" Display="Dynamic" />
                                <asp:RangeValidator ID="rvAge" runat="server" ControlToValidate="txtAge" ValidationGroup="Edit"
                                    Type="Integer" MinimumValue="0" MaximumValue="30"
                                    ErrorMessage="0 to 30." CssClass="text-danger small" Display="Dynamic" />
                            </div>

                            <div class="col-sm-3">
                                <asp:Label runat="server" AssociatedControlID="ddlGender" Text="Gender" CssClass="form-label" />
                                <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-select">
                                    <asp:ListItem Value="Male" Text="Male" />
                                    <asp:ListItem Value="Female" Text="Female" Selected="True" />
                                </asp:DropDownList>
                            </div>

                            <div class="col-sm-4">
                                <asp:Label runat="server" AssociatedControlID="ddlSize" Text="Size" CssClass="form-label" />
                                <asp:DropDownList ID="ddlSize" runat="server" CssClass="form-select">
                                    <asp:ListItem Value="Small" Text="Small" />
                                    <asp:ListItem Value="Medium" Text="Medium" Selected="True" />
                                    <asp:ListItem Value="Large" Text="Large" />
                                </asp:DropDownList>
                            </div>

                            <div class="col-sm-4">
                                <asp:Label runat="server" AssociatedControlID="ddlVaccinated" Text="Vaccinated" CssClass="form-label" />
                                <asp:DropDownList ID="ddlVaccinated" runat="server" CssClass="form-select">
                                    <asp:ListItem Value="1" Text="Yes" Selected="True" />
                                    <asp:ListItem Value="0" Text="No" />
                                </asp:DropDownList>
                            </div>

                            <div class="col-sm-4">
                                <asp:Label runat="server" AssociatedControlID="txtTemperament" Text="Temperament" CssClass="form-label" />
                                <asp:TextBox ID="txtTemperament" runat="server" CssClass="form-control" MaxLength="100" Text="Playful, friendly" />
                                <asp:RegularExpressionValidator ID="revTemperament" runat="server" ControlToValidate="txtTemperament" ValidationGroup="Edit"
                                    ValidationExpression="^[A-Za-z\s,\-']{0,100}$"
                                    ErrorMessage="Letters, commas and hyphens only." CssClass="text-danger small" Display="Dynamic" />
                            </div>

                            <div class="col-12">
                                <asp:Label runat="server" AssociatedControlID="txtSpecialNeeds" Text="Special needs" CssClass="form-label" />
                                <asp:TextBox ID="txtSpecialNeeds" runat="server" CssClass="form-control" MaxLength="150" Text="None" />
                                <asp:RegularExpressionValidator ID="revSpecialNeeds" runat="server" ControlToValidate="txtSpecialNeeds" ValidationGroup="Edit"
                                    ValidationExpression="^[\s\S]{0,150}$"
                                    ErrorMessage="150 characters or fewer." CssClass="text-danger small" Display="Dynamic" />
                            </div>

                            <div class="col-12">
                                <asp:Label runat="server" AssociatedControlID="txtHistory" Text="History / description (shown on the pet profile)" CssClass="form-label" />
                                <asp:TextBox ID="txtHistory" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control"
                                    Text="Luna was found as a stray near Curepipe in 2025. After treatment and lots of care at the shelter, she is healthy, house-trained and ready for her forever home." />
                                <asp:RequiredFieldValidator ID="rfvHistory" runat="server" ControlToValidate="txtHistory" ValidationGroup="Edit"
                                    ErrorMessage="Please write a short description." CssClass="text-danger small" Display="Dynamic" />
                                <asp:RegularExpressionValidator ID="revHistory" runat="server" ControlToValidate="txtHistory" ValidationGroup="Edit"
                                    ValidationExpression="^[\s\S]{0,600}$"
                                    ErrorMessage="600 characters or fewer." CssClass="text-danger small" Display="Dynamic" />
                            </div>

                            <div class="col-12 d-flex gap-2">
                                <asp:Button ID="btnSave" runat="server" Text="Save Changes" CssClass="btn btn-primary" ValidationGroup="Edit" />
                                <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-white" CausesValidation="false" />
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </asp:Panel>

</asp:Content><asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
