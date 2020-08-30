<%@ Page Title="" Language="C#" MasterPageFile="~/DefaultMaster.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Inventory.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Inventory Dashboard</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="layout-wrapper layout-2">
        <div class="layout-inner">
            <div class="layout-container">
                <div class="layout-content">
                    <!-- [ content ] Start -->
                    <div class="container-fluid flex-grow-1 container-p-y">
                        <h4 class="font-weight-bold py-3 mb-0">Dashboard</h4>
                        <div class="text-muted small mt-0 mb-4 d-block breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#"><i class="feather icon-home"></i></a></li>
                                <li class="breadcrumb-item"><a href="#!">Inventory</a></li>
                                <li class="breadcrumb-item active"><a href="#!">Dashboard</a></li>
                            </ol>
                        </div>
                        <div class="row">
                            <!-- customar project  start -->
                            <div class="col-xl-3 col-md-6">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row align-items-center m-l-0">
                                            <div class="col-auto">
                                                <i class="fas fa-user-graduate f-36 text-primary"></i>
                                            </div>
                                            <div class="col-auto">
                                                <h6 class="text-muted m-b-10">Student</h6>
                                                <h2 class="m-b-0">45</h2>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row align-items-center m-l-0">
                                            <div class="col-auto">
                                                <i class="fas fa-users f-36 text-danger"></i>
                                            </div>
                                            <div class="col-auto">
                                                <h6 class="text-muted m-b-10">Parents</h6>
                                                <h2 class="m-b-0">9</h2>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row align-items-center m-l-0">
                                            <div class="col-auto">
                                                <i class="fas fa-user-tie f-36 text-success"></i>
                                            </div>
                                            <div class="col-auto">
                                                <h6 class="text-muted m-b-10">Teacher</h6>
                                                <h2 class="m-b-0">5</h2>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row align-items-center m-l-0">
                                            <div class="col-auto">
                                                <i class="fas fa-book-open f-36 text-warning"></i>
                                            </div>
                                            <div class="col-auto">
                                                <h6 class="text-muted m-b-10">Subject</h6>
                                                <h2 class="m-b-0">25</h2>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- customar project  end -->
                            <!-- subscribe start -->

                            <!-- subscribe end -->
                            <!-- Tasks start -->

                            <!-- Tasks end -->
                            <!-- subscribe start -->

                            <!-- subscribe end -->
                        </div>
                    </div>
                    <!-- [ content ] End -->
                </div>
            </div>
        </div>
    </div>
</asp:Content>
