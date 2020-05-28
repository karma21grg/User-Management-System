<%-- 
    Document   : navbar
    Created on : May 18, 2020, 7:57:30 PM
    Author     : tenzinsparkss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%Integer uid = (Integer) session.getAttribute("id");
String email = (String) session.getAttribute("email");
    String password = (String) session.getAttribute("password");
    String age = (String) session.getAttribute("age");
    String gender = (String) session.getAttribute("phone");
    String fname = (String) session.getAttribute("fname");
    String lname = (String) session.getAttribute("lname");
    Integer is_admin = (Integer) session.getAttribute("is_admin");
    
    Integer totalVisits = (Integer)session.getAttribute("totalVisits");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Data Pirates - User Management System</title>
        
        
        <link rel="apple-touch-icon" href="images/data.png">
        <link rel="shortcut icon" href="images/data.png">

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
        <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
        <link href="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/jqvmap@1.5.1/dist/jqvmap.min.css" rel="stylesheet">

        <link href="https://cdn.jsdelivr.net/npm/weathericons@2.1.0/css/weather-icons.css" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.css" rel="stylesheet" />

        <style>
            #weatherWidget .currentDesc {
                color: #ffffff!important;
            }
            
            .traffic-chart {
                min-height: 335px;
            }
            
            #flotPie1 {
                height: 150px;
            }
            
            #flotPie1 td {
                padding: 3px;
            }
            
            #flotPie1 table {
                top: 20px!important;
                right: -10px!important;
            }
            
            .chart-container {
                display: table;
                min-width: 270px;
                text-align: left;
                padding-top: 10px;
                padding-bottom: 10px;
            }
            
            #flotLine5 {
                height: 105px;
            }
            
            #flotBarChart {
                height: 150px;
            }
            
            #cellPaiChart {
                height: 160px;
            }
        </style>
    </head>
    <body>
        <!-- Left Panel -->
        <aside id="left-panel" class="left-panel">
            <nav class="navbar navbar-expand-sm navbar-default">
                <div id="main-menu" class="main-menu collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active" ">
                            <a href="dashboard.jsp"><i class="menu-icon fa fa-laptop "></i>Dashboard </a>
                        </li>
                        <li class=" dropdown ">
                            <a href="about_us.jsp" class="dropdown-toggle " data-toggle="dropdown " aria-haspopup="true " aria-expanded="false "> <i class="menu-icon fa fa-cogs "></i>About</a>

                        </li>
                        <li class=" dropdown ">
                            <a href="contact.jsp" class="dropdown-toggle " data-toggle="dropdown " aria-haspopup="true " aria-expanded="false "> <i class="menu-icon fa fa-table "></i>Contact</a>
                            <ul class="sub-menu children dropdown-menu ">
                                <li><i class="fa fa-table "></i><a href="userlists.jsp ">User Table</a></li>
                                <li><i class="fa fa-table "></i><a href="edituser.jsp ">User edit</a></li>
                            </ul>
                        </li>
                        <li class="menu-item-has-children dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-bar-chart"></i>Charts</a>
                            <ul class="sub-menu children dropdown-menu">
                                <li><i class="menu-icon fa fa-line-chart"></i><a href="charts-chartjs.html">Chart JS</a></li>
                                <li><i class="menu-icon fa fa-area-chart"></i><a href="charts-flot.html">Flot Chart</a></li>
                                <li><i class="menu-icon fa fa-pie-chart"></i><a href="charts-peity.html">Peity Chart</a></li>
                            </ul>
                        </li>
                        <li class="menu-item-has-children dropdown">

                            <ul class="sub-menu children dropdown-menu">
                                <li><i class="menu-icon fa fa-th"></i><a href="forms-basic.html">Basic Form</a></li>
                                <li><i class="menu-icon fa fa-th"></i><a href="forms-advanced.html">Advanced Form</a></li>
                            </ul>
                        </li>

                        <li class="menu-title">User</li><!-- /.menu-title -->

                        <li class="menu-item-has-children dropdown">
                            <a href="#" class="dropdown-toggle"  data-toggle="dropdown"  aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-tasks"></i>Profile</a>
                            <ul class="sub-menu children dropdown-menu ">
                                <li><i class="menu-icon fa fa-fort-awesome "></i><a href="view-profile.jsp?id=<%= uid%>">View Profile</a></li>
                                <li><i class="menu-icon ti-themify-logo "></i><a href="showUser?id=<%= uid%>">Edit Profile</a></li>
                            </ul>
                        </li>


                        <li class="menu-item-has-children dropdown">
                            <a href="userActivity.jsp" class="dropdown-toggle" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-area-chart"></i>Activity</a>

                        </li>
                        
                        <li class="menu-title">Admin</li><!-- /.menu-title -->
                        <%
                            if(is_admin==1){
                        %>
                        <li class="menu-item-has-children dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="menu-icon fa fa-tasks"></i>Manage</a>
                            <ul class="sub-menu children dropdown-menu ">
                                <li><i class="menu-icon fa fa-fort-awesome "></i><a href="add-user.jsp">Add Users</a></li>
                                <li><i class="menu-icon ti-themify-logo "></i><a href="manage-user.jsp">Manage Users</a></li>
                            </ul>
                        </li>
                        <li>
                            <a href="user_history.jsp"> <i class="menu-icon ti-email "></i>User's history </a>
                        </li>
                        <li class="menu-item-has-children dropdown ">
                            <a href="user-list.jsp" class="dropdown-toggle " data-toggle="dropdown " aria-haspopup="true " aria-expanded="false "> <i class="menu-icon fa fa-table "></i>User List</a>
                        </li>
                        <%}else{%>
                        <div class="alert alert-info" role="alert" style="margin-left:30px;" data-toggle="dropdown ">
                             Admin Access Only!
                            </div>
                        <%}
                        %>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </nav>
        </aside>
        <!-- /#left-panel -->
        <!-- Right Panel -->
        <div id="right-panel " class="right-panel ">
            <!-- Header-->
            <header id="header " class="header ">
                <div class="top-left">
                    <div class="navbar-header">
                        <p class="navbar-brand " href="./ " style="line-height:0; width:220px ">Data Pirates</p>
                        <a id="menuToggle" class="menutoggle"><i class="fa fa-bars"></i></a>
                    </div>
                </div>
                <div class="top-right">
                    <div class="header-menu">
                        <div class="header-left">
                            <button class="search-trigger"><i class="fa fa-search"></i></button>
                            <div class="form-inline">
                                <form class="search-form">
                                    <input class="form-control mr-sm-2" type="text" placeholder="Search ..." aria-label="Search">
                                    <button class="search-close" type="submit"><i class="fa fa-close"></i></button>
                                </form>
                            </div>

                        </div>

                        <div class="user-area dropdown float-right">
                            <a href="#" class="dropdown-toggle active" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <img class="user-avatar rounded-circle" src="images/admin.jpg" alt="User Avatar">
                            </a>

                            <div class="user-menu dropdown-menu">
                                <a class="nav-link" href="view-profile.jsp?id=<%= uid%>"><i class="fa fa- user"></i>My Profile</a>

                                <a class="nav-link" href="#"><i class="fa fa -cog"></i>Settings</a>

                                <a class="nav-link" href="logout"><i class="fa fa-power -off"></i>Logout</a>
                            </div>
                        </div>

                    </div>
                </div>
            </header>
            <!-- /#header -->







            <!-- Scripts -->
            <script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js "></script>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js "></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js "></script>
            <script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js "></script>
            <script src="assets/js/main.js "></script>

            <!--  Chart js -->
            <script src="https://cdn.jsdelivr.net/npm/chart.js@2.7.3/dist/Chart.bundle.min.js "></script>

            <!--Chartist Chart-->
            <script src="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.js "></script>
            <script src="https://cdn.jsdelivr.net/npm/chartist-plugin-legend@0.6.2/chartist-plugin-legend.min.js "></script>

            <script src="https://cdn.jsdelivr.net/npm/jquery.flot@0.8.3/jquery.flot.min.js "></script>
            <script src="https://cdn.jsdelivr.net/npm/flot-pie@1.0.0/src/jquery.flot.pie.min.js "></script>
            <script src="https://cdn.jsdelivr.net/npm/flot-spline@0.0.1/js/jquery.flot.spline.min.js "></script>

            <script src="https://cdn.jsdelivr.net/npm/simpleweather@3.1.0/jquery.simpleWeather.min.js "></script>
            <script src="assets/js/init/weather-init.js "></script>

            <script src="https://cdn.jsdelivr.net/npm/moment@2.22.2/moment.min.js "></script>
            <script src="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.js "></script>
            <script src="assets/js/init/fullcalendar-init.js "></script>


    </body>

</html>
