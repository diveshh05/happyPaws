<%@ Page Title="Users | HappyPaws Admin" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="BCNS30869cw.Admin.Users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- ===== PAGE HEADING ===== -->
    <div class="mb-6">
        <h1 class="fs-3 mb-1">Users</h1>
        <p class="mb-0 text-secondary">All registered adopters and pet owners. Frozen users cannot sign in until they are unfrozen.</p>
    </div>

    <!-- Message after an action (e.g. "Marc Tan's account has been frozen.") -->
    <asp:Label ID="lblMessage" runat="server" CssClass="d-block mb-4 fw-semibold text-success" EnableViewState="false" />

    <!-- ===== LIST OF USERS (F22) ===== -->
    <div class="card card-lg">

        <!-- Filters -->
        <div class="card-header border-bottom-0">
            <div class="row g-3 align-items-end">
                <div class="col-md-3">
                    <asp:Label runat="server" AssociatedControlID="ddlRoleFilter" Text="Role" CssClass="form-label" />
                    <asp:DropDownList ID="ddlRoleFilter" runat="server" CssClass="form-select">
                        <asp:ListItem Value="" Text="All roles" />
                        <asp:ListItem Value="Adopter" Text="Adopters" />
                        <asp:ListItem Value="Owner" Text="Pet owners" />
                        <asp:ListItem Value="Admin" Text="Admins" />
                    </asp:DropDownList>
                </div>
                <div class="col-md-3">
                    <asp:Label runat="server" AssociatedControlID="ddlStatusFilter" Text="Status" CssClass="form-label" />
                    <asp:DropDownList ID="ddlStatusFilter" runat="server" CssClass="form-select">
                        <asp:ListItem Value="" Text="All statuses" />
                        <asp:ListItem Value="Active" Text="Active" />
                        <asp:ListItem Value="Frozen" Text="Frozen" />
                    </asp:DropDownList>
                </div>
                <div class="col-md-4">
                    <asp:Label runat="server" AssociatedControlID="txtSearch" Text="Search name or email" CssClass="form-label" />
                    <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" MaxLength="100" placeholder="e.g. Priya or priya@" />
                    <asp:RegularExpressionValidator ID="revSearch" runat="server" ControlToValidate="txtSearch" ValidationGroup="Filter"
                        ValidationExpression="^[A-Za-z0-9\s\-'@\._]{0,100}$"
                        ErrorMessage="Letters, numbers and @ . _ - ' only." CssClass="text-danger small" Display="Dynamic" />
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
                        <th>User</th>
                        <th>Role</th>
                        <th>Phone</th>
                        <th>Registered</th>
                        <th>Last login</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>

                    <!-- Adopter, active -->
                    <tr>
                        <td>
                            <div class="d-flex align-items-center gap-2">
                                <span class="hp-admin-avatar">P</span>
                                <div>
                                    <div class="fw-semibold">Priya Ramdin</div>
                                    <small class="text-secondary">priya.r@example.com</small>
                                </div>
                            </div>
                        </td>
                        <td><span class="badge text-primary-emphasis bg-primary-subtle">Adopter</span></td>
                        <td>5712 3456</td>
                        <td>12 Mar 2026</td>
                        <td>24 Oct 2026, 09:14</td>
                        <td><span class="badge text-success-emphasis bg-success-subtle">Active</span></td>
                        <td>
                            <asp:LinkButton ID="btnFreeze1" runat="server" CssClass="btn btn-outline-danger btn-sm" CausesValidation="false"
                                OnClientClick="return confirm('Freeze Priya Ramdin\'s account? She will not be able to sign in.');">
                                <i class="ti ti-lock"></i> Freeze</asp:LinkButton>
                        </td>
                    </tr>

                    <!-- Pet owner, active -->
                    <tr>
                        <td>
                            <div class="d-flex align-items-center gap-2">
                                <span class="hp-admin-avatar">K</span>
                                <div>
                                    <div class="fw-semibold">Kevin Lam</div>
                                    <small class="text-secondary">kevin.l@example.com</small>
                                </div>
                            </div>
                        </td>
                        <td><span class="badge text-info-emphasis bg-info-subtle">Pet owner</span></td>
                        <td>5934 1122</td>
                        <td>2 Oct 2026</td>
                        <td>20 Oct 2026, 18:40</td>
                        <td><span class="badge text-success-emphasis bg-success-subtle">Active</span></td>
                        <td>
                            <asp:LinkButton ID="btnFreeze2" runat="server" CssClass="btn btn-outline-danger btn-sm" CausesValidation="false"
                                OnClientClick="return confirm('Freeze Kevin Lam\'s account? He will not be able to sign in.');">
                                <i class="ti ti-lock"></i> Freeze</asp:LinkButton>
                        </td>
                    </tr>

                    <!-- Pet owner, FROZEN -->
                    <tr>
                        <td>
                            <div class="d-flex align-items-center gap-2">
                                <span class="hp-admin-avatar">M</span>
                                <div>
                                    <div class="fw-semibold">Marc Tan</div>
                                    <small class="text-secondary">marc.t@example.com</small>
                                </div>
                            </div>
                        </td>
                        <td><span class="badge text-info-emphasis bg-info-subtle">Pet owner</span></td>
                        <td>5245 7788</td>
                        <td>28 Aug 2026</td>
                        <td>6 Sep 2026, 11:02</td>
                        <td><span class="badge text-danger-emphasis bg-danger-subtle">Frozen</span></td>
                        <td>
                            <asp:LinkButton ID="btnUnfreeze3" runat="server" CssClass="btn btn-outline-success btn-sm" CausesValidation="false"
                                OnClientClick="return confirm('Unfreeze Marc Tan\'s account? He will be able to sign in again.');">
                                <i class="ti ti-lock-open"></i> Unfreeze</asp:LinkButton>
                        </td>
                    </tr>

                    <!-- Adopter, active -->
                    <tr>
                        <td>
                            <div class="d-flex align-items-center gap-2">
                                <span class="hp-admin-avatar">A</span>
                                <div>
                                    <div class="fw-semibold">Aisha Mohamed</div>
                                    <small class="text-secondary">aisha.m@example.com</small>
                                </div>
                            </div>
                        </td>
                        <td><span class="badge text-primary-emphasis bg-primary-subtle">Adopter</span></td>
                        <td>5876 9900</td>
                        <td>15 Sep 2026</td>
                        <td>22 Oct 2026, 14:25</td>
                        <td><span class="badge text-success-emphasis bg-success-subtle">Active</span></td>
                        <td>
                            <asp:LinkButton ID="btnFreeze4" runat="server" CssClass="btn btn-outline-danger btn-sm" CausesValidation="false"
                                OnClientClick="return confirm('Freeze Aisha Mohamed\'s account? She will not be able to sign in.');">
                                <i class="ti ti-lock"></i> Freeze</asp:LinkButton>
                        </td>
                    </tr>

                    <!-- Admin: no freeze button (an admin cannot freeze an admin account from here) -->
                    <tr>
                        <td>
                            <div class="d-flex align-items-center gap-2">
                                <span class="hp-admin-avatar">A</span>
                                <div>
                                    <div class="fw-semibold">HappyPaws Admin</div>
                                    <small class="text-secondary">admin@happypaws.mu</small>
                                </div>
                            </div>
                        </td>
                        <td><span class="badge text-dark-emphasis bg-dark-subtle">Admin</span></td>
                        <td>-</td>
                        <td>1 Jan 2026</td>
                        <td>25 Oct 2026, 08:30</td>
                        <td><span class="badge text-success-emphasis bg-success-subtle">Active</span></td>
                        <td><span class="text-secondary small">Protected</span></td>
                    </tr>

                </tbody>
            </table>
        </div>

        <!-- Footer: total count (the backend will set this) -->
        <div class="card-footer">
            <small class="text-secondary">Showing <asp:Label ID="lblUserCount" runat="server" Text="5" /> users</small>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
