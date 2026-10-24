<%@ Page Title="My Profile | HappyPaws" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="BCNS30869cw.Adopter.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- START PAGE BANNER -->
    <section class="section-top">
        <div class="container">
            <div class="col-lg-10 offset-lg-1 text-center">
                <div class="section-top-title wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.3s" data-wow-offset="0">
                    <h1>My Profile</h1>
                    <ul>
                        <li><a runat="server" href="~/Default.aspx">Home</a></li>
                        <li> / My Profile</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- END PAGE BANNER -->

    <!-- START PROFILE (F10) -->
    <div class="contact_area section-padding">
        <div class="container">
            <div class="row">

                <!-- ========== LEFT: two forms ========== -->
                <div class="col-lg-8 col-sm-12 col-xs-12 mb-4">
                    <div class="contact">

                        <!-- ===== FORM 1: personal details (ValidationGroup "Details") ===== -->
                        <h3 class="mb-2">Personal details</h3>
                        <p class="mb-4">Keep your details up to date so we can contact you about your applications.</p>

                        <!-- Message after saving (green on success, red on error: the backend sets the CssClass) -->
                        <asp:Label ID="lblDetailsMessage" runat="server" CssClass="hp-success" EnableViewState="false" />

                        <div class="row">

                            <!-- First name -->
                            <div class="form-group col-md-6">
                                <asp:Label runat="server" AssociatedControlID="txtFirstName" Text="First name" />
                                <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" MaxLength="50" Text="Priya" />
                                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName" ValidationGroup="Details"
                                    ErrorMessage="Please enter your first name." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                            </div>

                            <!-- Last name -->
                            <div class="form-group col-md-6">
                                <asp:Label runat="server" AssociatedControlID="txtLastName" Text="Last name" />
                                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" MaxLength="50" Text="Ramdin" />
                                <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName" ValidationGroup="Details"
                                    ErrorMessage="Please enter your last name." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                            </div>

                            <!-- Email (read-only: it is the login name) -->
                            <div class="form-group col-md-6">
                                <asp:Label runat="server" AssociatedControlID="txtEmail" Text="Email address (cannot be changed)" />
                                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-control" ReadOnly="true" Text="priya.r@example.com" />
                            </div>

                            <!-- Phone -->
                            <div class="form-group col-md-6">
                                <asp:Label runat="server" AssociatedControlID="txtPhone" Text="Phone number" />
                                <asp:TextBox ID="txtPhone" runat="server" TextMode="Phone" CssClass="form-control" MaxLength="20" Text="5712 3456" />
                                <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone" ValidationGroup="Details"
                                    ErrorMessage="Please enter your phone number." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                                <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhone" ValidationGroup="Details"
                                    ValidationExpression="^(\+230\s?)?[0-9]{3,4}\s?[0-9]{4}$"
                                    ErrorMessage="Please enter a valid Mauritian phone number." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                            </div>

                            <!-- Address -->
                            <div class="form-group col-md-12">
                                <asp:Label runat="server" AssociatedControlID="txtAddress" Text="Address" />
                                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="2" CssClass="form-control" Text="12 Royal Road, Rose Hill" />
                                <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAddress" ValidationGroup="Details"
                                    ErrorMessage="Please enter your address." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                                <asp:RegularExpressionValidator ID="revAddress" runat="server" ControlToValidate="txtAddress" ValidationGroup="Details"
                                    ValidationExpression="^[\s\S]{0,200}$"
                                    ErrorMessage="Address must be 200 characters or fewer." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                            </div>

                            <!-- Save details button: only checks the "Details" group -->
                            <div class="col-md-12 mb-5">
                                <asp:Button ID="btnSaveDetails" runat="server" Text="Save Changes" CssClass="btn_one" ValidationGroup="Details" />
                            </div>
                        </div>

                        <!-- ===== FORM 2: change password (ValidationGroup "Password") ===== -->
                        <h3 class="mb-2">Change password</h3>
                        <p class="mb-4">For your security, enter your current password first.</p>

                        <asp:Label ID="lblPasswordMessage" runat="server" CssClass="hp-success" EnableViewState="false" />

                        <div class="row">

                            <!-- Current password -->
                            <div class="form-group col-md-12">
                                <asp:Label runat="server" AssociatedControlID="txtCurrentPassword" Text="Current password" />
                                <asp:TextBox ID="txtCurrentPassword" runat="server" TextMode="Password" CssClass="form-control" MaxLength="100" />
                                <asp:RequiredFieldValidator ID="rfvCurrentPassword" runat="server" ControlToValidate="txtCurrentPassword" ValidationGroup="Password"
                                    ErrorMessage="Please enter your current password." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                            </div>

                            <!-- New password -->
                            <div class="form-group col-md-6">
                                <asp:Label runat="server" AssociatedControlID="txtNewPassword" Text="New password" />
                                <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password" CssClass="form-control" MaxLength="100" />
                                <asp:RequiredFieldValidator ID="rfvNewPassword" runat="server" ControlToValidate="txtNewPassword" ValidationGroup="Password"
                                    ErrorMessage="Please choose a new password." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                                <asp:RegularExpressionValidator ID="revNewPassword" runat="server" ControlToValidate="txtNewPassword" ValidationGroup="Password"
                                    ValidationExpression="^(?=.*[A-Za-z])(?=.*\d).{8,}$"
                                    ErrorMessage="At least 8 characters, with at least one letter and one number." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                            </div>

                            <!-- Confirm new password -->
                            <div class="form-group col-md-6">
                                <asp:Label runat="server" AssociatedControlID="txtConfirmPassword" Text="Confirm new password" />
                                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" CssClass="form-control" MaxLength="100" />
                                <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" ValidationGroup="Password"
                                    ErrorMessage="Please type the new password again." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                                <asp:CompareValidator ID="cvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" ControlToCompare="txtNewPassword"
                                    Operator="Equal" ValidationGroup="Password"
                                    ErrorMessage="The new passwords do not match." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                            </div>

                            <!-- Change password button: only checks the "Password" group -->
                            <div class="col-md-12">
                                <asp:Button ID="btnChangePassword" runat="server" Text="Change Password" CssClass="btn_one" ValidationGroup="Password" />
                            </div>
                        </div>

                    </div>
                </div>

                <!-- ========== RIGHT: account summary ========== -->
                <div class="col-lg-4 col-sm-12 col-xs-12">
                    <div class="hp-side-panel text-center">
                        <span class="hp-avatar hp-avatar-lg"><asp:Literal ID="litInitial" runat="server" Text="P" /></span>
                        <h4 class="mb-1"><asp:Literal ID="litFullName" runat="server" Text="Priya Ramdin" /></h4>
                        <p class="mb-1"><span class="badge rounded-pill text-bg-primary">Adopter</span></p>
                        <p class="mb-4"><small>Member since <asp:Literal ID="litMemberSince" runat="server" Text="March 2026" /></small></p>

                        <div class="text-start">
                            <h5 class="mb-3">Quick links</h5>
                            <ul class="list-unstyled hp-steps">
                                <li><i class="fa-solid fa-file-lines"></i><a runat="server" href="~/Adopter/MyApplications.aspx">My Applications</a></li>
                                <li><i class="fa-solid fa-magnifying-glass"></i><a runat="server" href="~/Adopter/AdvancedSearch.aspx">Advanced Search</a></li>
                                <li><i class="fa-solid fa-comment"></i><a runat="server" href="~/Member/Testimonial.aspx">Share your story</a></li>
                            </ul>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- END PROFILE -->

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
