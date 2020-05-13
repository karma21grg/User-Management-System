<%-- 
    Document   : admin_profile
    Created on : May 7, 2020, 6:09:00 PM
    Author     : tenzinsparkss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <link href="http://netdna.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet">
        <title>Admin Profile</title>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" href="css/admin_profile.css">
    </head>
    <body>
        <div class="container">
        <div class="row flex-lg-nowrap">
          <div class="col-12 col-lg-auto mb-3" style="width: 200px;">
<!--            <div class="card p-3">
              <div class="e-navlist e-navlist--active-bg">
                <ul class="nav">
                  <li class="nav-item"><a class="nav-link px-2 active" href="./overview.html"><i class="fa fa-fw fa-bar-chart mr-1"></i><span>Overview</span></a></li>
                  <li class="nav-item"><a class="nav-link px-2" href="./users.html"><i class="fa fa-fw fa-th mr-1"></i><span>CRUD</span></a></li>
                  <li class="nav-item"><a class="nav-link px-2" href="./settings.html"><i class="fa fa-fw fa-cog mr-1"></i><span>Settings</span></a></li>
                </ul>
              </div>
            </div>-->
          </div>

          <div class="col">
            <div class="row">
              <div class="col mb-3">
                <div class="card">
                  <div class="card-body">
                    <div class="e-profile">
                      <div class="row">
                        <div class="col-12 col-sm-auto mb-3">
                          <div class="mx-auto" style="width: 140px;">
                            <div class="d-flex justify-content-center align-items-center rounded" style="height: 140px; background-color: rgb(233, 236, 239);">
                                <img src="https://www.w3schools.com/images/picture.jpg" style="width: 140px; height:140px;">
                                <!--<span style="color: rgb(166, 168, 170); font: bold 8pt Arial;" img src=">140x140</span>-->
                            </div>
                          </div>
                        </div>
                        <div class="col d-flex flex-column flex-sm-row justify-content-between mb-3">
                          <div class="text-center text-sm-left mb-2 mb-sm-0">
                            <h4 class="pt-sm-2 pb-1 mb-0 text-nowrap">Shovan Shah</h4>
                            <p class="mb-0">@Shovan.s</p>
                            <div class="text-muted"><small>Last seen 2 hours ago</small></div>
                            <div class="mt-2">
                              <button class="btn btn-primary" type="button">
                                <i class="fa fa-fw fa-camera"></i>
                                <span>Change Photo</span>
                              </button>
                            </div>
                          </div>
                          <div class="text-center text-sm-right">
                            <span class="badge badge-secondary">Logged in as Admin</span>
                            <div class="text-muted"><small>Joined 09 Dec 2017</small></div>
                          </div>
                        </div>
                      </div>
                      <div class="tab-content pt-3">
                        <div class="tab-pane active">
                          <form class="form" novalidate="">
                            <div class="row">
                              <div class="col">
                                <div class="row">
                                  <div class="col">
                                    <div class="form-group">
                                      <label>First Name</label>
                                      <input class="form-control" type="text" name="name" placeholder="John Smith" value="John Smith">
                                    </div>
                                  </div>
                                  <div class="col">
                                    <div class="form-group">
                                      <label>Last Name</label>
                                      <input class="form-control" type="text" name="username" placeholder="johnny.s" value="johnny.s">
                                    </div>
                                  </div>
                                </div>
                                <div class="row">
                                  <div class="col">
                                    <div class="form-group">
                                      <label>Email</label>
                                      <input class="form-control" type="text" placeholder="user@example.com">
                                    </div>
                                  </div>
                                </div>
                                <div class="row">
                                  <div class="col">
                                    <div class="form-group">
                                      <label>Age</label>
                                      <input class="form-control" type="text" name="name" placeholder="Age" value="John Smith">
                                    </div>
                                  </div>
                                  <div class="col">
                                    <div class="form-group">
                                      <label>Gender</label>
                                      <input class="form-control" type="text" name="username" placeholder="Gender" value="johnny.s">
                                    </div>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <div class="row">
                              <div class="col-12 col-sm-6 mb-3">
                                  <div class="mb-2"><b>Change Password</b></div>                                
                                <div class="row">
                                  <div class="col">
                                    <div class="form-group">
                                      <label>Confirm <span class="d-none d-xl-inline">Password</span></label>
                                      <input class="form-control" type="password" placeholder="••••••"></div>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <div class="row">
                              <div class="col d-flex justify-content-end">
                                <button class="btn btn-primary" type="submit">Save Changes</button>
                              </div>
                            </div>
                          </form>

                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div class="col-12 col-md-3 mb-3">
                <div class="card mb-3">
                  <div class="card-body">
                    <div class="px-xl-3">
                      <button class="btn btn-block btn-secondary">
                        <i class="fa fa-sign-out"></i>
                        <span>Logout</span>
                      </button>
                    </div>
                  </div>
                </div>
                <div class="card">
                  <div class="card-body">
                    <h6 class="card-title font-weight-bold">Support</h6>
                    <p class="card-text">Get fast, free help from our friendly assistants.</p>
                    <button type="button" class="btn btn-primary">Contact Us</button>
                  </div>
                </div>
              </div>
            </div>

          </div>
        </div>
        </div>
    </body>
</html>
