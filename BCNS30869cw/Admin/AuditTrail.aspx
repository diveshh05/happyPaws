<%@ Page Title="Audit Trail | HappyPaws Admin" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AuditTrail.aspx.cs" Inherits="BCNS30869cw.Admin.AuditTrail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- ===== PAGE HEADING ===== -->
    <div class="mb-6">
        <h1 class="fs-3 mb-1">Audit Trail</h1>
        <p class="mb-0 text-secondary">Every login attempt on HappyPaws, successful or not. This log is read-only.</p>
    </div>

    <!-- ===== SUMMARY CARDS (Dasher stat-card style) ===== -->
    <div class="row row-cols-1 row-cols-md-3 mb-6 g-6">

        <div class="col">
            <div class="card card-lg h-100">
                <div class="card-body d-flex align-items-center gap-3">
                    <div class="icon-shape icon-lg rounded-circle bg-primary-darker text-primary-lighter">
                        <i class="ti ti-login fs-4"></i>
                    </div>
                    <div>
                        <div class="fs-3 fw-bold lh-1"><asp:Label ID="lblAttemptsToday" runat="server" Text="42" /></div>
                        <small class="text-secondary">Login attempts today</small>
                    </div>
                </div>
            </div>
        </div>

        <div class="col">
            <div class="card card-lg h-100">
                <div class="card-body d-flex align-items-center gap-3">
                    <div class="icon-shape icon-lg rounded-circle bg-warning-darker text-warning-lighter">
                        <i class="ti ti-alert-triangle fs-4"></i>
                    </div>
                    <div>
                        <div class="fs-3 fw-bold lh-1"><asp:Label ID="lblFailedToday" runat="server" Text="7" /></div>
                        <small class="text-secondary">Failed attempts today</small>
                    </div>
                </div>
            </div>
        </div>

        <div class="col">
            <div class="card card-lg h-100">
                <div class="card-body d-flex align-items-center gap-3">
                    <div class="icon-shape icon-lg rounded-circle bg-danger-darker text-danger-lighter">
                        <i class="ti ti-shield-x fs-4"></i>
                    </div>
                    <div>
                        <div class="fs-3 fw-bold lh-1"><asp:Label ID="lblSuspicious" runat="server" Text="1" /></div>
                        <small class="text-secondary">Accounts with 3+ failed attempts in 10 minutes</small>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- ===== LOG TABLE ===== -->
    <div class="card card-lg">

        <!-- Filters (ValidationGroup "Filter") -->
        <div class="card-header border-bottom-0">
            <div class="row g-3 align-items-end">
                <div class="col-md-3">
                    <asp:Label runat="server" AssociatedControlID="ddlResult" Text="Result" CssClass="form-label" />
                    <asp:DropDownList ID="ddlResult" runat="server" CssClass="form-select">
                        <asp:ListItem Value="" Text="All results" />
                        <asp:ListItem Value="Success" Text="Success" />
                        <asp:ListItem Value="WrongPassword" Text="Failed: wrong password" />
                        <asp:ListItem Value="Frozen" Text="Failed: account frozen" />
                        <asp:ListItem Value="UnknownEmail" Text="Failed: unknown email" />
                    </asp:DropDownList>
                </div>
                <div class="col-md-2">
                    <asp:Label runat="server" AssociatedControlID="txtFrom" Text="From" CssClass="form-label" />
                    <asp:TextBox ID="txtFrom" runat="server" TextMode="Date" CssClass="form-control" />
                </div>
                <div class="col-md-2">
                    <asp:Label runat="server" AssociatedControlID="txtTo" Text="To" CssClass="form-label" />
                    <asp:TextBox ID="txtTo" runat="server" TextMode="Date" CssClass="form-control" />
                </div>
                <div class="col-md-3">
                    <asp:Label runat="server" AssociatedControlID="txtSearch" Text="Email" CssClass="form-label" />
                    <asp:TextBox ID="txtSearch" runat="server" CssClass="form-control" MaxLength="100" placeholder="e.g. priya.r@example.com" />
                </div>
                <div class="col-md-2">
                    <asp:Button ID="btnFilter" runat="server" Text="Filter" CssClass="btn btn-primary w-100" ValidationGroup="Filter" />
                </div>

                <!-- Validators for the filters (shown under the filter row) -->
                <div class="col-12">
                    <asp:CompareValidator ID="cvDates" runat="server" ControlToValidate="txtTo" ControlToCompare="txtFrom"
                        Operator="GreaterThanEqual" Type="String" ValidationGroup="Filter"
                        ErrorMessage="The 'To' date must be on or after the 'From' date." CssClass="text-danger small d-block" Display="Dynamic" />
                    <asp:RegularExpressionValidator ID="revSearch" runat="server" ControlToValidate="txtSearch" ValidationGroup="Filter"
                        ValidationExpression="^[A-Za-z0-9@\.\-_]{0,100}$"
                        ErrorMessage="Letters, numbers and @ . _ - only." CssClass="text-danger small d-block" Display="Dynamic" />
                </div>
            </div>
        </div>

        <!-- Table -->
        <div class="table-responsive">
            <table class="table text-nowrap mb-0 table-centered">
                <thead>
                    <tr>
                        <th>Date and time</th>
                        <th>Email entered</th>
                        <th>User</th>
                        <th>Result</th>
                        <th>IP address</th>
                        <th>Browser</th>
                    </tr>
                </thead>
                <tbody>

                    <tr>
                        <td>25 Oct 2026, 08:30:12</td>
                        <td>admin@happypaws.mu</td>
                        <td>HappyPaws Admin <small class="text-secondary">(Admin)</small></td>
                        <td><span class="badge text-success-emphasis bg-success-subtle">Success</span></td>
                        <td>192.168.1.10</td>
                        <td>Chrome on Windows</td>
                    </tr>

                    <tr>
                        <td>24 Oct 2026, 22:41:05</td>
                        <td>marc.t@example.com</td>
                        <td>Marc Tan <small class="text-secondary">(Pet owner)</small></td>
                        <td><span class="badge text-danger-emphasis bg-danger-subtle">Failed: account frozen</span></td>
                        <td>203.0.113.24</td>
                        <td>Firefox on Windows</td>
                    </tr>

                    <tr>
                        <td>24 Oct 2026, 09:14:47</td>
                        <td>priya.r@example.com</td>
                        <td>Priya Ramdin <small class="text-secondary">(Adopter)</small></td>
                        <td><span class="badge text-success-emphasis bg-success-subtle">Success</span></td>
                        <td>198.51.100.7</td>
                        <td>Safari on iPhone</td>
                    </tr>

                    <!-- SUSPICIOUS: 3 failed attempts on the same account within minutes, from an unknown IP (highlighted red) -->
                    <tr class="table-danger">
                        <td>24 Oct 2026, 03:12:58</td>
                        <td>priya.r@example.com</td>
                        <td>Priya Ramdin <small>(Adopter)</small></td>
                        <td><span class="badge text-danger-emphasis bg-danger-subtle">Failed: wrong password</span>
                            <i class="ti ti-alert-triangle" title="3 or more failed attempts within 10 minutes"></i></td>
                        <td>203.0.113.99</td>
                        <td>Unknown</td>
                    </tr>
                    <tr class="table-danger">
                        <td>24 Oct 2026, 03:12:41</td>
                        <td>priya.r@example.com</td>
                        <td>Priya Ramdin <small>(Adopter)</small></td>
                        <td><span class="badge text-danger-emphasis bg-danger-subtle">Failed: wrong password</span></td>
                        <td>203.0.113.99</td>
                        <td>Unknown</td>
                    </tr>
                    <tr class="table-danger">
                        <td>24 Oct 2026, 03:12:19</td>
                        <td>priya.r@example.com</td>
                        <td>Priya Ramdin <small>(Adopter)</small></td>
                        <td><span class="badge text-danger-emphasis bg-danger-subtle">Failed: wrong password</span></td>
                        <td>203.0.113.99</td>
                        <td>Unknown</td>
                    </tr>

                    <tr>
                        <td>23 Oct 2026, 16:05:33</td>
                        <td>test@test.com</td>
                        <td><span class="text-secondary">No account</span></td>
                        <td><span class="badge text-warning-emphasis bg-warning-subtle">Failed: unknown email</span></td>
                        <td>198.51.100.52</td>
                        <td>Chrome on Android</td>
                    </tr>

                    <tr>
                        <td>22 Oct 2026, 14:25:09</td>
                        <td>aisha.m@example.com</td>
                        <td>Aisha Mohamed <small class="text-secondary">(Adopter)</small></td>
                        <td><span class="badge text-success-emphasis bg-success-subtle">Success</span></td>
                        <td>198.51.100.18</td>
                        <td>Edge on Windows</td>
                    </tr>

                </tbody>
            </table>
        </div>

        <!-- Footer: count + pages (the backend will handle paging, e.g. 20 rows per page) -->
        <div class="card-footer d-flex flex-wrap justify-content-between align-items-center gap-2">
            <small class="text-secondary">Showing <asp:Label ID="lblRange" runat="server" Text="1-8 of 312" /> attempts</small>
            <nav aria-label="Audit trail pages">
                <ul class="pagination pagination-sm mb-0">
                    <li class="page-item disabled"><span class="page-link">Previous</span></li>
                    <li class="page-item active"><span class="page-link">1</span></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">Next</a></li>
                </ul>
            </nav>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
