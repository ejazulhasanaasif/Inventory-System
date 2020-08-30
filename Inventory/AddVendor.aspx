<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMaster.Master" AutoEventWireup="true" CodeBehind="AddVendor.aspx.cs" Inherits="Inventory.AddVendor" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Add Vender</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- [ content ] Start -->
    <div class="container-fluid flex-grow-1 container-p-y">
        <asp:Label ID="lblId" runat="server" Visible="false"></asp:Label>
       <asp:LinkButton runat="server" href="VendorList.aspx" CssClass="btn btn-info" Style="position: absolute; right: 100px; top: 100px;">Vendor List</asp:LinkButton>
        <h4 class="font-weight-bold py-3 mb-0"></h4>
        <div class="text-muted small mt-0 mb-4 d-block breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="Dashboard.aspx"><i class="feather icon-home"></i></a></li>
                <li class="breadcrumb-item">Master</li>
                <li class="breadcrumb-item active">Update Vendor</li>
            </ol>
        </div>

        <div class="card mb-4">
            <h6 class="card-header">Update Vendor</h6>
            <div class="card-body">
                <div class="form-row">
                     <div class="form-group col mb-0">
                        <label class="form-label">Company Name</label>
                        <asp:TextBox ID="txtCompanyName" runat="server" CssClass="form-control" placeholder="Enter Company Name"></asp:TextBox>
                        <cc1:filteredtextboxextender id="FilteredTextBoxExtender6" runat="server" Enabled="True"
                            filtertype="LowercaseLetters,UppercaseLetters,Custom" targetcontrolid="txtCompanyName"
                            validchars=" "></cc1:filteredtextboxextender>
                        <div class="clearfix"></div>
                    </div>
                    <div class="form-group col mb-0">
                        <label class="form-label">Vendor Name</label>
                        <asp:TextBox ID="txtVendorName" runat="server" CssClass="form-control" placeholder="Enter Vendor"></asp:TextBox>
                        <cc1:filteredtextboxextender id="FilteredTextBoxExtender1" runat="server" Enabled="True"
                            filtertype="LowercaseLetters,UppercaseLetters,Custom" targetcontrolid="txtVendorName"
                            validchars=" "></cc1:filteredtextboxextender>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <br />
                <div class="form-row">
                    <div class="form-group col mb-0">
                        <label class="form-label">Mobile</label>
                        <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" placeholder="Enter Mobile" MaxLength="10"></asp:TextBox>
                        <cc1:filteredtextboxextender id="FilteredTextBoxExtender2" runat="server" Enabled="True"
                            filtertype="Numbers" targetcontrolid="txtMobile" />
                        <div class="clearfix"></div>
                    </div>
                    <div class="form-group col mb-0">
                        <label class="form-label">Gst Number</label>
                        <asp:TextBox ID="txtGstNumber" runat="server" CssClass="form-control" placeholder="Enter Gst No"></asp:TextBox>
                        <div class="clearfix"></div>
                    </div>

                </div>
                <br />
                <div class="form-row">
                    <div class="form-group col mb-0">
                        <label class="form-label">Address</label>
                        <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control" placeholder="Enter Your Address"></asp:TextBox>
                        <div class="clearfix"></div>
                    </div>
                    <div class="form-group col mb-0">
                        <label class="form-label">City</label>
                        <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" placeholder="Enter Your City"></asp:TextBox>
                        <cc1:filteredtextboxextender id="FilteredTextBoxExtender3" runat="server" Enabled="True"
                            filtertype="LowercaseLetters,UppercaseLetters,Custom" targetcontrolid="txtCity"
                            validchars=" "></cc1:filteredtextboxextender>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <br />
                <div class="form-row">
                    <div class="form-group col mb-0">
                        <label class="form-label">State</label>
                        <asp:TextBox ID="txtState" runat="server" CssClass="form-control" placeholder="Enter Your State Name"></asp:TextBox>
                        <cc1:filteredtextboxextender id="FilteredTextBoxExtender4" runat="server" enabled="True"
                            filtertype="LowercaseLetters,UppercaseLetters,Custom" targetcontrolid="txtState"
                            validchars=" "></cc1:filteredtextboxextender>
                        <div class="clearfix"></div>
                    </div>
                    <div class="form-group col mb-0">
                        <label class="form-label">Pin</label>
                        <asp:TextBox ID="txtPin" runat="server" CssClass="form-control" placeholder="Enter Your Pin"></asp:TextBox>
                        <cc1:filteredtextboxextender id="FilteredTextBoxExtender5" runat="server" enabled="True"
                            filtertype="Numbers" targetcontrolid="txtPin" />
                        <div class="clearfix"></div>
                    </div>
                </div>
                <br />

                <asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-primary float-right" Text="Update" OnClick="btnUpdate_Click"></asp:Button>
            </div>
        </div>

    </div>
    <!-- [ content ] End -->
</asp:Content>
