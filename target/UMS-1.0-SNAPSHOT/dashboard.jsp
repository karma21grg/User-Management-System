<!doctype html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width,initial-scale=1,shrink-to-fit=no">
  <title>Dashboard</title>
  <style>
    #loader {
      transition: all .3s ease-in-out;
      opacity: 1;
      visibility: visible;
      position: fixed;
      height: 100vh;
      width: 100%;
      background: #fff;
      z-index: 90000
    }

    #loader.fadeOut {
      opacity: 0;
      visibility: hidden
    }

    .spinner {
      width: 40px;
      height: 40px;
      position: absolute;
      top: calc(50% - 20px);
      left: calc(50% - 20px);
      background-color: #333;
      border-radius: 100%;
      -webkit-animation: sk-scaleout 1s infinite ease-in-out;
      animation: sk-scaleout 1s infinite ease-in-out
    }

    @-webkit-keyframes sk-scaleout {
      0% {
        -webkit-transform: scale(0)
      }

      100% {
        -webkit-transform: scale(1);
        opacity: 0
      }
    }

    @keyframes sk-scaleout {
      0% {
        -webkit-transform: scale(0);
        transform: scale(0)
      }

      100% {
        -webkit-transform: scale(1);
        transform: scale(1);
        opacity: 0
      }
    }
  </style>
  <link href="style.css" rel="stylesheet">
</head>

