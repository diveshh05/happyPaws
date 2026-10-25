<%@ Page Title="Surrender Request | HappyPaws" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SurrenderRequest.aspx.cs" Inherits="BCNS30869cw.Owner.SurrenderRequest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- START PAGE BANNER -->
    <section class="section-top">
        <div class="container">
            <div class="col-lg-10 offset-lg-1 text-center">
                <div class="section-top-title wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.3s" data-wow-offset="0">
                    <h1>Surrender a Pet</h1>
                    <ul>
                        <li><a runat="server" href="~/Default.aspx">Home</a></li>
                        <li>/ <a runat="server" href="~/Owner/MyRequests.aspx">My Requests</a></li>
                        <li>/ Surrender Request</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- END PAGE BANNER -->

    <!-- START SURRENDER FORM (F2 submit / F3 update) -->
    <div class="contact_area section-padding">
        <div class="container">
            <div class="row">

                <!-- ========== LEFT: the form ========== -->
                <div class="col-lg-8 col-sm-12 col-xs-12 mb-4">
                    <div class="contact">

                        <!-- The backend changes this to "Update your request" in edit mode (F3) -->
                        <h3 class="mb-2">
                            <asp:Literal ID="litFormTitle" runat="server" Text="Tell us about your pet" /></h3>
                        <p class="mb-4">We understand this is a hard decision. Share as much as you can so we can find the right new home.</p>

                        <asp:Label ID="lblMessage" runat="server" CssClass="hp-error mb-3" EnableViewState="false" />

                        <!-- Which request is being edited (empty for a new request) -->
                        <asp:HiddenField ID="hfRequestId" runat="server" />

                        <div class="row">

                            <!-- ===== Section 1: About your pet ===== -->
                            <div class="col-md-12">
                                <h5 class="hp-form-section">1. About your pet</h5>
                            </div>

                            <!-- Pet name -->
                            <div class="form-group col-md-6">
                                <asp:Label runat="server" AssociatedControlID="txtPetName" Text="Pet's name" />
                                <asp:TextBox ID="txtPetName" runat="server" CssClass="form-control" MaxLength="50" />
                                <asp:RequiredFieldValidator ID="rfvPetName" runat="server" ControlToValidate="txtPetName"
                                    ErrorMessage="Please enter your pet's name." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                                <asp:RegularExpressionValidator ID="revPetName" runat="server" ControlToValidate="txtPetName"
                                    ValidationExpression="^[A-Za-z\s\-']{1,50}$"
                                    ErrorMessage="Letters, spaces, hyphens and apostrophes only." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                            </div>

                            <!-- Pet type (the backend will load the list from the PetTypes table, managed by the admin in F24) -->
                            <div class="form-group col-md-6">
                                <asp:Label runat="server" AssociatedControlID="ddlPetType" Text="Type of pet" />
                                <asp:DropDownList ID="ddlPetType" runat="server" CssClass="form-select">
                                    <asp:ListItem Value="" Text="-- Please choose --" />
                                    <asp:ListItem Value="Dog" Text="Dog" />
                                    <asp:ListItem Value="Cat" Text="Cat" />
                                    <asp:ListItem Value="Rabbit" Text="Rabbit" />
                                    <asp:ListItem Value="Bird" Text="Bird" />
                                    <asp:ListItem Value="Other" Text="Other" />
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfvPetType" runat="server" ControlToValidate="ddlPetType"
                                    ErrorMessage="Please choose the type of pet." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                            </div>

                            <!-- Breed -->
                            <div class="form-group col-md-6">
                                <asp:Label runat="server" AssociatedControlID="txtBreed" Text="Breed (if known)" />
                                <asp:TextBox ID="txtBreed" runat="server" CssClass="form-control" MaxLength="50" placeholder="e.g. Labrador mix" />
                                <asp:RegularExpressionValidator ID="revBreed" runat="server" ControlToValidate="txtBreed"
                                    ValidationExpression="^[A-Za-z\s\-]{0,50}$"
                                    ErrorMessage="Letters, spaces and hyphens only." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                            </div>

                            <!-- Age -->
                            <div class="form-group col-md-6">
                                <asp:Label runat="server" AssociatedControlID="txtAge" Text="Age (years)" />
                                <asp:TextBox ID="txtAge" runat="server" TextMode="Number" CssClass="form-control" min="0" max="30" />
                                <asp:RequiredFieldValidator ID="rfvAge" runat="server" ControlToValidate="txtAge"
                                    ErrorMessage="Please enter your pet's age (0 if under 1 year)." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                                <asp:RangeValidator ID="rvAge" runat="server" ControlToValidate="txtAge"
                                    Type="Integer" MinimumValue="0" MaximumValue="30"
                                    ErrorMessage="Please enter a whole number from 0 to 30." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                            </div>

                            <!-- Gender -->
                            <div class="form-group col-md-6">
                                <asp:Label runat="server" AssociatedControlID="rblGender" Text="Gender" />
                                <asp:RadioButtonList ID="rblGender" runat="server" CssClass="hp-choice d-block"
                                    RepeatDirection="Horizontal" RepeatLayout="Flow">
                                    <asp:ListItem Value="Male" Text="Male" />
                                    <asp:ListItem Value="Female" Text="Female" />
                                </asp:RadioButtonList>
                                <asp:RequiredFieldValidator ID="rfvGender" runat="server" ControlToValidate="rblGender"
                                    ErrorMessage="Please choose a gender." CssClass="hp-error" Display="Dynamic" />
                            </div>

                            <!-- Size -->
                            <div class="form-group col-md-6">
                                <asp:Label runat="server" AssociatedControlID="ddlSize" Text="Size" />
                                <asp:DropDownList ID="ddlSize" runat="server" CssClass="form-select">
                                    <asp:ListItem Value="" Text="-- Please choose --" />
                                    <asp:ListItem Value="Small" Text="Small" />
                                    <asp:ListItem Value="Medium" Text="Medium" />
                                    <asp:ListItem Value="Large" Text="Large" />
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfvSize" runat="server" ControlToValidate="ddlSize"
                                    ErrorMessage="Please choose a size." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                            </div>

                            <!-- Photo -->
                            <div class="form-group col-md-12">
                                <asp:Label runat="server" AssociatedControlID="fuPhoto" Text="Photo of your pet" />

                                <!-- Shown by the backend in edit mode (F3), so the owner sees the current photo -->
                                <asp:Image ID="imgCurrentPhoto" runat="server" CssClass="hp-current-photo d-block" Visible="false" AlternateText="Current photo" />

                                <asp:FileUpload ID="fuPhoto" runat="server" CssClass="form-control" accept=".jpg,.jpeg,.png" />
                                <span class="hp-hint">JPG or PNG, maximum 2 MB. When updating, leave empty to keep the current photo.</span>
                                <asp:RequiredFieldValidator ID="rfvPhoto" runat="server" ControlToValidate="fuPhoto"
                                    ErrorMessage="Please choose a photo of your pet." CssClass="hp-error" Display="Dynamic" />
                                <asp:RegularExpressionValidator ID="revPhoto" runat="server" ControlToValidate="fuPhoto"
                                    ValidationExpression="^.+\.([jJ][pP][eE]?[gG]|[pP][nN][gG])$"
                                    ErrorMessage="Only JPG or PNG images are allowed." CssClass="hp-error" Display="Dynamic" />
                            </div>

                            <!-- ===== Section 2: Reason ===== -->
                            <div class="col-md-12">
                                <h5 class="hp-form-section">2. Reason for surrender</h5>
                            </div>

                            <!-- Main reason -->
                            <div class="form-group col-md-12">
                                <asp:Label runat="server" AssociatedControlID="ddlReason" Text="Main reason" />
                                <asp:DropDownList ID="ddlReason" runat="server" CssClass="form-select">
                                    <asp:ListItem Value="" Text="-- Please choose --" />
                                    <asp:ListItem Value="Moving" Text="Moving house or abroad" />
                                    <asp:ListItem Value="Allergies" Text="Allergies in the family" />
                                    <asp:ListItem Value="Financial" Text="Financial difficulties" />
                                    <asp:ListItem Value="Time" Text="Not enough time to care for the pet" />
                                    <asp:ListItem Value="Behaviour" Text="Behaviour problems" />
                                    <asp:ListItem Value="Other" Text="Other" />
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfvReason" runat="server" ControlToValidate="ddlReason"
                                    ErrorMessage="Please choose the main reason." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                            </div>

                            <!-- Reason details -->
                            <div class="form-group col-md-12">
                                <asp:Label runat="server" AssociatedControlID="txtReasonDetails" Text="Please explain" />
                                <asp:TextBox ID="txtReasonDetails" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" />
                                <asp:RequiredFieldValidator ID="rfvReasonDetails" runat="server" ControlToValidate="txtReasonDetails"
                                    ErrorMessage="Please explain the reason." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                                <asp:RegularExpressionValidator ID="revReasonDetails" runat="server" ControlToValidate="txtReasonDetails"
                                    ValidationExpression="^[\s\S]{0,500}$"
                                    ErrorMessage="Please keep this to 500 characters or fewer." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                            </div>

                            <!-- ===== Section 3: Other details ===== -->
                            <div class="col-md-12">
                                <h5 class="hp-form-section">3. Other details</h5>
                            </div>

                            <!-- Vaccinated -->
                            <div class="form-group col-md-6">
                                <asp:Label runat="server" AssociatedControlID="rblVaccinated" Text="Is your pet vaccinated?" />
                                <asp:RadioButtonList ID="rblVaccinated" runat="server" CssClass="hp-choice d-block"
                                    RepeatDirection="Horizontal" RepeatLayout="Flow">
                                    <asp:ListItem Value="1" Text="Yes" />
                                    <asp:ListItem Value="0" Text="No" />
                                    <asp:ListItem Value="" Text="Not sure" />
                                </asp:RadioButtonList>
                            </div>

                            <!-- Temperament -->
                            <div class="form-group col-md-6">
                                <asp:Label runat="server" AssociatedControlID="txtTemperament" Text="Temperament" />
                                <asp:TextBox ID="txtTemperament" runat="server" CssClass="form-control" MaxLength="100" placeholder="e.g. calm, friendly with children" />
                                <asp:RegularExpressionValidator ID="revTemperament" runat="server" ControlToValidate="txtTemperament"
                                    ValidationExpression="^[A-Za-z\s,\-']{0,100}$"
                                    ErrorMessage="Letters, spaces, commas, hyphens and apostrophes only." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                            </div>

                            <!-- Health and special needs -->
                            <div class="form-group col-md-12">
                                <asp:Label runat="server" AssociatedControlID="txtOtherDetails" Text="Health, special needs or anything else we should know (optional)" />
                                <asp:TextBox ID="txtOtherDetails" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" />
                                <asp:RegularExpressionValidator ID="revOtherDetails" runat="server" ControlToValidate="txtOtherDetails"
                                    ValidationExpression="^[\s\S]{0,500}$"
                                    ErrorMessage="Please keep this to 500 characters or fewer." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                            </div>

                            <!-- Submit / update (the backend changes the text to "Update Request" in edit mode) -->
                            <div class="col-md-12">
                                <asp:Button ID="btnSubmit" runat="server" Text="Submit Request" CssClass="btn_one" />
                            </div>
                        </div>
                    </div>
                </div>

                <!-- ========== RIGHT: how it works ========== -->
                <div class="col-lg-4 col-sm-12 col-xs-12">
                    <div class="hp-side-panel">
                        <h4 class="mb-3">How surrendering works</h4>
                        <ul class="list-unstyled hp-steps">
                            <li><i class="fa-solid fa-pen-to-square"></i>Submit this request. You can update it until we review it.</li>
                            <li><i class="fa-solid fa-file-arrow-up"></i>Upload your pet's documents in <a runat="server" href="~/Owner/Documents.aspx">My Documents</a>.</li>
                            <li><i class="fa-solid fa-envelope"></i>We review your request and email you our decision.</li>
                            <li><i class="fa-solid fa-truck"></i>If accepted, the drop-off date and place appear in <a runat="server" href="~/Owner/MyRequests.aspx">My Requests</a>.</li>
                        </ul>
                        <p class="mb-0 mt-4"><small>Your pet will be cared for by our team and vets until a new family is found.</small></p>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- END SURRENDER FORM -->

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
