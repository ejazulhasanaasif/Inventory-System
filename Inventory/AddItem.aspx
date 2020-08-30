<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMaster.Master" AutoEventWireup="true" CodeBehind="AddItem.aspx.cs" Inherits="Inventory.AddItem" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Add Items</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- [ content ] Start -->
    <div class="container-fluid flex-grow-1 container-p-y">
        <asp:Label ID="lblId" runat="server" Visible="false"></asp:Label>
        <asp:LinkButton runat="server" href="ItemList.aspx" CssClass="btn btn-info" Style="position: absolute; right: 100px; top: 100px;">Item List</asp:LinkButton>
        <h4 class="font-weight-bold py-3 mb-0"></h4>
        <div class="text-muted small mt-0 mb-4 d-block breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="Dashboard.aspx"><i class="feather icon-home"></i></a></li>
                <li class="breadcrumb-item">Master</li>
                <li class="breadcrumb-item active">Update Items</li>
            </ol>
        </div>

        <div class="card mb-4">
            <h6 class="card-header">Purchase Item</h6>
            <div class="card-body">
                <div class="form-row">
                    <div class="form-group col mb-0">
                         <label class="form-label">Item Name</label>
                        <asp:TextBox ID="txtItemName" runat="server" CssClass="form-control" placeholder="Enter HSN CodeItem Name"></asp:TextBox>
                        <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" Enabled="True"
                            FilterType="LowercaseLetters,UppercaseLetters,Custom" TargetControlID="txtItemName"
                            ValidChars=" "></cc1:FilteredTextBoxExtender>
                        <div class="clearfix"></div>
                    </div>
                    <div class="form-group col mb-0">
                       <label class="form-label">HSN Code</label>
                        <asp:TextBox ID="txtHsnCode" runat="server" CssClass="form-control" placeholder="Enter HSN Code"></asp:TextBox>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <br />
                <div class="form-row">
                    <div class="form-group col mb-0">
                        <label class="form-label">Item Price</label>
                        <asp:TextBox ID="txtItemPrice" runat="server" CssClass="form-control" placeholder="Enter Item Price"></asp:TextBox>
                        <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" FilterType="Numbers, Custom"
                            ValidChars="." TargetControlID="txtItemPrice" />
                        <div class="clearfix"></div>
                    </div>
                    <div class="form-group col mb-0">
                         <label class="form-label">GST(%)</label>
                        <asp:TextBox ID="txtGstPercent" runat="server" CssClass="form-control" placeholder="Enter GST Percent"></asp:TextBox>
                        <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server" Enabled="True"
                            FilterType="Numbers" TargetControlID="txtGstPercent" />
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
