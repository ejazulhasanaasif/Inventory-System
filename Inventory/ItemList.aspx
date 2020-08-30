<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMaster.Master" AutoEventWireup="true" CodeBehind="ItemList.aspx.cs" Inherits="Inventory.ItemList" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Item List</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <!-- [ Layout content ] Start -->
            <div class="layout-content">
                <!-- [ content ] Start -->
                <div class="container-fluid flex-grow-1 container-p-y">
                    <button type="button" class="btn btn-info" data-backdrop="static" data-keyboard="false" data-toggle="modal" data-target="#myModal" style="position: absolute; right: 100px; top: 130px;">Add Item</button>
                    <h4 class="font-weight-bold py-3 mb-0">Item List</h4>
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
                                    <th>Item Name</th>
                                    <th>Item Price</th>
                                    <th>GST Percent</th>
                                    <th>HSN Code</th>
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
                                                <asp:Label ID="lbl_rptitem_name" runat="server" Text='<%# Eval("item_name") %>'></asp:Label></td>
                                            <td>
                                                <asp:Label ID="lbl_rptitem_price" runat="server" Text='<%# Eval("item_price") %>'></asp:Label></td>
                                            <td>
                                                <asp:Label ID="lbl_rptgst_percent" runat="server" Text='<%# Eval("gst_percent") %>'></asp:Label></td>
                                            <td>
                                                <asp:Label ID="lbl_rpthsn_code" runat="server" Text='<%# Eval("hsn_code") %>'></asp:Label></td>
                                            <%-- <td>
                                                    <asp:Label ID="lbl_rptstatus" runat="server" Text='<%# Convert.ToString(Eval("status"))  == "1" ? "Active" : "De-Active" %>'></asp:Label></td>--%>
                                            <td>
                                                <asp:LinkButton ID="lb_ItemEdit" runat="server" CommandName="EditRecord" CommandArgument='<%# Eval("id") %>'><i class='fas fa-edit'></i></asp:LinkButton>
                                            </td>
                                            <td>
                                                <asp:LinkButton ID="lb_ItemDelete" runat="server" CommandName="DeleteRecord" CommandArgument='<%# Eval("id") %>'><i class='fas fa-trash'></i></asp:LinkButton>
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
            let txtItemName = $('#<%=txtItemName.ClientID%>').val();
            let txtItemPrice = $('#<%=txtItemPrice.ClientID%>').val();
            let txtGstPercent = $('#<%=txtGstPercent.ClientID%>').val();
            let txtHsnCode = $('#<%=txtHsnCode.ClientID%>').val();

            //For Item Name
            if (txtItemName == '') {
                alert("Item name cannot be left blank");
                $('#<%=txtItemName.ClientID%>').focus();
                return false;
            }

            //For Hsn Code
            if (txtItemPrice == '') {
                alert("Hsn Code cannot be left blank");
                $('#<%=txtHsnCode.ClientID%>').focus();
                return false;
            }

            //For Item Price
            if (txtItemPrice == '') {
                alert("Item price cannot be left blank");
                $('#<%=txtItemPrice.ClientID%>').focus();
                return false;
            }
            //For Gst Percent
            if (txtItemPrice == '') {
                alert("GST percent cannot be left blank");
                $('#<%=txtGstPercent.ClientID%>').focus();
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
