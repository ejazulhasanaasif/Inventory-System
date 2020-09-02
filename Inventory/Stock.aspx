<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMaster.Master" AutoEventWireup="true" CodeBehind="Stock.aspx.cs" Inherits="Inventory.Stock" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Stock List</title>
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
                        <asp:LinkButton runat="server" href="AddPurchase.aspx" CssClass="btn btn-info" Style="position: absolute; right: 230px; top: 100px;">Purchase Item</asp:LinkButton>
                        <asp:LinkButton runat="server" href="AddSale.aspx" CssClass="btn btn-info" Style="position: absolute; right: 125px; top: 100px;">Sale Item</asp:LinkButton>
                        <h4 class="font-weight-bold py-3 mb-0">Stock</h4>
                        <div class="text-muted small mt-0 mb-4 d-block breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="Dashboard.aspx"><i class="feather icon-home"></i></a></li>
                                <li class="breadcrumb-item">Master</li>
                                <li class="breadcrumb-item active">Stock</li>
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
                                         <th>Items</th>
                                        <th>Avalaible Quantity</th>
                                        <th>Print</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <asp:Repeater ID="rpt" runat="server" OnItemCommand="RptSubject_OnItemCommand">
                                        <ItemTemplate>
                                            <tr>
                                                <td style="display: none">
                                                    <asp:Label ID="lbl_rptid" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lbl_rptsno" runat="server" Text='<%# Container.ItemIndex + 1 %>'></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lbl_rptitem_name" runat="server" Text='<%# Eval("item_name") %>'></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="lbl_rptquantity" runat="server" Text='<%# Eval("quantity") %>'></asp:Label>
                                                </td>
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
