<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMaster.Master" AutoEventWireup="true" CodeBehind="VendorList.aspx.cs" Inherits="Inventory.VenderList" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Vender List</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

            <!-- [ Layout content ] Start -->
            <div class="layout-content">
                <!-- [ content ] Start -->
                <div class="container-fluid flex-grow-1 container-p-y">
                    <button type="button" class="btn btn-info" data-backdrop="static" data-keyboard="false" data-toggle="modal" data-target="#myModal" style="position: absolute; right: 100px; top: 130px;">Add Vendor</button>
                    <h4 class="font-weight-bold py-3 mb-0">Vender List</h4>
                    <div class="text-muted small mt-0 mb-4 d-block breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="Dashboard.aspx"><i class="feather icon-home"></i></a></li>
                            <li class="breadcrumb-item">Master</li>
                            <li class="breadcrumb-item active">Vender List</li>
                        </ol>
                    </div>

                    <br />
                    <!-- DataTable within card -->
                    <div class="table-responsive">
                        <table class="datatables-demo table table-striped table-bordered">
                            <thead>
                                <tr>
                                    <th style="display: none">Id</th>
                                    <th>So</th>
                                    <th>Company Name</th>
                                    <th>Vendor Name</th>
                                    <th>Mobile</th>
                                    <th>GST Number</th>
                                    <th>Address</th>
                                    <th>City</th>
                                    <th>State</th>
                                    <th>Pin</th>
                                    <%--<th>Status</th>--%>
                                    <th>Edit</th>
                                    <th>Delete</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="rpt" runat="server" OnItemCommand="RptSubject_OnItemCommand">
                                    <ItemTemplate>
                                        <tr>
                                            <td style="display: none">
                                                <asp:Label ID="lbl_rptid" runat="server" Text='<%# Eval("id") %>'></asp:Label></td>
                                            <td>
                                                <asp:Label ID="lbl_rptsno" runat="server" Text='<%# Container.ItemIndex + 1 %>'></asp:Label></td>
                                             <td>
                                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("company_name") %>'></asp:Label></td>
                                            <td>
                                                <asp:Label ID="lbl_rptvendor_name" runat="server" Text='<%# Eval("vendor_name") %>'></asp:Label></td>
                                            <td>
                                                <asp:Label ID="lbl_rptmobile" runat="server" Text='<%# Eval("mobile") %>'></asp:Label></td>
                                            <td>
                                                <asp:Label ID="lbl_rptgst_number" runat="server" Text='<%# Eval("gst_number") %>'></asp:Label></td>
                                            <td>
                                                <asp:Label ID="lbl_rptaddress" runat="server" Text='<%# Eval("address") %>'></asp:Label></td>
                                            <td>
                                                <asp:Label ID="lbl_rptcity" runat="server" Text='<%# Eval("city") %>'></asp:Label></td>
                                            <td>
                                                <asp:Label ID="lbl_rptstate" runat="server" Text='<%# Eval("state") %>'></asp:Label></td>
                                            <td>
                                                <asp:Label ID="lbl_rptpin" runat="server" Text='<%# Eval("pin") %>'></asp:Label></td>
                                            <%-- <td>
                                                    <asp:Label ID="lbl_rptstatus" runat="server" Text='<%# Convert.ToString(Eval("status"))  == "1" ? "Active" : "De-Active" %>'></asp:Label></td>--%>
                                            <td>
                                                <asp:LinkButton ID="lb_VendorEdit" runat="server" CommandName="EditRecord" CommandArgument='<%# Eval("id") %>'><i class='fas fa-edit'></i></asp:LinkButton>
                                            </td>
                                            <td>
                                                <asp:LinkButton ID="lb_VendorDelete" runat="server" CommandName="DeleteRecord" CommandArgument='<%# Eval("id") %>'><i class='fas fa-trash'></i></asp:LinkButton>
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </tbody>
                        </table>
                    </div>

                </div>
                <!-- [ content ] End -->

                <!-- [ Layout footer ] Start -->

                <!-- [ Layout footer ] End -->

            </div>
            <!-- [ Layout content ] Start -->
            <div class="container">
                <!-- Modal -->
                <div class="modal fade" id="myModal" role="dialog">
                    <div class="modal-dialog">

                        <!-- Modal content-->
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                <h4 class="modal-title">Modal Header</h4>
                            </div>
                            <div class="modal-body">
                                <div class="form-row">
                                     <div class="form-group col mb-0">
                                        <label class="form-label">Company Name</label>
                                        <asp:TextBox ID="txtCompanyName" runat="server" CssClass="form-control" placeholder="Enter Company Name"></asp:TextBox>
                                        <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender6" runat="server" Enabled="True"
                                            FilterType="LowercaseLetters,UppercaseLetters,Custom" TargetControlID="txtCompanyName"
                                            ValidChars=" "></cc1:FilteredTextBoxExtender>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="form-group col mb-0">
                                        <label class="form-label">Vendor Name</label>
                                        <asp:TextBox ID="txtVendorName" runat="server" CssClass="form-control" placeholder="Enter Vendor"></asp:TextBox>
                                        <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" Enabled="True"
                                            FilterType="LowercaseLetters,UppercaseLetters,Custom" TargetControlID="txtVendorName"
                                            ValidChars=" "></cc1:FilteredTextBoxExtender>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                                <br />
                                <div class="form-row">
                                    <div class="form-group col mb-0">
                                        <label class="form-label">Mobile</label>
                                        <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" placeholder="Enter Mobile" MaxLength="10"></asp:TextBox>
                                        <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" Enabled="True"
                                            FilterType="Numbers" TargetControlID="txtMobile" />
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
                                        <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" Enabled="True"
                                            FilterType="LowercaseLetters,UppercaseLetters,Custom" TargetControlID="txtCity"
                                            ValidChars=" "></cc1:FilteredTextBoxExtender>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                                <br />
                                <div class="form-row">
                                    <div class="form-group col mb-0">
                                        <label class="form-label">State</label>
                                        <asp:TextBox ID="txtState" runat="server" CssClass="form-control" placeholder="Enter Your State Name"></asp:TextBox>
                                        <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server" Enabled="True"
                                            FilterType="LowercaseLetters,UppercaseLetters,Custom" TargetControlID="txtState"
                                            ValidChars=" "></cc1:FilteredTextBoxExtender>
                                        <div class="clearfix"></div>
                                    </div>
                                    <div class="form-group col mb-0">
                                        <label class="form-label">Pin</label>
                                        <asp:TextBox ID="txtPin" runat="server" CssClass="form-control" placeholder="Enter Your Pin"></asp:TextBox>
                                        <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender5" runat="server" Enabled="True"
                                            FilterType="Numbers" TargetControlID="txtPin" />
                                        <div class="clearfix"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary" Text="Submit" OnClientClick="return valid();" OnClick="btnSubmit_Click"></asp:Button>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="btnSubmit" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>

    <script type="text/javascript" language="javascript">
        function valid() {
            let txtCompanyName = $('#<%=txtCompanyName.ClientID%>').val();
            let txtVendorName = $('#<%=txtVendorName.ClientID%>').val();
            let txtMobile = $('#<%=txtMobile.ClientID%>').val();
            let txtAddress = $('#<%=txtAddress.ClientID%>').val();
            let txtCity = $('#<%=txtCity.ClientID%>').val();
            let txtState = $('#<%=txtState.ClientID%>').val();
            let txtPin = $('#<%=txtPin.ClientID%>').val();

            //for Company Name
            if (txtCompanyName == '') {
                alert("Company name cannot be left blank");
                $('#<%=txtCompanyName.ClientID%>').focus();
                return false;
            }

            //for Vendor Name
            if (txtVendorName == '') {
                alert("Vendor name cannot be left blank");
                $('#<%=txtVendorName.ClientID%>').focus();
                return false;
            }

            //For Mobile
            if (txtMobile == '') {
                alert("Mobile cannot be left blank");
                $('#<%=txtMobile.ClientID%>').focus();
                return false;
            }

            //For Address
            if (txtAddress == '') {
                alert("Address cannot be left blank");
                $('#<%=txtAddress.ClientID%>').focus();
                return false;
            }

            //For City
            if (txtCity == '') {
                alert("City cannot be left blank");
                $('#<%=txtCity.ClientID%>').focus();
                return false;
            }
            //For State
            if (txtState == '') {
                alert("State cannot be left blank");
                $('#<%=txtState.ClientID%>').focus();
                return false;
            }
            //For Pin
            if (txtPin == '') {
                alert("Pin cannot be left blank");
                $('#<%=txtPin.ClientID%>').focus();
                return false;
            }

            //button submit
            if (!confirm('Do you want to Submit?')) {
                return false;
            }

            else {
                return true;
            }
        }
    </script>
</asp:Content>
