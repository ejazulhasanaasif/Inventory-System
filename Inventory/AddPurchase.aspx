<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMaster.Master" AutoEventWireup="true" Async="true" CodeBehind="AddPurchase.aspx.cs" Inherits="Inventory.AddPurchase" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Add Purchase</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

            <!-- [ content ] Start -->
            <div class="container-fluid flex-grow-1 container-p-y">
                <asp:LinkButton runat="server" href="PurchaseList.aspx" CssClass="btn btn-info" Style="position: absolute; right: 125px; top: 100px;">Purchase List</asp:LinkButton>
                <h4 class="font-weight-bold py-3 mb-0"></h4>
                <div class="text-muted small mt-0 mb-4 d-block breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="Dashboard.aspx"><i class="feather icon-home"></i></a></li>
                        <li class="breadcrumb-item">Purchase</li>
                        <li class="breadcrumb-item active">Purchase Item</li>
                    </ol>
                </div>

                <div class="card mb-4">
                    <h6 class="card-header">Purchase Item</h6>
                    <div class="card-body">
                        <div class="form-row">
                            <div class="form-group col-md-4">
                                <label class="form-label">Vendor</label>
                                <asp:DropDownList ID="ddlVendor" runat="server" CssClass="custom-select">
                                    <asp:ListItem Value="0">--Select Vendor--</asp:ListItem>
                                </asp:DropDownList>
                                <div class="clearfix"></div>
                            </div>
                            <div class="form-group col-md-4">
                            </div>
                            <div class="form-group col-md-2">
                                <label class="form-label">Invoice</label>
                                <asp:TextBox ID="txtInvoice" runat="server" CssClass="form-control"></asp:TextBox>
                                <div class="clearfix"></div>
                            </div>
                            <div class="form-group col-md-2">
                                <label class="form-label">Purchase Date</label>
                                <asp:TextBox ID="txtPurchaseDate" runat="server" CssClass="form-control"></asp:TextBox>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <br />
                        <div class="form-row">
                            <div class="form-group col-md-2">
                                <label class="form-label">Item</label>
                                <asp:DropDownList ID="ddlItem" runat="server" CssClass="custom-select" OnChange="callGst();return false;">
                                    <asp:ListItem Value="0">--Select Item--</asp:ListItem>
                                </asp:DropDownList>
                                <div class="clearfix"></div>
                            </div>
                            <div class="form-group col-md-2">
                                <label class="form-label">Purchase Price</label>
                                <asp:TextBox ID="txtPurchasePrice" runat="server" CssClass="form-control" onKeyUp="calculate()"></asp:TextBox>
                                <div class="clearfix"></div>
                            </div>
                            <div class="form-group col-md-2">
                                <label class="form-label">Quantity</label>
                                <asp:TextBox ID="txtQuantity" runat="server" CssClass="form-control" onKeyUp="calculate()"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" FilterType="Numbers"
                                    TargetControlID="txtQuantity" />
                                <div class="clearfix"></div>
                            </div>
                            <div class="form-group col-md-2">
                                <label class="form-label">GST(%)</label>
                                <asp:TextBox ID="txtGst" runat="server" CssClass="form-control" onKeyUp="calculate()"></asp:TextBox>
                                <div class="clearfix"></div>
                            </div>
                            <div class="form-group col-md-2">
                                <label class="form-label">Total Price</label>
                                <asp:TextBox ID="txtTotalPrice" runat="server" CssClass="form-control"></asp:TextBox>
                                <div class="clearfix"></div>
                            </div>

                            <div class="form-group col-md-2">
                                <button class="btn btn-default" style="position: absolute; right: 80px; top: 20px;" onclick="AddRow();return false">
                                    Add Row
                                </button>
                            </div>
                        </div>
                        <br />
                        <div class="form-row">
                            <div class="form-group col-md-12">
                                <table class="table table-striped m-0" id="myTable">
                                    <thead>
                                        <tr>
                                            <th>Item</th>
                                            <th>Purchase Rate</th>
                                            <th>Quantity</th>
                                            <th>GST</th>
                                            <th>Total</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    </tbody>
                                </table>
                                <input type="hidden" id="hdncount" name="hdncount" value="0" />
                                <div>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="form-row">

                            <div class="form-group col-md-6">
                                <div class="clearfix"></div>
                            </div>
                            <div class="form-group col-md-2">
                                <label class="form-label" style="position: absolute; right: 50px; top: 15px;">
                                    Base Price
                                </label>
                            </div>
                            <div class="form-group col-md-4">
                                <asp:TextBox ID="txtBasePrice" runat="server" CssClass="form-control"></asp:TextBox>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <br />
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <div class="clearfix"></div>
                            </div>
                            <div class="form-group col-md-2">
                                <label class="form-label" style="position: absolute; right: 50px; top: 15px;">
                                    GST Price
                                </label>
                            </div>
                            <div class="form-group col-md-4">
                                <asp:TextBox ID="txtGstPrice" runat="server" CssClass="form-control"></asp:TextBox>

                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <br />
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <div class="clearfix"></div>
                            </div>
                            <div class="form-group col-md-2">
                                <label class="form-label" style="position: absolute; right: 50px; top: 15px;">
                                    Discount
                                </label>
                            </div>
                            <div class="form-group col-md-4">
                                <asp:TextBox ID="txtDiscount" runat="server" CssClass="form-control" onKeyUp="calPayblePrice()"></asp:TextBox>
                                <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" FilterType="Numbers, Custom"
                                    ValidChars="." TargetControlID="txtDiscount" />
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <br />
                        <div class="form-row">

                            <div class="form-group col-md-6">
                                <div class="clearfix"></div>
                            </div>
                            <div class="form-group col-md-2">
                                <label class="form-label" style="position: absolute; right: 50px; top: 15px;">
                                    Payble
                                </label>
                            </div>
                            <div class="form-group col-md-4">
                                <asp:TextBox ID="txtPayble" runat="server" CssClass="form-control"></asp:TextBox>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <br />

                        <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary float-right" Text="Submit" OnClientClick="return valid();" OnClick="btnSubmit_Click"></asp:Button>
                    </div>
                </div>

            </div>
            <!-- [ content ] End -->
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="btnSubmit" EventName="Click" />
            <asp:AsyncPostBackTrigger ControlID="ddlItem" />
            <asp:AsyncPostBackTrigger ControlID="ddlVendor" />
        </Triggers>
    </asp:UpdatePanel>


    <script type="text/javascript">
        function calculate() {

            var purchase_price = document.getElementById('<%=txtPurchasePrice.ClientID%>').value;
            var qty = document.getElementById('<%=txtQuantity.ClientID%>').value;
            var gst = document.getElementById('<%=txtGst.ClientID%>').value;
            if (purchase_price != '' && qty != '') {
                var mulPurchaseQty = parseFloat(purchase_price) * parseFloat(qty);
                document.getElementById('<%=txtTotalPrice.ClientID%>').value = parseFloat(mulPurchaseQty).toFixed(2);
            }
            else {
                document.getElementById('<%=txtTotalPrice.ClientID%>').value = 0;
            }
            return false;
        }


        function calPayblePrice() {

            var basePrice = document.getElementById('<%=txtBasePrice.ClientID%>').value;
            var gstPrice = document.getElementById('<%=txtGstPrice.ClientID%>').value;
            var discountPrice = document.getElementById('<%=txtDiscount.ClientID%>').value;
            var addBaseGst = parseFloat(basePrice) + parseFloat(gstPrice);
            if (discountPrice == '') {
                document.getElementById('<%=txtDiscount.ClientID%>').value = 0;
            }
            else {
                if (addBaseGst > discountPrice) {
                    var subDiscount = parseFloat(addBaseGst) - parseFloat(discountPrice);
                    document.getElementById('<%=txtPayble.ClientID%>').value = parseFloat(subDiscount).toFixed(2);
                }
                else if (addBaseGst == discountPrice) {
                    document.getElementById('<%=txtPayble.ClientID%>').value = 0;
                }
                else {
                    alert("Discount Too Much!");
                }
            }
            return false;
        }

        function AddRow() {
            var hdfvalue = parseInt(document.getElementById('hdncount').value);
            var myTable = document.getElementById('myTable');
            var ddlitem = document.getElementById('<%=ddlItem.ClientID%>');
            var itemvalue = ddlitem.options[ddlitem.selectedIndex].innerHTML;
            var purchaseprice = document.getElementById('<%=txtPurchasePrice.ClientID%>').value;
            var qty = document.getElementById('<%=txtQuantity.ClientID%>').value;
            var gst = document.getElementById('<%=txtGst.ClientID%>').value;
            var totalprice = document.getElementById('<%=txtTotalPrice.ClientID%>').value;
            if (itemvalue && purchaseprice && qty && purchaseprice >= 0 && qty >= 0) {
                var myTr = document.createElement("tr");
                var myTd1 = document.createElement("td");
                var myTd2 = document.createElement("td");
                var myTd3 = document.createElement("td");
                var myTd4 = document.createElement("td");
                var myTd5 = document.createElement("td");
                var myTd6 = document.createElement("td");

                var myItem = document.createElement("input");
                myItem.setAttribute("id", "myItem_" + hdfvalue);
                myItem.setAttribute("name", "myItem_" + hdfvalue);
                myItem.setAttribute("disable", "true");
                myItem.setAttribute("value", itemvalue);
                myItem.setAttribute("class", 'form-control');
                myItem.setAttribute("readOnly", "true");
                myTd1.appendChild(myItem);

                var myPrice = document.createElement("input");
                myPrice.setAttribute("id", "myPrice_" + hdfvalue);
                myPrice.setAttribute("name", "myPrice_" + hdfvalue);
                myPrice.setAttribute("disable", "true");
                myPrice.setAttribute("value", purchaseprice);
                myPrice.setAttribute("class", 'form-control');
                myPrice.setAttribute("readOnly", "true");
                myTd2.appendChild(myPrice);

                var myQty = document.createElement("input");
                myQty.setAttribute("id", "myQty_" + hdfvalue);
                myQty.setAttribute("name", "myQty_" + hdfvalue);
                myQty.setAttribute("disable", "true");
                myQty.setAttribute("value", qty);
                myQty.setAttribute("class", 'form-control');
                myQty.setAttribute("readOnly", "true");
                myTd3.appendChild(myQty);

                var myGst = document.createElement("input");
                myGst.setAttribute("id", "myGst_" + hdfvalue);
                myGst.setAttribute("name", "myGst_" + hdfvalue);
                myGst.setAttribute("disable", "true");
                myGst.setAttribute("value", gst);
                myGst.setAttribute("class", 'form-control');
                myGst.setAttribute("readOnly", "true");
                myTd4.appendChild(myGst);

                var myTotal = document.createElement("input");
                myTotal.setAttribute("id", "myTotal_" + hdfvalue);
                myTotal.setAttribute("name", "myTotal_" + hdfvalue);
                myTotal.setAttribute("disable", "true");
                myTotal.setAttribute("value", totalprice);
                myTotal.setAttribute("class", 'form-control');
                myTotal.setAttribute("readOnly", "true");
                myTd5.appendChild(myTotal);

                var myButton = document.createElement("Button");
                myButton.setAttribute("id", "myButton_" + hdfvalue);
                myButton.setAttribute("class", "btn btn-danger");
                myButton.setAttribute("value", "Delete");
                myButton.setAttribute("onClick", "Delete_Row(this.id); return false;");
                myButton.innerHTML = "Delete Row";
                myTd6.appendChild(myButton);

                var baseprice = document.getElementById('<%=txtBasePrice.ClientID%>').value;
                var totalprice = document.getElementById('<%=txtTotalPrice.ClientID%>').value;
                var txt_gstPrice = document.getElementById('<%=txtGstPrice.ClientID%>').value;
                var txt_gst = document.getElementById('<%=txtGst.ClientID%>').value;
                var purchasePrice = document.getElementById('<%=txtPurchasePrice.ClientID%>').value;
                var itemQuantity = document.getElementById('<%=txtQuantity.ClientID%>').value;
                var payblePrice = document.getElementById('<%=txtPayble.ClientID%>').value;
                var discountPrice = document.getElementById('<%=txtDiscount.ClientID%>').value;
                var mulPurchaseQuantity = parseFloat(purchasePrice) * parseFloat(itemQuantity);
                var calGstPrice = (parseFloat(mulPurchaseQuantity) * parseFloat(txt_gst)) / 100;

                document.getElementById('<%=txtDiscount.ClientID%>').value = "0";

                if (baseprice == '')
                    baseprice = 0;
                else
                    baseprice = parseFloat(baseprice);
                baseprice += parseFloat(totalprice);
                document.getElementById('<%=txtBasePrice.ClientID%>').value = parseFloat(baseprice).toFixed(2);

                if (purchasePrice != '' && itemQuantity != '' && txt_gst != '') {


                    if (txt_gstPrice != "") {
                        var txt_gstPriceVal = eval(txt_gstPrice) + eval(calGstPrice);
                        document.getElementById('<%=txtGstPrice.ClientID%>').value = txt_gstPriceVal.toFixed(2);
                    }
                    else {
                        document.getElementById('<%=txtGstPrice.ClientID%>').value = parseFloat(calGstPrice).toFixed(2);
                    }

                }
                var addTotalGstPrice = parseFloat(totalprice) + parseFloat(calGstPrice);
                if (payblePrice == '') {

                    document.getElementById('<%=txtPayble.ClientID%>').value = parseFloat(addTotalGstPrice);
                }
                else {
                    payblePriceVal = (parseFloat(payblePrice) + parseFloat(addTotalGstPrice)) - parseFloat(discountPrice);
                    document.getElementById('<%=txtPayble.ClientID%>').value = parseFloat(payblePriceVal).toFixed(2);
                }

                myTr.appendChild(myTd1);
                myTr.appendChild(myTd2);
                myTr.appendChild(myTd3);
                myTr.appendChild(myTd4);
                myTr.appendChild(myTd5);
                myTr.appendChild(myTd6);
                myTable.appendChild(myTr);
                hdfvalue = hdfvalue + 1;
                document.getElementById('hdncount').value = hdfvalue;

                document.getElementById('<%=ddlItem.ClientID%>').selectedIndex = -1 + "--Select--";
                document.getElementById('<%=txtPurchasePrice.ClientID%>').value = "";
                document.getElementById('<%=txtQuantity.ClientID%>').value = "";
                document.getElementById('<%=txtGst.ClientID%>').value = "";
                document.getElementById('<%=txtTotalPrice.ClientID%>').value = "";

                return false;
            }
            else {
                alert("Textbox never be blank and less than 0?");
            }
        }

        function Delete_Row(id) {

            var btnArr = id.split("_");
            var btnIndex = btnArr[1];
            var purchasePrice = document.getElementById("myPrice_" + btnIndex).value;
            var itemQuantity = document.getElementById("myQty_" + btnIndex).value;
            var itemGst = document.getElementById("myGst_" + btnIndex).value;
            var paybleprice = document.getElementById('<%=txtPayble.ClientID%>').value;
            var baseprice = document.getElementById('<%=txtBasePrice.ClientID%>').value;
            var gstPrice = document.getElementById('<%=txtGstPrice.ClientID%>').value;
            var discountprice = document.getElementById('<%=txtDiscount.ClientID%>').value;
            var totalprice = document.getElementById("myTotal_" + btnIndex).value;

            $("#" + id).parents("tr").remove();
            if (baseprice == '')
                document.getElementById('<%=txtBasePrice.ClientID%>').value = 0;
            baseprice = parseFloat(baseprice);
            baseprice -= eval(totalprice);
            document.getElementById('<%=txtBasePrice.ClientID%>').value = baseprice.toFixed(2);
            if (gstPrice == '')
                document.getElementById('<%=txtGstPrice.ClientID%>').value = 0;
            var mulPurchaseQuantity = parseFloat(purchasePrice) * parseFloat(itemQuantity);
            var calGst = (parseFloat(mulPurchaseQuantity) * (itemGst)) / 100;
            gstPrice = parseFloat(gstPrice);
            gstPrice -= eval(calGst);
            document.getElementById('<%=txtGstPrice.ClientID%>').value = gstPrice.toFixed(2);
            if (paybleprice == '')
                document.getElementById('<%=txtPayble.ClientID%>').value = 0;
            var addBaseGstQtyPrice = (parseFloat(baseprice) + parseFloat(gstPrice)) - parseFloat(discountprice);
            document.getElementById('<%=txtPayble.ClientID%>').value = addBaseGstQtyPrice.toFixed(2);

            if (baseprice == "0.00" && gstPrice == "0.00") {
                document.getElementById('<%=txtDiscount.ClientID%>').value = 0.00;
                document.getElementById('<%=txtPayble.ClientID%>').value = 0.00;
            }

        }


        function callGst() {
            var ddl = document.getElementById("<%=ddlItem.ClientID%>");
            var mydata = ddl.options[ddl.selectedIndex].value;
            debugger;
            $.ajax({

                url: 'AddPurchase.aspx/AssignItemGst',

                type: "POST",

                dataType: "json",

                data: "{'name': '" + mydata + "'}",

                contentType: "application/json; charset=utf-8",

                success: function (data) {
                    //var data1 = JSON.parse(JSON.stringify(data));
                    $.map(data.d, function (item) {

                        document.getElementById('<%=txtGst.ClientID%>').value = parseInt(item.GSTPercent);
                        document.getElementById('<%=txtPurchasePrice.ClientID%>').value = parseInt(item.Price);
                    });

                }

            });
        }

        function valid() {
            let ddlVendor = document.getElementById("<%=ddlVendor.ClientID%>");
            let ddlVendorValue = ddlVendor.options[ddl.selectedIndex].value;

            //For Item Name
            if (ddlVendorValue == '0') {
                alert("Vendor name cannot be left blank");
                $('#<%=ddlVendor.ClientID%>').focus();
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
