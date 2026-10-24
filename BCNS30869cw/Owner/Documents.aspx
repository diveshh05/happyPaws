<%@ Page Title="My Documents | HappyPaws" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Documents.aspx.cs" Inherits="BCNS30869cw.Owner.Documents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <!-- START PAGE BANNER -->
    <section class="section-top">
        <div class="container">
            <div class="col-lg-10 offset-lg-1 text-center">
                <div class="section-top-title wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.3s" data-wow-offset="0">
                    <h1>My Documents</h1>
                    <ul>
                        <li><a runat="server" href="~/Default.aspx">Home</a></li>
                        <li> / <a runat="server" href="~/Owner/MyRequests.aspx">My Requests</a></li>
                        <li> / My Documents</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- END PAGE BANNER -->

    <!-- START DOCUMENTS (F4) -->
    <section class="section-padding">
        <div class="container">
            <div class="row">

                <!-- ========== LEFT: upload form ========== -->
                <div class="col-lg-5 col-sm-12 mb-4">
                    <div class="hp-card contact">
                        <h3 class="mb-2">Upload a document</h3>
                        <p class="mb-4">Upload each document for the pet you are surrendering.</p>

                        <asp:Label ID="lblMessage" runat="server" CssClass="hp-success" EnableViewState="false" />

                        <!-- Which pet / request (the backend will list only this owner's requests) -->
                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="ddlRequest" Text="For which pet?" />
                            <asp:DropDownList ID="ddlRequest" runat="server" CssClass="form-select">
                                <asp:ListItem Value="" Text="-- Please choose --" />
                                <asp:ListItem Value="7" Text="Max (Dog), request #7" />
                                <asp:ListItem Value="5" Text="Tiger (Cat), request #5" />
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvRequest" runat="server" ControlToValidate="ddlRequest"
                                ErrorMessage="Please choose a pet." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                        </div>

                        <!-- Document type: the 4 documents named in the brief -->
                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="ddlDocType" Text="Type of document" />
                            <asp:DropDownList ID="ddlDocType" runat="server" CssClass="form-select">
                                <asp:ListItem Value="" Text="-- Please choose --" />
                                <asp:ListItem Value="Vaccination" Text="Vaccination record" />
                                <asp:ListItem Value="Medical" Text="Medical record" />
                                <asp:ListItem Value="OwnerID" Text="Owner's ID" />
                                <asp:ListItem Value="Agreement" Text="Signed agreement form" />
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="rfvDocType" runat="server" ControlToValidate="ddlDocType"
                                ErrorMessage="Please choose the type of document." CssClass="hp-error" Display="Dynamic" SetFocusOnError="true" />
                        </div>

                        <!-- File -->
                        <div class="form-group">
                            <asp:Label runat="server" AssociatedControlID="fuDocument" Text="File" />
                            <asp:FileUpload ID="fuDocument" runat="server" CssClass="form-control" accept=".pdf,.jpg,.jpeg,.png" />
                            <span class="hp-hint">PDF, JPG or PNG, maximum 5 MB.</span>
                            <asp:RequiredFieldValidator ID="rfvDocument" runat="server" ControlToValidate="fuDocument"
                                ErrorMessage="Please choose a file." CssClass="hp-error" Display="Dynamic" />
                            <asp:RegularExpressionValidator ID="revDocument" runat="server" ControlToValidate="fuDocument"
                                ValidationExpression="^.+\.([pP][dD][fF]|[jJ][pP][eE]?[gG]|[pP][nN][gG])$"
                                ErrorMessage="Only PDF, JPG or PNG files are allowed." CssClass="hp-error" Display="Dynamic" />
                        </div>

                        <!-- Upload (no OnClick yet; the backend will add it) -->
                        <asp:Button ID="btnUpload" runat="server" Text="Upload Document" CssClass="btn_one mb-3" />

                        <p class="mb-0">
                            <i class="fa-solid fa-file-pdf"></i>
                            Need the agreement form?
                            <a runat="server" href="~/Assets/public/docs/agreement-form.pdf" target="_blank">Download a blank copy</a>,
                            sign it, then upload it here.
                        </p>
                    </div>
                </div>

                <!-- ========== RIGHT: checklist + uploaded files ========== -->
                <div class="col-lg-7 col-sm-12">

                    <!-- Checklist: which of the 4 documents are uploaded (the backend will set the icons) -->
                    <div class="hp-card mb-4">
                        <h4 class="mb-3">Required documents for Max</h4>
                        <ul class="list-unstyled hp-checklist mb-0">
                            <li><i class="fa-solid fa-circle-check"></i>Vaccination record</li>
                            <li><i class="fa-solid fa-circle-check"></i>Medical record</li>
                            <li><i class="fa-regular fa-circle"></i>Owner's ID: still needed</li>
                            <li><i class="fa-regular fa-circle"></i>Signed agreement form: still needed</li>
                        </ul>
                    </div>

                    <!-- Uploaded documents -->
                    <div class="hp-card">
                        <h4 class="mb-3">Uploaded documents</h4>

                        <!-- Shown by the backend when nothing has been uploaded yet -->
                        <asp:Label ID="lblNoDocuments" runat="server" Visible="false" CssClass="d-block"
                            Text="You have not uploaded any documents yet." />

                        <div class="table-responsive">
                            <table class="table align-middle hp-table mb-0">
                                <thead>
                                    <tr>
                                        <th>Document</th>
                                        <th>Pet</th>
                                        <th>Uploaded</th>
                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td><i class="fa-regular fa-file-pdf"></i> Vaccination record</td>
                                        <td>Max</td>
                                        <td>18 Oct 2026</td>
                                        <td class="text-nowrap">
                                            <a href="#" target="_blank" rel="noopener" class="me-3">View</a>
                                            <asp:LinkButton ID="btnDelete1" runat="server" CssClass="hp-delete" CausesValidation="false"
                                                OnClientClick="return confirm('Delete this document? This cannot be undone.');">Delete</asp:LinkButton>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><i class="fa-regular fa-file-image"></i> Medical record</td>
                                        <td>Max</td>
                                        <td>18 Oct 2026</td>
                                        <td class="text-nowrap">
                                            <a href="#" target="_blank" rel="noopener" class="me-3">View</a>
                                            <asp:LinkButton ID="btnDelete2" runat="server" CssClass="hp-delete" CausesValidation="false"
                                                OnClientClick="return confirm('Delete this document? This cannot be undone.');">Delete</asp:LinkButton>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <!-- END DOCUMENTS -->

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="scripts" runat="server">
</asp:Content>
