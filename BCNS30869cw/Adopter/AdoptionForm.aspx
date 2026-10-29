<%@ Page Title="Adoption Application | HappyPaws" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdoptionForm.aspx.cs" Inherits="BCNS30869cw.Adopter.AdoptionForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <section class="section-top">
        <div class="container">
            <div class="col-lg-10 offset-lg-1 text-center">
                <div class="section-top-title wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.3s" data-wow-offset="0">
                    <h1>Adoption Application</h1>
                    <ul>
                        <li><a runat="server" href="~/Default.aspx">Home</a></li>
                        <li>/ <a runat="server" href="~/Catalogue.aspx">Pet Catalogue</a></li>
                        <li>/ Apply to Adopt</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <!--Adoption Form -->
    <div class="contact_area section-padding">
        <div class="container">
            <div class="row">

                <!-- form to fill -->
                <div class="col-lg-8 col-sm-12 col-xs-12 mb-4">
                    <div class="contact">
                        <h3 class="mb-2">Tell us about your home</h3>
                        <p class="mb-4">Your answers help us make sure every pet goes to a safe and happy home.</p>

                        <!-- Server messages (e.g. "You have already applied for this pet") -->
                        <asp:Label ID="lblMessage" runat="server" CssClass="hp-error mb-3" EnableViewState="false" />

                        <!-- The pet being applied for: set by the backend from the link (?petId=...) -->
                        <asp:HiddenField ID="hfPetId" runat="server" />

                        <div class="row">

                            <!-- section 1 -->
                            <div class="col-md-12">
                                <h5 class="hp-form-section">1. Your home</h5>
                            </div>

                            <!-- Home type -->
                            <div class="form-group col-md-6">
                                <asp:Label runat="server" AssociatedControlID="ddlHomeType" Text="Type of home" />
                                <asp:DropDownList ID="ddlHomeType" runat="server" CssClass="form-select">
                                    <asp:ListItem Value="" Text="-- Please choose --" />
                                    <asp:ListItem Value="HouseGarden" Text="House with a garden" />
                                    <asp:ListItem Value="House" Text="House without a garden" />
                                    <asp:ListItem Value="Apartment" Text="Apartment" />
                                    <asp:ListItem Value="Other" Text="Other" />
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfvHomeType" runat="server" ControlToValidate="ddlHomeType"
                                    ErrorMessage="Please choose your type of home." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                            </div>

                            <!-- Own or rent -->
                            <div class="form-group col-md-6">
                                <asp:Label runat="server" AssociatedControlID="rblOwnership" Text="Do you own or rent?" />
                                <asp:RadioButtonList ID="rblOwnership" runat="server" CssClass="hp-choice d-block"
                                    RepeatDirection="Horizontal" RepeatLayout="Flow">
                                    <asp:ListItem Value="Own" Text="Own" />
                                    <asp:ListItem Value="Rent" Text="Rent" />
                                </asp:RadioButtonList>
                                <asp:RequiredFieldValidator ID="rfvOwnership" runat="server" ControlToValidate="rblOwnership"
                                    ErrorMessage="Please choose own or rent." CssClass="hp-error" Display="Dynamic" />
                            </div>

                            <!-- Hours alone -->
                            <div class="form-group col-md-6">
                                <asp:Label runat="server" AssociatedControlID="txtHoursAlone" Text="Hours the pet would be alone per day" />
                                <asp:TextBox ID="txtHoursAlone" runat="server" TextMode="Number" CssClass="form-control" min="0" max="24" />
                                <asp:RequiredFieldValidator ID="rfvHoursAlone" runat="server" ControlToValidate="txtHoursAlone"
                                    ErrorMessage="Please enter a number of hours." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                                <asp:RangeValidator ID="rvHoursAlone" runat="server" ControlToValidate="txtHoursAlone"
                                    Type="Integer" MinimumValue="0" MaximumValue="24"
                                    ErrorMessage="Please enter a whole number from 0 to 24." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                            </div>

                            <!-- Section 2 -->
                            <div class="col-md-12">
                                <h5 class="hp-form-section">2. Your household</h5>
                            </div>

                            <!-- Adults -->
                            <div class="form-group col-md-6">
                                <asp:Label runat="server" AssociatedControlID="txtAdults" Text="Number of adults" />
                                <asp:TextBox ID="txtAdults" runat="server" TextMode="Number" CssClass="form-control" min="1" max="20" />
                                <asp:RequiredFieldValidator ID="rfvAdults" runat="server" ControlToValidate="txtAdults"
                                    ErrorMessage="Please enter the number of adults." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                                <asp:RangeValidator ID="rvAdults" runat="server" ControlToValidate="txtAdults"
                                    Type="Integer" MinimumValue="1" MaximumValue="20"
                                    ErrorMessage="Please enter a whole number from 1 to 20." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                            </div>

                            <!-- Children -->
                            <div class="form-group col-md-6">
                                <asp:Label runat="server" AssociatedControlID="txtChildren" Text="Number of children" />
                                <asp:TextBox ID="txtChildren" runat="server" TextMode="Number" CssClass="form-control" min="0" max="20" />
                                <asp:RequiredFieldValidator ID="rfvChildren" runat="server" ControlToValidate="txtChildren"
                                    ErrorMessage="Please enter the number of children (0 if none)." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                                <asp:RangeValidator ID="rvChildren" runat="server" ControlToValidate="txtChildren"
                                    Type="Integer" MinimumValue="0" MaximumValue="20"
                                    ErrorMessage="Please enter a whole number from 0 to 20." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                            </div>

                            <!-- Other pets -->
                            <div class="form-group col-md-12">
                                <asp:Label runat="server" AssociatedControlID="rblOtherPets" Text="Do you have other pets?" />
                                <asp:RadioButtonList ID="rblOtherPets" runat="server" CssClass="hp-choice d-block"
                                    RepeatDirection="Horizontal" RepeatLayout="Flow">
                                    <asp:ListItem Value="Yes" Text="Yes" />
                                    <asp:ListItem Value="No" Text="No" />
                                </asp:RadioButtonList>
                                <asp:RequiredFieldValidator ID="rfvOtherPets" runat="server" ControlToValidate="rblOtherPets"
                                    ErrorMessage="Please answer yes or no." CssClass="hp-error" Display="Dynamic" />
                            </div>

                            <!-- Other pets details (optional) -->
                            <div class="form-group col-md-12">
                                <asp:Label runat="server" AssociatedControlID="txtOtherPetsDetails" Text="If yes, tell us about them (optional)" />
                                <asp:TextBox ID="txtOtherPetsDetails" runat="server" TextMode="MultiLine" Rows="2" CssClass="form-control"
                                    placeholder="e.g. one 5-year-old cat, vaccinated and friendly with dogs" />
                                <asp:RegularExpressionValidator ID="revOtherPetsDetails" runat="server" ControlToValidate="txtOtherPetsDetails"
                                    ValidationExpression="^[\s\S]{0,300}$"
                                    ErrorMessage="Please keep this to 300 characters or fewer." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                            </div>

                            <!-- Section 3 -->
                            <div class="col-md-12">
                                <h5 class="hp-form-section">3. About you</h5>
                            </div>

                            <!-- Experience -->
                            <div class="form-group col-md-12">
                                <asp:Label runat="server" AssociatedControlID="txtExperience" Text="Your experience with pets" />
                                <asp:TextBox ID="txtExperience" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" />
                                <asp:RequiredFieldValidator ID="rfvExperience" runat="server" ControlToValidate="txtExperience"
                                    ErrorMessage="Please tell us about your experience." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                                <asp:RegularExpressionValidator ID="revExperience" runat="server" ControlToValidate="txtExperience"
                                    ValidationExpression="^[\s\S]{0,500}$"
                                    ErrorMessage="Please keep this to 500 characters or fewer." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                            </div>

                            <!-- Reason -->
                            <div class="form-group col-md-12">
                                <asp:Label runat="server" AssociatedControlID="txtReason" Text="Why would you like to adopt this pet?" />
                                <asp:TextBox ID="txtReason" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" />
                                <asp:RequiredFieldValidator ID="rfvReason" runat="server" ControlToValidate="txtReason"
                                    ErrorMessage="Please tell us why you would like to adopt." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                                <asp:RegularExpressionValidator ID="revReason" runat="server" ControlToValidate="txtReason"
                                    ValidationExpression="^[\s\S]{0,500}$"
                                    ErrorMessage="Please keep this to 500 characters or fewer." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                            </div>

                            <!-- Agreement -->
                            <div class="col-md-12 mb-4">
                                <asp:CheckBox ID="chkAgree" runat="server" CssClass="hp-remember"
                                    Text="I confirm the information above is true and I agree to a home visit by HappyPaws." />
                                <asp:CustomValidator ID="cvAgree" runat="server" ClientValidationFunction="validateAgree"
                                    ErrorMessage="Please tick the box to confirm." CssClass="hp-error" Display="Dynamic" />
                            </div>

                            <div class="col-md-12">
                                <asp:Button ID="btnSubmit" runat="server" Text="Submit Application" CssClass="btn_one" />
                            </div>
                        </div>
                    </div>
                </div>

                <!-- pet details -->
                <div class="col-lg-4 col-sm-12 col-xs-12">
                    <div class="hp-side-panel">
                        <p class="mb-2">You are applying to adopt</p>
                        <img id="imgPet" runat="server" src="~/Assets/public/img/happypaws/pet-1.jpg" class="hp-side-img" alt="Luna, a rescued dog" />
                        <h4>
                            <asp:Literal ID="litPetName" runat="server" Text="Luna" /></h4>
                        <p class="mb-4">Dog · Labrador mix · 2 years</p>

                        <h5 class="mb-3">What happens next?</h5>
                        <ul class="list-unstyled hp-steps">
                            <li><i class="fa-solid fa-magnifying-glass"></i>Our team reviews your application.</li>
                            <li><i class="fa-solid fa-phone"></i>We call you to arrange a home visit.</li>
                            <li><i class="fa-solid fa-house-chimney"></i>If all goes well, you meet and take your new friend home.</li>
                        </ul>
                        <p class="mb-0">Follow your application status in <a runat="server" href="~/Adopter/MyApplications.aspx">My Applications</a>.</p>
                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
    <script>
        
        function validateAgree(sender, args) {
            args.IsValid = document.getElementById('<%= chkAgree.ClientID %>').checked;
        }
    </script>
</asp:Content>
