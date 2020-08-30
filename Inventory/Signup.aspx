<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Inventory.Signup" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />
    <meta name="description" content="Empire is one of the unique admin template built on top of Bootstrap 4 framework. It is easy to customize, flexible code styles, well tested, modern & responsive are the topmost key factors of Empire Dashboard Template" />
    <meta name="keywords" content="bootstrap admin template, dashboard template, backend panel, bootstrap 4, backend template, dashboard template, saas admin, CRM dashboard, eCommerce dashboard" />
    <meta name="author" content="Codedthemes" />
    <link rel="icon" type="image/x-icon" href="../InventoryTemp/assets/img/favicon.ico" />

    <!-- Google fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet" />

    <!-- Icon fonts -->
    <link rel="stylesheet" href="../InventoryTemp/assets/fonts/fontawesome.css" />
    <link rel="stylesheet" href="../InventoryTemp/assets/fonts/ionicons.css" />
    <link rel="stylesheet" href="../InventoryTemp/assets/fonts/linearicons.css" />
    <link rel="stylesheet" href="../InventoryTemp/assets/fonts/open-iconic.css" />
    <link rel="stylesheet" href="../InventoryTemp/assets/fonts/pe-icon-7-stroke.css" />
    <link rel="stylesheet" href="../InventoryTemp/assets/fonts/feather.css" />

    <!-- Core stylesheets -->
    <link rel="stylesheet" href="../InventoryTemp/assets/css/bootstrap-material.css" />
    <link rel="stylesheet" href="../InventoryTemp/assets/css/shreerang-material.css" />
    <link rel="stylesheet" href="../InventoryTemp/assets/css/uikit.css" />

    <!-- Libs -->
    <link rel="stylesheet" href="../InventoryTemp/assets/libs/perfect-scrollbar/perfect-scrollbar.css" />
    <!-- Page -->
    <link rel="stylesheet" href="../InventoryTemp/assets/css/pages/authentication.css" />
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePageMethods="true">
        </asp:ScriptManager>
        <!-- [ Content ] Start -->
        <div class="authentication-wrapper authentication-2 ui-bg-cover ui-bg-overlay-container px-4" style="background-image: url('../InventoryTemp/assets/img/bg/21.jpg');">
            <div class="ui-bg-overlay bg-dark opacity-25"></div>

            <div class="authentication-inner py-5">

                <div class="card">
                    <div class="p-4 p-sm-5">
                        <!-- [ Logo ] Start -->
                        <div class="d-flex justify-content-center align-items-center pb-2 mb-4">
                            <div class="ui-w-60">
                                <div class="w-100 position-relative">
                                    <%--<img src="../InventoryTemp/assets/img\logo-dark.png" alt="Brand Logo" class="img-fluid"/>--%>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                        <!-- [ Logo ] End -->

                        <h5 class="text-center text-muted font-weight-normal mb-4">Create an Account</h5>

                        <!-- Form -->
                        <div class="form-group">
                            <label class="form-label">Your name</label>
                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control" AutoCompleteType="Disabled"></asp:TextBox>
                            <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" Enabled="True"
                                FilterType="LowercaseLetters,UppercaseLetters,Custom" TargetControlID="txtName"
                                ValidChars=" "></cc1:FilteredTextBoxExtender>
                            <div class="clearfix"></div>
                        </div>
                        <div class="form-group">
                            <label class="form-label">Your email</label>
                            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" AutoCompleteType="Disabled"></asp:TextBox>
                            <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server"
                                FilterType="Numbers, LowercaseLetters, Custom"
                                ValidChars=".@" TargetControlID="txtEmail" />
                            <div class="clearfix"></div>
                        </div>
                        <div class="form-group">
                            <label class="form-label">Password</label>
                            <asp:TextBox ID="txtPass" runat="server" CssClass="form-control" AutoCompleteType="Disabled"></asp:TextBox>
                            <div class="clearfix"></div>
                        </div>
                        <div class="form-group">
                            <label class="form-label">Confirm Password</label>
                            <asp:TextBox ID="txtConfirmPass" runat="server" CssClass="form-control" AutoCompleteType="Disabled"></asp:TextBox>
                            <span id='message'></span>
                            <div class="clearfix"></div>
                        </div>
                        <asp:Button ID="btnSignup" runat="server" Text="Sign Up" CssClass="btn btn-primary btn-block mt-4" OnClientClick="return valid();" OnClick="btnSignup_Click"></asp:Button>
                        <div class="text-light small mt-4">
                        </div>
                        <!-- [ Form ] End -->

                    </div>
                    <div class="card-footer py-3 px-4 px-sm-5">
                        <div class="text-center text-muted">
                            Already have an account?
                        <a href="Login.aspx">Sign In</a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <!-- / Content -->

        <!-- Core scripts -->
        <script src="../InventoryTemp/assets/js/pace.js"></script>
        <script src="../InventoryTemp/assets/js/jquery-3.3.1.min.js"></script>
        <script src="../InventoryTemp/assets/libs/popper/popper.js"></script>
        <script src="../InventoryTemp/assets/js/bootstrap.js"></script>
        <script src="../InventoryTemp/assets/js/sidenav.js"></script>
        <script src="../InventoryTemp/assets/js/layout-helpers.js"></script>
        <script src="../InventoryTemp/assets/js/material-ripple.js"></script>

        <!-- Libs -->
        <script src="../InventoryTemp/assets/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

        <!-- Demo -->
        <script src="../InventoryTemp/assets/js/demo.js"></script>
        <script src="../InventoryTemp/assets/js/analytics.js"></script>
    </form>
</body>
<script type="text/javascript">
    $(document).ready(function () {

        $('#<%=txtPass.ClientID%>, #<%=txtConfirmPass.ClientID%>').on('keyup', function () {
            debugger;
            if ($('#<%=txtPass.ClientID%>').val() == $('#<%=txtConfirmPass.ClientID%>').val()) {
                $('#message').html('Matching').css('color', 'green');
            } else
                $('#message').html('Not Matching').css('color', 'red');
        });
    });
    function valid() {
        let txtName = $('#<%=txtName.ClientID%>').val();
        let txtEmail = $('#<%=txtEmail.ClientID%>').val();
        let txtPass = $('#<%=txtPass.ClientID%>').val();
        let txtConfirmPass = $('#<%=txtConfirmPass.ClientID%>').val();

        //for Name
        if (txtName == '') {
            alert("Name cannot be left blank");
            $('#<%=txtName.ClientID%>').focus();
            return false;
        }

        //email reg
        var hasError = false;
        var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
        var emailaddressVal = $("#<%=txtEmail.ClientID%>").val();
        if (emailaddressVal == '') {
            alert("Email cannot be left blank");
            $("#<%=txtEmail.ClientID%>").focus();
            hasError = true;
        }
        else if (!emailReg.test(emailaddressVal)) {
            alert("Enter a valid email address!!");
            $("#<%=txtEmail.ClientID%>").focus();
            hasError = true;
        }
        if (hasError == true) { return false; }


        //For Pass
        if (txtPass == '') {
            alert("Password cannot be left blank");
            $('#<%=txtPass.ClientID%>').focus();
            return false;
        }

        //For ConfirPass
        if (txtConfirmPass == '') {
            alert("Confirm password cannot be left blank");
            $('#<%=txtConfirmPass.ClientID%>').focus();
            return false;
        }

        //button submit
        if (!confirm('Do you want to Sign Up?')) {
            return false;
        }

        else {
            return true;
        }
    }
</script>
</html>
