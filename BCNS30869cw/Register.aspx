<%@ Page Title="Register | HappyPaws" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="BCNS30869cw.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <section class="section-top">
        <div class="container">
            <div class="col-lg-10 offset-lg-1 text-center">
                <div class="section-top-title wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.3s" data-wow-offset="0">
                    <h1>Create an Account</h1>
                    <ul>
                        <li><a runat="server" href="~/Default.aspx">Home</a></li>
                        <li>/ Register</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <!-- Registration form -->
    <div class="contact_area section-padding">
        <div class="container">
            <div class="row">

                <div class="col-lg-7 col-sm-12 col-xs-12 mb-4">
                    <div class="contact">
                        <h3 class="mb-2">Join HappyPaws</h3>
                        <p class="mb-4">It's free and only takes a minute.</p>

                        <!-- Server messages (e.g. "This email is already registered") -->
                        <asp:Label ID="lblMessage" runat="server" CssClass="hp-error mb-3" EnableViewState="false" />

                        <div class="row">

                            <!-- Account type -->
                            <div class="form-group col-md-12 mb-3">
                                <asp:Label runat="server" AssociatedControlID="rblRole" Text="I want to..." />
                                <asp:RadioButtonList ID="rblRole" runat="server" CssClass="hp-choice d-block"
                                    RepeatDirection="Horizontal" RepeatLayout="Flow">
                                    <asp:ListItem Value="Adopter" Text="Adopt a pet" />
                                    <asp:ListItem Value="Owner" Text="Surrender a pet" />
                                </asp:RadioButtonList>
                                <asp:RequiredFieldValidator ID="rfvRole" runat="server" ControlToValidate="rblRole"
                                    ErrorMessage="Please choose an account type." CssClass="hp-error" Display="Dynamic" />
                            </div>

                            <!-- First name -->
                            <div class="form-group col-md-6 mb-3">
                                <asp:Label runat="server" AssociatedControlID="txtFirstName" Text="First name" />
                                <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" MaxLength="50" />
                                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName"
                                    ErrorMessage="Please enter your first name." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                            </div>

                            <!-- Last name -->
                            <div class="form-group col-md-6 mb-3">
                                <asp:Label runat="server" AssociatedControlID="txtLastName" Text="Last name" />
                                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" MaxLength="50" />
                                <asp:RequiredFieldValidator ID="rfvLastName" runat="server" ControlToValidate="txtLastName"
                                    ErrorMessage="Please enter your last name." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                            </div>
                            <!-- Email -->
                            <div class="form-group col-md-6 mb-3">
                                <asp:Label runat="server" AssociatedControlID="txtEmail" Text="Email address" />
                                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-control" MaxLength="100" />
                                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                                    ErrorMessage="Please enter your email address." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                                    ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
                                    ErrorMessage="Please enter a valid email address." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                            </div>

                            <!-- Phone -->
                            <div class="form-group col-md-6 mb-3">
                                <asp:Label runat="server" AssociatedControlID="txtPhone" Text="Phone number" />
                                <asp:TextBox ID="txtPhone" runat="server" TextMode="Phone" CssClass="form-control" MaxLength="20" placeholder="e.g. 5712 3456" />
                                <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhone"
                                    ErrorMessage="Please enter your phone number." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                                <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhone"
                                    ValidationExpression="^(\+230\s?)?[0-9]{3,4}\s?[0-9]{4}$"
                                    ErrorMessage="Please enter a valid Mauritian phone number." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                            </div>

                            <!-- Address -->
                            <div class="form-group col-md-12 mb-3">
                                <asp:Label runat="server" AssociatedControlID="txtAddress" Text="Address" />
                                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="2" CssClass="form-control" MaxLength="200" placeholder="e.g. 123 Main Street" />
                                <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAddress"
                                    ErrorMessage="Please enter your address." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                                <asp:RegularExpressionValidator ID="revAddress" runat="server" ControlToValidate="txtAddress"
                                    ValidationExpression="^[\s\S]{0,200}$"
                                    ErrorMessage="Address must be 200 characters or fewer." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                            </div>

                            <!-- Password -->
                            <div class="form-group col-md-6 mb-3">
                                <asp:Label runat="server" AssociatedControlID="txtPassword" Text="Password" />
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" MaxLength="100" />
                                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword"
                                    ErrorMessage="Please choose a password." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                                <asp:RegularExpressionValidator ID="revPassword" runat="server" ControlToValidate="txtPassword"
                                    ValidationExpression="^(?=.*[A-Za-z])(?=.*\d).{8,}$"
                                    ErrorMessage="At least 8 characters, with at least one letter and one number." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                            </div>

                            <!-- Confirm password -->
                            <div class="form-group col-md-6 mb-4">
                                <asp:Label runat="server" AssociatedControlID="txtConfirm" Text="Confirm password" />
                                <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password" CssClass="form-control" MaxLength="100" />
                                <asp:RequiredFieldValidator ID="rfvConfirm" runat="server" ControlToValidate="txtConfirm"
                                    ErrorMessage="Please type your password again." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                                <asp:CompareValidator ID="cvConfirm" runat="server" ControlToValidate="txtConfirm" ControlToCompare="txtPassword"
                                    Operator="Equal" ErrorMessage="The passwords do not match." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                            </div>

                            <!-- Register button -->
                            <div class="col-md-12">
                                <asp:Button ID="btnRegister" runat="server" Text="Create Account" CssClass="btn_one" />
                            </div>

                            <div class="col-md-12 mt-3 text-center">
                                <p>Already have an account? <a runat="server" href="~/Login.aspx">Sign in</a></p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-5 col-sm-12 col-xs-12">
                    <div class="hp-side-panel">
                        <h4 class="mb-4">Which account is right for you?</h4>
                        <div class="hp-role mb-4">
                            <h5><i class="fa-solid fa-heart"></i>Adopter</h5>
                            <p>Search pets in detail, view full profiles and health records, like your favourites and apply to adopt.</p>
                        </div>
                        <div class="hp-role">
                            <h5><i class="fa-solid fa-house"></i>Pet Owner</h5>
                            <p>Can no longer care for your pet? Submit a surrender request, upload documents and follow its status.</p>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
