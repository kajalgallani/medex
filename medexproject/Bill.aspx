﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bill.aspx.cs" Inherits="medexproject.Bill" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Bill</title>
    <meta charset="utf-8">
    <!-- Favicon -->
    <link href="../assets/img/brand/favicon.png" rel="icon" type="image/png">
    <!-- Fonts -->
    <%--<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">--%>
    <!-- Icons -->
    <link href="../assets/vendor/nucleo/css/nucleo.css" rel="stylesheet">
    <link href="../assets/vendor/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet">
    <!-- Argon CSS -->
    <link type="text/css" href="../assets/css/argon.css?v=1.0.0" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Sidenav -->
            <nav class="navbar navbar-vertical fixed-left navbar-expand-md navbar-light bg-white" id="sidenav-main">
                <div class="container-fluid">
                    <!-- Toggler -->
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#sidenav-collapse-main" aria-controls="sidenav-main" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <!-- Brand -->
                    <a class="navbar-brand pt-0" href="Dashboard.aspx">
                      <img src="medex.jpeg" alt="..."/>
                    </a>
                    <!-- User -->
                    <ul class="nav align-items-center d-md-none">
                        <li class="nav-item dropdown">
                            <a class="nav-link nav-link-icon" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="ni ni-bell-55"></i>
                            </a>
                            <div class="dropdown-menu dropdown-menu-arrow dropdown-menu-right" aria-labelledby="navbar-default_dropdown_1">
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Another action</a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#">Something else here</a>
                            </div>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <div class="media align-items-center">
                                    <span class="avatar avatar-sm rounded-circle">
                                        <img alt="Image placeholder" src="../assets/img/theme/team-1-800x800.jpg">
                                    </span>
                                </div>
                            </a>
                            <div class="dropdown-menu dropdown-menu-arrow dropdown-menu-right">
                                <div class=" dropdown-header noti-title">
                                    <h6 class="text-overflow m-0">Welcome!</h6>
                                </div>
                                <a href="../examples/profile.html" class="dropdown-item">
                                    <i class="ni ni-single-02"></i>
                                    <span>My profile</span>
                                </a>
                                <a href="../examples/profile.html" class="dropdown-item">
                                    <i class="ni ni-settings-gear-65"></i>
                                    <span>Settings</span>
                                </a>
                                <a href="../examples/profile.html" class="dropdown-item">
                                    <i class="ni ni-calendar-grid-58"></i>
                                    <span>Activity</span>
                                </a>
                                <a href="../examples/profile.html" class="dropdown-item">
                                    <i class="ni ni-support-16"></i>
                                    <span>Support</span>
                                </a>
                                <div class="dropdown-divider"></div>
                                <a href="Default.aspx" class="dropdown-item">
                                    <i class="ni ni-user-run"></i>
                                    <span>Logout</span>
                                </a>
                            </div>
                        </li>
                    </ul>
                    <!-- Collapse -->
                    <div class="collapse navbar-collapse" id="sidenav-collapse-main">
                        <!-- Collapse header -->
                        <div class="navbar-collapse-header d-md-none">
                            <div class="row">
                                <div class="col-6 collapse-brand">
                                    <a href="../index.html">
                                        <img src="../assets/img/brand/blue.png">
                                    </a>
                                </div>
                                <div class="col-6 collapse-close">
                                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#sidenav-collapse-main" aria-controls="sidenav-main" aria-expanded="false" aria-label="Toggle sidenav">
                                        <span></span>
                                        <span></span>
                                    </button>
                                </div>
                            </div>
                        </div>

                        <ul class="navbar-nav">

                            <li class="nav-item">
                                <a class="nav-link" href="Dashboard.aspx">
                                    <i class="ni ni-planet text-blue"></i>Dashboard
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" href="Bill.aspx">
                                    <i class="ni ni-collection text-orange"></i>Bill
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Add.aspx">
                                    <i class="ni ni-badge text-green"></i>Add
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Update.aspx">
                                    <i class="ni ni-ungroup text-red"></i>Change Information
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Renew.aspx">
                                    <i class="ni ni-active-40 text-yellow"></i>Renew
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Profile.aspx">
                                    <i class="ni ni-single-02 text-info"></i>Password settings
                                </a>
                            </li>
                              <li class="nav-item">
                                <a class="nav-link" href="Default.aspx">
                                    <i class="ni ni-user-run"></i>Logout
                                </a>
                            </li>
                        </ul>
                        <hr class="my-3" />
                    </div>
                </div>
            </nav>
            <!-- Main content -->
            <div class="main-content">
                <!-- Top navbar -->
                <nav class="navbar navbar-top navbar-expand-md navbar-dark" id="navbar-main">
                    <div class="container-fluid">
                        <!-- Brand -->
                        <a class="h4 mb-0 text-white text-uppercase d-none d-lg-inline-block" href="../dashboard.aspx">dashboard</a>

                        <!-- User -->
                        <ul class="navbar-nav align-items-center d-none d-md-flex">
                            <li class="nav-item dropdown">
                                <a class="nav-link pr-0" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <div class="media align-items-center">
                                        <span class="avatar avatar-sm rounded-circle">
                                            <img src="GSK-starts-work-on-153m-anti-inflammatories-and-gastro-drug-plant-in-India.jpg" />
                                        </span>
                                        <div class="media-body ml-2 d-none d-lg-block">
                                            <span class="mb-0 text-sm  font-weight-bold"><%=variable1%></span>
                                        </div>
                                    </div>
                                </a>
                                <div class="dropdown-menu dropdown-menu-arrow dropdown-menu-right">
                                    <div class=" dropdown-header noti-title">
                                        <h6 class="text-overflow m-0">Welcome!</h6>
                                    </div>
                                    <a href="Profile.aspx" class="dropdown-item">
                                        <i class="ni ni-single-02"></i>
                                        <span>My profile</span>
                                    </a>

                                    <div class="dropdown-divider"></div>
                                    <a href="Default.aspx" class="dropdown-item">
                                        <i class="ni ni-user-run"></i>
                                        <span>Logout</span>
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
                <!-- Header -->
                <div class="header bg-gradient-primary pb-8 pt-5 pt-md-8">
                    <div class="container-fluid">
                        <div class="header-body">
                            <!-- Card stats -->
                            <div class="row">
                                <div class="col-xl-4 col-lg-6">
                                    <div class="card card-stats mb-4 mb-xl-0">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col">
                                                    <h5 class="card-title text-uppercase text-muted mb-0">Expired Products</h5>
                                                    <span class="h2 font-weight-bold mb-0"><%=variable2%></span>
                                                </div>
                                                <div class="col-auto">
                                                    <div class="icon icon-shape bg-danger text-white rounded-circle shadow">
                                                        <i class="ni ni-time-alarm"></i>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4 col-lg-6">
                                    <div class="card card-stats mb-4 mb-xl-0">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col">
                                                    <h5 class="card-title text-uppercase text-muted mb-0">Out Of Stock Products</h5>
                                                    <span class="h2 font-weight-bold mb-0"><%=variable3%></span>
                                                </div>
                                                <div class="col-auto">
                                                    <div class="icon icon-shape bg-yellow text-white rounded-circle shadow">
                                                        <i class="ni ni-notification-70"></i>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div class="col-xl-4 col-lg-6">
                                    <div class="card card-stats mb-4 mb-xl-0">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col">
                                                    <h5 class="card-title text-uppercase text-muted mb-0">In Stock Products</h5>
                                                    <span class="h2 font-weight-bold mb-0"><%=variable4%></span>
                                                </div>
                                                <div class="col-auto">
                                                    <div class="icon icon-shape bg-success text-white rounded-circle shadow">
                                                        <i class="ni ni-satisfied"></i>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <!-- Page content -->
                <div class="container-fluid mt--7">
                    <!-- Table -->
                    <div class="row">
                        <div class="col">
                            <div class="card shadow">
                                <div class="card-header bg-transparent">
                                    <h2 class="mb-0">Billing medicines </h2>
                                </div>
                                <div>

                                    <%--//put details here--%>
                &nbsp;
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Footer -->
                    <footer class="footer">
                    </footer>
                </div>
            </div>
            <!-- Argon Scripts -->
            <!-- Core -->
            <script src="../assets/vendor/jquery/dist/jquery.min.js"></script>
            <script src="../assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
            <!-- Optional JS -->
            <script src="../assets/vendor/clipboard/dist/clipboard.min.js"></script>
            <!-- Argon JS -->
            <script src="../assets/js/argon.js?v=1.0.0"></script>
        </div>
    </form>
</body>
</html>
