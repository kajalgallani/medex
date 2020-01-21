<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="medexproject.Defualt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Add Medicines</title>
    <meta charset="utf-8">

    <!-- Favicon -->
    <link href="../assets/img/brand/favicon.png" rel="icon" type="image/png"/>
    <!-- Fonts -->
    <%--<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">--%>
    <!-- Icons -->
    <link href="../assets/vendor/nucleo/css/nucleo.css" rel="stylesheet"/>
    <link href="../assets/vendor/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet"/>
    <!-- Argon CSS -->
    <link type="text/css" href="../assets/css/argon.css?v=1.0.0" rel="stylesheet"/>
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
                    <a class="navbar-brand pt-0" href="dashboard.aspx">
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
                    <!-- Collapse -->
                    <div class="collapse navbar-collapse" id="sidenav-collapse-main">
                        <!-- Collapse header -->
                        <div class="navbar-collapse-header d-md-none">
                            <div class="row">
                                <div class="col-6 collapse-brand">
                                    <a href="./index.html">
                                        <img src="./assets/img/brand/blue.png" />
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

                        <!-- Navigation -->
                    <ul class="navbar-nav">

                            <li class="nav-item">
                                <a class="nav-link" href="Dashboard.aspx">
                                    <i class="ni ni-planet text-blue"></i>Dashboard
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="Bill.aspx">
                                    <i class="ni ni-collection text-orange"></i>Bill
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link active" href="Add.aspx">
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
                        <!-- Divider -->

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
                        <!-- Form -->

                        <!-- User -->
                        <ul class="navbar-nav align-items-center d-none d-md-flex">
                            <li class="nav-item dropdown">
                                <a class="nav-link pr-0" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <div class="media align-items-center">
                                        <span class="avatar avatar-sm rounded-circle">
                                            <img src="GSK-starts-work-on-153m-anti-inflammatories-and-gastro-drug-plant-in-India.jpg" />
                                        </span>
                                        <div class="media-body ml-2 d-none d-lg-block">
                                            <span class="mb-0 text-sm  font-weight-bold"><%=variable1%> </span>
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
                                    <a href="#!" class="dropdown-item">
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
                                                    <span class="h2 font-weight-bold mb-0"> <%=variable2%></span>
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
                                <br />
                                <div class="col-xl-4 col-lg-6">
                                    <div class="card card-stats mb-4 mb-xl-0">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col">
                                                    <h5 class="card-title text-uppercase text-muted mb-0">Out Of Stock Products</h5>
                                                    <span class="h2 font-weight-bold mb-0"><%=variable3 %></span>
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
                                                    <span class="h2 font-weight-bold mb-0"><%=variable4 %></span>
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
                    <div class="row">
                        <div class="col-xl-8 mb-5 mb-xl-0">
                            <div class="card shadow">
                                <div class="card-header bg-transparent">
                                    <div class="row align-items-center">
                                        <div class="col">

                                            <h2>Add medicine information</h2>
                                        </div>

                                    </div>
                                </div>
                                <div class="card-body">

                                    <div>
                                        <div class="col-lg-12">
                                            <div class="row">



                                                <div class="col-lg-3">
                                                    <div class="form-group">
                                                        <label>Drug Type</label>
                                                        <asp:DropDownList Class="form-control form-control-alternative" ID="Drugtype_DropDownList" runat="server">
                                                            <asp:ListItem>Capsule</asp:ListItem>
                                                            <asp:ListItem>Tablet</asp:ListItem>
                                                            <asp:ListItem>Syrup</asp:ListItem>
                                                            <asp:ListItem>Syringe</asp:ListItem>
                                                            <asp:ListItem>Ointment</asp:ListItem>
                                                            <asp:ListItem>Pill</asp:ListItem>
                                                            <asp:ListItem>Toothpaste</asp:ListItem>
                                                            <asp:ListItem>Spray</asp:ListItem>
                                                            <asp:ListItem>Inhaler</asp:ListItem>
                                                            <asp:ListItem>Balm</asp:ListItem>
                                                            <asp:ListItem>Face Wash</asp:ListItem>
                                                            <asp:ListItem>Soap</asp:ListItem>
                                                            <asp:ListItem>Hand Wash</asp:ListItem>
                                                            <asp:ListItem>Lotion</asp:ListItem>
                                                            <asp:ListItem>Cream</asp:ListItem>
                                                            <asp:ListItem>Wipes</asp:ListItem>
                                                            
                                                        </asp:DropDownList>
                                                    </div>

                                                </div>

                                                <div class="col-lg-9">
                                                    <div class="form-group">
                                                        <label>Medicine Name</label>
                                                        <asp:TextBox ID="MNameTextBox" autocomplete="off" placeholder="eg-crocin" class="form-control form-control-alternative" runat="server"></asp:TextBox>
                                                    </div>

                                                </div>


                                            </div>



                                            <div class="row">



                                                <div class="col-lg-3">
                                                    <label>Strength</label>
                                                    <asp:TextBox ID="strength_TextBox" class="form-control form-control-alternative" value="" placeholder="strength" runat="server"></asp:TextBox>
                                                </div>

                                                <div class="col-lg-3">
                                                    <div class="form-group">
                                                        <label>Quantity</label>
                                                        <asp:TextBox ID="Quantity" class="form-control form-control-alternative" placeholder="Qauntity-10" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-lg-3">
                                                    <div class="form-group">
                                                        <label>MRP</label>
                                                        <asp:TextBox ID="MRP" class="form-control form-control-alternative" placeholder="eg-200.00" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="col-lg-3">
                                                    <div class="form-group">
                                                        <label>Batch No.</label>
                                                        <asp:TextBox ID="Batchno" class="form-control form-control-alternative" placeholder="eg-1020" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="row">

                                                <div class="col-lg-6">
                                                    <div class="form-group">

                                                        <label>MFG Date</label>
                                                        <asp:TextBox ID="mdate" autocomplete="off" class="form-control form-control-alternative" runat="server"></asp:TextBox>

                                                    </div>
                                                </div>
                                                <div class="col-lg-6">
                                                    <div class="form-group">
                                                        <label>EXP Date</label>
                                                        <asp:TextBox ID="edate" autocomplete="off" class="form-control form-control-alternative" runat="server"></asp:TextBox>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="row">
                                                <div class="col-lg-8">
                                                </div>
                                                <div class="col-lg-4">
                                                    <asp:Button ID="AddButton" class="btn btn-success" runat="server" Text="Add" OnClick="AddButton_Click" />
                                                    <asp:Button ID="DiscardButton" class="btn btn-danger" runat="server" Text="Discard" OnClick="DiscardButton_Click" />

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <%--grid view below--%>
                        <div class="col-xl-4">
                            <div class="card shadow">
                                <div class="card-header bg-transparent">
                                    <div class="row align-items-center">
                                        <div class="col-12">
                                            <h2>All medicines</h2>
                                        </div>
                                    </div>
                                </div>

                                <div class="table-responsive">
                                    <div class="table align-items-center table-flush">
                                        <!-- Chart -->
                                        <asp:GridView ID="Add_GridView" runat="server" class="" CellPadding="4" GridLines="None" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" ForeColor="#000066" Width="100%" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" AllowSorting="True" AllowPaging="True">
                                            <Columns>
                                                <asp:BoundField DataField="FULLNAME" HeaderText="FULLNAME" SortExpression="FULLNAME" />
                                                <asp:BoundField DataField="EXP" HeaderText="EXP" SortExpression="EXP" DataFormatString="{0:yyyy-MM-dd}" />
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:medexConnectionString %>" SelectCommand="SELECT [FULLNAME], [EXP] FROM [medinfo]"></asp:SqlDataSource>
                                    </div>
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

            <script src="jquery-1.12.4.js"></script>
            <link href="jquery-ui.css" rel="stylesheet" />


            <script src="jquery-ui.js"></script>
            <script>
                $(function () {
                    $("#mdate").datepicker({
                        changeMonth: true,
                        changeYear: true
                    });

                    $("#edate").datepicker({
                        changeMonth: true,
                        changeYear: true
                    });
                });
            </script>
        </div>
    </form>
</body>
</html>
