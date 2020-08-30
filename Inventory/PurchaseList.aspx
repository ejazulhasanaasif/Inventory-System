<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMaster.Master" AutoEventWireup="true" CodeBehind="PurchaseList.aspx.cs" Inherits="Inventory.PurchaseList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Purchase List</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

            <!-- [ Layout content ] Start -->
            <div class="layout-content">
                <!-- [ content ] Start -->
                <!-- [ Layout content ] Start -->
                <div class="layout-content">
                    <!-- [ content ] Start -->
                    <div class="container-fluid flex-grow-1 container-p-y">
                        <asp:LinkButton runat="server" href="AddPurchase.aspx" CssClass="btn btn-info" style="position: absolute; right: 100px; top: 130px;">Purchase Item</asp:LinkButton>
                        <h4 class="font-weight-bold py-3 mb-0">Purchase List</h4>
                        <div class="text-muted small mt-0 mb-4 d-block breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="Dashboard.aspx"><i class="feather icon-home"></i></a></li>
                                <li class="breadcrumb-item">Master</li>
                                <li class="breadcrumb-item active">Purchase List</li>
                            </ol>
                        </div>

                        <br />
                        <!-- DataTable within card -->
                        <div class="table-responsive">
                            <table class="datatables-demo table table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <th style="display: none">Id</th>
                                        <th>SlNo</th>
                                        <th>Invoice</th>
                                        <th>Purchase Date</th>
                                        <th>Vendor Name</th>
                                        <th>Base Amount</th>
                                        <th>GST Amount</th>
                                        <th>Discount</th>
                                        <%--<th>Status</th>--%>
                                        <th>Payble</th>
                                        <th>Print</th>
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
                                                    <asp:Label ID="lbl_rptinvoice" runat="server" Text='<%# Eval("invoice") %>'></asp:Label></td>
                                                <td>
                                                    <asp:Label ID="lbl_rptpurchase_date" runat="server" Text='<%# Eval("purchase_date", "{0:dd-MMMM-yyyy}") %>'></asp:Label></td>
                                                <td>
                                                    <asp:Label ID="lbl_rptvender_id" runat="server" Text='<%# Eval("vendorName") %>'></asp:Label></td>
                                                <td>
                                                    <asp:Label ID="lbl_rptbase_price" runat="server" Text='<%# Eval("base_price") %>'></asp:Label></td>
                                                <td>
                                                    <asp:Label ID="lbl_rptgst_price" runat="server" Text='<%# Eval("gst_price") %>'></asp:Label></td>
                                                <td>
                                                    <asp:Label ID="lbl_rptdiscount" runat="server" Text='<%# Eval("discount") %>'></asp:Label></td>
                                                <td>
                                                    <asp:Label ID="lbl_rptpayble" runat="server" Text='<%# Eval("payble") %>'></asp:Label></td>
                                                <%-- <td>
                                                    <asp:Label ID="lbl_rptstatus" runat="server" Text='<%# Convert.ToString(Eval("status"))  == "1" ? "Active" : "De-Active" %>'></asp:Label></td>--%>
                                                <td>
                                                    <asp:LinkButton ID="lb_PurchasePrint" runat="server" CommandName="PrintRecord" CommandArgument='<%# Eval("id") %>'><i class='fas fa-print'></i></asp:LinkButton>
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
                <!-- [ content ] End -->

                <!-- [ Layout footer ] Start -->

                <!-- [ Layout footer ] End -->

            </div>
        </ContentTemplate>
        <Triggers>
            <%--<asp:AsyncPostBackTrigger ControlID="btnSubmit" EventName="Click" />--%>
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>