<body class="app">
  <div id="loader">
    <div class="spinner"></div>
  </div>
  <script>window.addEventListener('load', () => {
      const loader = document.getElementById('loader');
      setTimeout(() => {
        loader.classList.add('fadeOut');
      }, 300);
    });</script>
  <div>
      <!--Logout Cache handling-->
      <%
          response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
          if(session.getAttribute("email")== null)
            response.sendRedirect("login.jsp");
          
      %>
    <div class="sidebar">
      <div class="sidebar-inner">
        <div class="sidebar-logo">
          <div class="peers ai-c fxw-nw">
            <div class="peer peer-greed"><a class="sidebar-link td-n" href="index.html">
                <div class="peers ai-c fxw-nw">
                  <div class="peer">
                    <div class="logo"><img src="assets/static/images/logo.png" alt=""></div>
                  </div>
                  <div class="peer peer-greed">
                    <h5 class="lh-1 mB-0 logo-text">Data Pirates</h5>
                  </div>
                </div>
              </a></div>
            <div class="peer">
              <div class="mobile-toggle sidebar-toggle"><a href="" class="td-n"><i class="ti-arrow-circle-left"></i></a>
              </div>
            </div>
          </div>
        </div>
        <ul class="sidebar-menu scrollable pos-r">
          <li class="nav-item mT-30 active"><a class="sidebar-link" href="index.html"><span class="icon-holder"><i
                  class="c-blue-500 ti-home"></i> </span><span class="title">Dashboard</span></a></li>
          <li class="nav-item"><a class="sidebar-link" href="calendar.html"><span class="icon-holder"><i
                  class="c-deep-orange-500 ti-calendar"></i> </span><span class="title">Calendar</span></a></li>
          <li class="nav-item"><a class="sidebar-link" href="chat.html"><span class="icon-holder"><i
                  class="c-deep-purple-500 ti-comment-alt"></i> </span><span class="title">Chat</span></a></li>
          <li class="nav-item"><a class="sidebar-link" href="charts.html"><span class="icon-holder"><i
                  class="c-indigo-500 ti-bar-chart"></i> </span><span class="title">Charts</span></a></li>
          <li class="nav-item dropdown"><a class="dropdown-toggle" href="javascript:void(0);"><span
                class="icon-holder"><i class="c-orange-500 ti-layout-list-thumb"></i> </span><span
                class="title">Tables</span> <span class="arrow"><i class="ti-angle-right"></i></span></a>
            <ul class="dropdown-menu">
              <li><a class="sidebar-link" href="basic-table.html">Basic Table</a></li>
              <li><a class="sidebar-link" href="datatable.html">Data Table</a></li>
            </ul>
          </li>
          
        </ul>
      </div>
    </div>
    <div class="page-container">
      <div class="header navbar">
        <div class="header-container">
          <ul class="nav-left">
            <li><a id="sidebar-toggle" class="sidebar-toggle" href="javascript:void(0);"><i class="ti-menu"></i></a>
            </li>
            <li class="search-box"><a class="search-toggle no-pdd-right" href="javascript:void(0);"><i
                  class="search-icon ti-search pdd-right-10"></i> <i
                  class="search-icon-close ti-close pdd-right-10"></i></a></li>
            <li class="search-input"><input class="form-control" type="text" placeholder="Search..."></li>
          </ul>
          <ul class="nav-right">
            
            <li class="dropdown"><a href="" class="dropdown-toggle no-after peers fxw-nw ai-c lh-1"
                data-toggle="dropdown">
                <div class="peer mR-10"><img class="w-2r bdrs-50p" src="https://randomuser.me/api/portraits/men/10.jpg"
                    alt=""></div>
                <div class="peer"><span class="fsz-sm c-grey-900">Admin</span></div>
              </a>
              <ul class="dropdown-menu fsz-sm">
                <li><a href="" class="d-b td-n pY-5 bgcH-grey-100 c-grey-700"><i class="ti-settings mR-10"></i>
                    <span>Setting</span></a></li>
                <li><a href="" class="d-b td-n pY-5 bgcH-grey-100 c-grey-700"><i class="ti-user mR-10"></i>
                    <span>Profile</span></a></li>
                <li><a href="email.html" class="d-b td-n pY-5 bgcH-grey-100 c-grey-700"><i class="ti-email mR-10"></i>
                    <span>Messages</span></a></li>
                <li role="separator" class="divider"></li>
                <li><a href="logout" role="button" class="d-b td-n pY-5 bgcH-grey-100 c-grey-700"><i class="ti-power-off mR-10"></i>
                    <span>Logout</span></a></li>
              </ul>
            </li>
          </ul>
        </div>
      </div>
      <main class="main-content bgc-grey-100">
        <div id="mainContent">
          <div class="row gap-20 masonry pos-r">
            <div class="masonry-sizer col-md-6"></div>
            <div class="masonry-item w-100">
              <div class="row gap-20">
                <div class="col-md-3">
                  <div class="layers bd bgc-white p-20">
                    <div class="layer w-100 mB-10">
                      <h6 class="lh-1">Total Visits</h6>
                    </div>
                    <div class="layer w-100">
                      <div class="peers ai-sb fxw-nw">
                        <div class="peer peer-greed"><span id="sparklinedash"></span></div>
                        <div class="peer"><span
                            class="d-ib lh-0 va-m fw-600 bdrs-10em pX-15 pY-15 bgc-green-50 c-green-500">+10%</span>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="layers bd bgc-white p-20">
                    <div class="layer w-100 mB-10">
                      <h6 class="lh-1">Total Page Views</h6>
                    </div>
                    <div class="layer w-100">
                      <div class="peers ai-sb fxw-nw">
                        <div class="peer peer-greed"><span id="sparklinedash2"></span></div>
                        <div class="peer"><span
                            class="d-ib lh-0 va-m fw-600 bdrs-10em pX-15 pY-15 bgc-red-50 c-red-500">-7%</span></div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="layers bd bgc-white p-20">
                    <div class="layer w-100 mB-10">
                      <h6 class="lh-1">Unique Visitor</h6>
                    </div>
                    <div class="layer w-100">
                      <div class="peers ai-sb fxw-nw">
                        <div class="peer peer-greed"><span id="sparklinedash3"></span></div>
                        <div class="peer"><span
                            class="d-ib lh-0 va-m fw-600 bdrs-10em pX-15 pY-15 bgc-purple-50 c-purple-500">~12%</span>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-3">
                  <div class="layers bd bgc-white p-20">
                    <div class="layer w-100 mB-10">
                      <h6 class="lh-1">Bounce Rate</h6>
                    </div>
                    <div class="layer w-100">
                      <div class="peers ai-sb fxw-nw">
                        <div class="peer peer-greed"><span id="sparklinedash4"></span></div>
                        <div class="peer"><span
                            class="d-ib lh-0 va-m fw-600 bdrs-10em pX-15 pY-15 bgc-blue-50 c-blue-500">33%</span></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="masonry-item col-md-6">
              <div class="bd bgc-white p-20">
                <div class="layers">
                  <div class="layer w-100 mB-20">
                    <h6 class="lh-1">Weather</h6>
                  </div>
                  <div class="layer w-100">
                    <div class="peers ai-c jc-sb fxw-nw">
                      <div class="peer peer-greed">
                        <div class="layers">
                          <div class="layer w-100">
                            <div class="peers fxw-nw ai-c">
                              <div class="peer mR-20">
                                <h3>32<sup>�F</sup></h3>
                              </div>
                              <div class="peer"><canvas class="sleet" width="44" height="44"></canvas></div>
                            </div>
                          </div>
                          <div class="layer w-100"><span class="fw-600 c-grey-600">Partly Clouds</span></div>
                        </div>
                      </div>
                      <div class="peer">
                        <div class="layers ai-fe">
                          <div class="layer">
                            <h5 class="mB-5">Monday</h5>
                          </div>
                          <div class="layer"><span class="fw-600 c-grey-600">Nov, 01 2017</span></div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="layer w-100 mY-30">
                    <div class="layers bdB">
                      <div class="layer w-100 bdT pY-5">
                        <div class="peers ai-c jc-sb fxw-nw">
                          <div class="peer"><span>Wind</span></div>
                          <div class="peer ta-r"><span class="fw-600 c-grey-800">10km/h</span></div>
                        </div>
                      </div>
                      <div class="layer w-100 bdT pY-5">
                        <div class="peers ai-c jc-sb fxw-nw">
                          <div class="peer"><span>Sunrise</span></div>
                          <div class="peer ta-r"><span class="fw-600 c-grey-800">05:00 AM</span></div>
                        </div>
                      </div>
                      <div class="layer w-100 bdT pY-5">
                        <div class="peers ai-c jc-sb fxw-nw">
                          <div class="peer"><span>Pressure</span></div>
                          <div class="peer ta-r"><span class="fw-600 c-grey-800">1B</span></div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="layer w-100">
                    <div class="peers peers-greed ai-fs ta-c">
                      <div class="peer">
                        <h6 class="mB-10">MON</h6><canvas class="sleet" width="30" height="30"></canvas><span
                          class="d-b fw-600">32<sup>�F</sup></span>
                      </div>
                      <div class="peer">
                        <h6 class="mB-10">TUE</h6><canvas class="clear-day" width="30" height="30"></canvas><span
                          class="d-b fw-600">30<sup>�F</sup></span>
                      </div>
                      <div class="peer">
                        <h6 class="mB-10">WED</h6><canvas class="partly-cloudy-day" width="30"
                          height="30"></canvas><span class="d-b fw-600">28<sup>�F</sup></span>
                      </div>
                      <div class="peer">
                        <h6 class="mB-10">THR</h6><canvas class="cloudy" width="30" height="30"></canvas><span
                          class="d-b fw-600">32<sup>�F</sup></span>
                      </div>
                      <div class="peer">
                        <h6 class="mB-10">FRI</h6><canvas class="snow" width="30" height="30"></canvas><span
                          class="d-b fw-600">24<sup>�F</sup></span>
                      </div>
                      <div class="peer">
                        <h6 class="mB-10">SAT</h6><canvas class="wind" width="30" height="30"></canvas><span
                          class="d-b fw-600">28<sup>�F</sup></span>
                      </div>
                      <div class="peer">
                        <h6 class="mB-10">SUN</h6><canvas class="sleet" width="30" height="30"></canvas><span
                          class="d-b fw-600">32<sup>�F</sup></span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </main>
      <footer class="bdT ta-c p-30 lh-0 fsz-sm c-grey-600"><span>Copyright � 2020 Designed by <a
            href="" target="_blank" title="ums">Data Pirates</a>. All rights reserved.</span>
      </footer>
    </div>
  </div>
  <script type="text/javascript" src="vendor.js"></script>
  <script type="text/javascript" src="bundle.js"></script>
</body>

</html>