<%@ Page Title="Share Your Story | HappyPaws" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Testimonial.aspx.cs" Inherits="BCNS30869cw.Member.Testimonial" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- START PAGE BANNER -->
    <section class="section-top">
        <div class="container">
            <div class="col-lg-10 offset-lg-1 text-center">
                <div class="section-top-title wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.3s" data-wow-offset="0">
                    <h1>Share Your Story</h1>
                    <ul>
                        <li><a runat="server" href="~/Default.aspx">Home</a></li>
                        <li> / Share Your Story</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- END PAGE BANNER -->

    <!-- START TESTIMONIAL FORM (F18) -->
    <div class="contact_area section-padding">
        <div class="container">
            <div class="row">

                <!-- ========== LEFT: the form ========== -->
                <div class="col-lg-7 col-sm-12 col-xs-12 mb-4">
                    <div class="contact">
                        <h3 class="mb-2">Tell us your HappyPaws story</h3>
                        <p class="mb-4">Whether you adopted a pet or found a new home for yours, your story helps other families.</p>

                        <!-- Message after posting (e.g. "Thank you! Your story is now on our home page.") -->
                        <asp:Label ID="lblMessage" runat="server" CssClass="hp-success" EnableViewState="false" />

                        <div class="row">

                            <!-- Pet's name (optional): used for the line under the user's name -->
                            <div class="form-group col-md-12">
                                <asp:Label runat="server" AssociatedControlID="txtPetName" Text="Pet's name (optional)" />
                                <asp:TextBox ID="txtPetName" runat="server" CssClass="form-control" MaxLength="50" placeholder="e.g. Bella" />
                                <asp:RegularExpressionValidator ID="revPetName" runat="server" ControlToValidate="txtPetName"
                                    ValidationExpression="^[A-Za-z\s\-']{0,50}$"
                                    ErrorMessage="Letters, spaces, hyphens and apostrophes only." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                            </div>

                            <!-- The story -->
                            <div class="form-group col-md-12">
                                <asp:Label runat="server" AssociatedControlID="txtStory" Text="Your story" />
                                <asp:TextBox ID="txtStory" runat="server" TextMode="MultiLine" Rows="6" CssClass="form-control"
                                    placeholder="How did HappyPaws help you and your pet?" />
                                <span id="storyCounter" class="hp-counter">0 / 500</span>
                                <asp:RequiredFieldValidator ID="rfvStory" runat="server" ControlToValidate="txtStory"
                                    ErrorMessage="Please write your story." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                                <asp:RegularExpressionValidator ID="revStory" runat="server" ControlToValidate="txtStory"
                                    ValidationExpression="^[\s\S]{20,500}$"
                                    ErrorMessage="Your story must be between 20 and 500 characters." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                            </div>

                            <!-- Consent to publish -->
                            <div class="col-md-12 mb-4">
                                <asp:CheckBox ID="chkConsent" runat="server" CssClass="hp-remember"
                                    Text="I agree that HappyPaws may show my first name and story on its website." />
                                <asp:CustomValidator ID="cvConsent" runat="server" ClientValidationFunction="validateConsent"
                                    ErrorMessage="Please tick the box so we can publish your story." CssClass="hp-error" Display="Dynamic" />
                            </div>

                            <!-- Submit (no OnClick yet; the backend will add it) -->
                            <div class="col-md-12">
                                <asp:Button ID="btnSubmit" runat="server" Text="Post My Story" CssClass="btn_one" />
                            </div>
                        </div>
                    </div>
                </div>

                <!--preview of how it will look -->
                <div class="col-lg-5 col-sm-12 col-xs-12">
                    <div class="hp-side-panel">
                        <h4 class="mb-3">How your story will appear</h4>
                        <div class="hp-preview mb-3">
                            <i class="fa-solid fa-quote-left hp-quote"></i>
                            <p>We adopted Bella last spring and she has filled our home with joy. The HappyPaws team made the whole process easy.</p>
                            <div class="testi_pic_title">
                                <span class="hp-avatar">P</span>
                                <h4>Priya R.</h4>
                                <p>Adopted Bella</p>
                            </div>
                        </div>
                        <p class="mb-0"><small>Only your first name and the first letter of your last name are shown. Your email and phone number are never published.</small></p>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- END TESTIMONIAL FORM -->

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
    <script>
// 1) Browser-side check for the consent checkbox (used by the CustomValidator cvConsent)
function validateConsent(sender, args) {
    args.IsValid = document.getElementById('<%= chkConsent.ClientID %>').checked;
        }

        // 2) Live character counter under the story box
        $(function () {
            var $story = $('#<%= txtStory.ClientID %>');
            var $counter = $('#storyCounter');

            function updateCounter() {
                var length = $story.val().length;
                $counter.text(length + ' / 500');
                // Turn the counter red when the story is too long
                $counter.css('color', length > 500 ? '#dc3545' : '#777');
            }

            $story.on('input', updateCounter);   // runs on every key press, paste or delete
            updateCounter();                     // set the right number when the page loads
        });
    </script>
</asp:Content>