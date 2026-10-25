<%@ Page Title="Pet Types | HappyPaws Admin" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="PetTypes.aspx.cs" Inherits="BCNS30869cw.Admin.PetTypes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- ===== PAGE HEADING ===== -->
    <div class="mb-6">
        <h1 class="fs-3 mb-1">Pet Types</h1>
        <p class="mb-0 text-secondary">The types listed here appear in the search, the catalogue and the surrender form.</p>
    </div>

    <!-- Message after an action (e.g. "Pet type 'Guinea pig' added.") -->
    <asp:Label ID="lblMessage" runat="server" CssClass="d-block mb-4 fw-semibold text-success" EnableViewState="false" />

    <div class="row g-6">

        <!-- ========== LEFT: CREATE (ValidationGroup "Add") ========== -->
        <div class="col-lg-4">
            <div class="card card-lg">
                <div class="card-header border-bottom-0">
                    <h5 class="mb-0">Add a pet type</h5>
                </div>
                <div class="card-body pt-0">

                    <div class="mb-3">
                        <asp:Label runat="server" AssociatedControlID="txtNewName" Text="Name" CssClass="form-label" />
                        <asp:TextBox ID="txtNewName" runat="server" CssClass="form-control" MaxLength="30" placeholder="e.g. Guinea pig" />
                        <asp:RequiredFieldValidator ID="rfvNewName" runat="server" ControlToValidate="txtNewName" ValidationGroup="Add"
                            ErrorMessage="Please enter a name." CssClass="text-danger small" Display="Dynamic" />
                        <asp:RegularExpressionValidator ID="revNewName" runat="server" ControlToValidate="txtNewName" ValidationGroup="Add"
                            ValidationExpression="^[A-Za-z\s\-]{2,30}$"
                            ErrorMessage="2 to 30 letters, spaces or hyphens." CssClass="text-danger small" Display="Dynamic" />
                    </div>

                    <div class="mb-4">
                        <asp:Label runat="server" AssociatedControlID="txtNewDescription" Text="Short description (optional)" CssClass="form-label" />
                        <asp:TextBox ID="txtNewDescription" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control"
                            placeholder="e.g. Small, gentle rodents that live in pairs." />
                        <asp:RegularExpressionValidator ID="revNewDescription" runat="server" ControlToValidate="txtNewDescription" ValidationGroup="Add"
                            ValidationExpression="^[\s\S]{0,200}$"
                            ErrorMessage="200 characters or fewer." CssClass="text-danger small" Display="Dynamic" />
                    </div>

                    <asp:Button ID="btnAdd" runat="server" Text="Add Pet Type" CssClass="btn btn-primary w-100" ValidationGroup="Add" />
                </div>
            </div>
        </div>

        <!-- ========== RIGHT: READ / UPDATE / DELETE ========== -->
        <div class="col-lg-8">
            <div class="card card-lg">
                <div class="card-header border-bottom-0">
                    <h5 class="mb-0">Pet types</h5>
                </div>
                <div class="table-responsive">
                    <table class="table mb-0 table-centered table-hover">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Description</th>
                                <th class="text-center">Pets</th>
                                <th class="text-end">Actions</th>
                            </tr>
                        </thead>
                        <tbody>

                            <!-- Normal row: in use, so it cannot be deleted -->
                            <tr>
                                <td class="fw-semibold">Dog</td>
                                <td>Loyal companions of all sizes.</td>
                                <td class="text-center">18</td>
                                <td class="text-end text-nowrap">
                                    <asp:LinkButton ID="btnEdit1" runat="server" CssClass="btn btn-white btn-sm" CausesValidation="false">
                                        <i class="ti ti-pencil"></i> Edit</asp:LinkButton>
                                    <span class="badge text-secondary-emphasis bg-secondary-subtle ms-1" title="Pets use this type, so it cannot be deleted">In use</span>
                                </td>
                            </tr>

                            <tr>
                                <td class="fw-semibold">Cat</td>
                                <td>Independent and affectionate.</td>
                                <td class="text-center">14</td>
                                <td class="text-end text-nowrap">
                                    <asp:LinkButton ID="btnEdit2" runat="server" CssClass="btn btn-white btn-sm" CausesValidation="false">
                                        <i class="ti ti-pencil"></i> Edit</asp:LinkButton>
                                    <span class="badge text-secondary-emphasis bg-secondary-subtle ms-1" title="Pets use this type, so it cannot be deleted">In use</span>
                                </td>
                            </tr>

                            <!-- EDIT MODE row (ValidationGroup "Edit"): shown when Edit is clicked -->
                            <tr class="table-active">
                                <td>
                                    <asp:TextBox ID="txtEditName" runat="server" CssClass="form-control form-control-sm" MaxLength="30" Text="Rabbit" />
                                    <asp:RequiredFieldValidator ID="rfvEditName" runat="server" ControlToValidate="txtEditName" ValidationGroup="Edit"
                                        ErrorMessage="Please enter a name." CssClass="text-danger small" Display="Dynamic" />
                                    <asp:RegularExpressionValidator ID="revEditName" runat="server" ControlToValidate="txtEditName" ValidationGroup="Edit"
                                        ValidationExpression="^[A-Za-z\s\-]{2,30}$"
                                        ErrorMessage="2 to 30 letters, spaces or hyphens." CssClass="text-danger small" Display="Dynamic" />
                                </td>
                                <td>
                                    <asp:TextBox ID="txtEditDescription" runat="server" CssClass="form-control form-control-sm" MaxLength="200" Text="Gentle and curious, need space to hop." />
                                </td>
                                <td class="text-center">6</td>
                                <td class="text-end text-nowrap">
                                    <asp:LinkButton ID="btnSave3" runat="server" CssClass="btn btn-success btn-sm" ValidationGroup="Edit">
                                        <i class="ti ti-check"></i> Save</asp:LinkButton>
                                    <asp:LinkButton ID="btnCancelEdit3" runat="server" CssClass="btn btn-white btn-sm" CausesValidation="false">
                                        Cancel</asp:LinkButton>
                                </td>
                            </tr>

                            <tr>
                                <td class="fw-semibold">Bird</td>
                                <td>Budgies, parrots and other small birds.</td>
                                <td class="text-center">4</td>
                                <td class="text-end text-nowrap">
                                    <asp:LinkButton ID="btnEdit4" runat="server" CssClass="btn btn-white btn-sm" CausesValidation="false">
                                        <i class="ti ti-pencil"></i> Edit</asp:LinkButton>
                                    <span class="badge text-secondary-emphasis bg-secondary-subtle ms-1" title="Pets use this type, so it cannot be deleted">In use</span>
                                </td>
                            </tr>

                            <!-- Not used by any pet: can be deleted -->
                            <tr>
                                <td class="fw-semibold">Guinea pig</td>
                                <td>Small, gentle rodents that live in pairs.</td>
                                <td class="text-center">0</td>
                                <td class="text-end text-nowrap">
                                    <asp:LinkButton ID="btnEdit5" runat="server" CssClass="btn btn-white btn-sm" CausesValidation="false">
                                        <i class="ti ti-pencil"></i> Edit</asp:LinkButton>
                                    <asp:LinkButton ID="btnDelete5" runat="server" CssClass="btn btn-outline-danger btn-sm" CausesValidation="false"
                                        OnClientClick="return confirm('Delete the pet type \'Guinea pig\'? This cannot be undone.');">
                                        <i class="ti ti-trash"></i> Delete</asp:LinkButton>
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
