<%@ Page Title="Sign In | HappyPaws" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BCNS30869cw.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- START PAGE BANNER -->
    <section class="section-top">
        <div class="container">
            <div class="col-lg-10 offset-lg-1 text-center">
                <div class="section-top-title wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.3s" data-wow-offset="0">
                    <h1>Sign In</h1>
                    <ul>
                        <li><a runat="server" href="~/Default.aspx">Home</a></li>
                        <li>/ Sign In</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- END PAGE BANNER -->

    <!-- START LOGIN (from Eduleb's contact form layout, F19) -->
    <div class="contact_area section-padding">
        <div class="container">
            <div class="row">

                <!-- Left: login form -->
                <div class="col-lg-7 col-sm-12 col-xs-12 mb-4">
                    <div class="contact">
                        <h3 class="mb-2">Welcome back</h3>
                        <p class="mb-4">Sign in as a pet owner, adopter or administrator.</p>

                        <!-- Error message from the server (e.g. wrong password, frozen account) -->
                        <asp:Label ID="lblMessage" runat="server" CssClass="hp-error mb-3" EnableViewState="false" />

                        <div class="row">

                            <!-- Email -->
                            <div class="form-group col-md-12 mb-3">
                                <asp:Label runat="server" AssociatedControlID="txtEmail" Text="Email address" />
                                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-control" MaxLength="100" />
                                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                                    ErrorMessage="Please enter your email address." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                                <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                                    ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
                                    ErrorMessage="Please enter a valid email address." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                            </div>

                            <!-- Password: YOUR TURN (see below) -->
                            <div class="form-group col-md-12 mb-3">
                                <asp:Label runat="server" AssociatedControlID="txtPassword" Text="Password" />
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" MaxLength="100" />
                                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword"
                                    ErrorMessage="Please enter your password." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                            </div>

                            <!-- Remember me (F19: stored in a cookie by the backend) -->
                            <div class="col-md-12 mb-4">
                                <asp:CheckBox ID="chkRemember" runat="server" Text="Remember me on this device" CssClass="hp-remember" />
                            </div>

                            <!-- Sign in button (no OnClick yet; the backend will add it) -->
                            <div class="col-md-12">
                                <asp:Button ID="btnLogin" runat="server" Text="Sign In" CssClass="btn_one" />
                            </div>

                            <div class="col-md-12 mt-3 text-center">
                                <p>Don't have an account? <a runat="server" href="~/Register.aspx">Register here</a></p>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Right: "New to HappyPaws?" panel (replaces Eduleb's map) -->
                <div class="col-lg-5 col-sm-12 col-xs-12">
                    <div class="hp-side-panel">
                        <img runat="server" src="~/Assets/public/img/happypaws/login-side.jpg" class="hp-side-img" alt="A rescued pet waiting for a home" />
                        <h4>New to HappyPaws?</h4>
                        <p class="mb-4">Create a free account to adopt a pet, or to find a safe new home for yours.</p>
                        <a runat="server" href="~/Register.aspx" class="btn_one">Create an account</a>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- END LOGIN -->

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
