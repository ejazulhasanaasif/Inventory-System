<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="Inventory.Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Meta data -->
    <meta charset="UTF-8" />
    <meta name='viewport' content='width=device-width, initial-scale=1.0, user-scalable=0' />
    <meta content="Clont - Bootstrap Webapp Responsive Dashboard Simple Admin Panel Premium HTML5 Template" name="description" />
    <meta content="Spruko Technologies Private Limited" name="author" />
    <meta name="keywords" content="Admin, Admin Template, Dashboard, Responsive, Admin Dashboard, Bootstrap, Bootstrap 4, Clean, Backend, Jquery, Modern, Web App, Admin Panel, Ui, Premium Admin Templates, Flat, Admin Theme, Ui Kit, Bootstrap Admin, Responsive Admin, Application, Template, Admin Themes, Dashboard Template" />
    <!-- Title -->
    <title>Clont - Bootstrap Webapp Responsive Dashboard Simple Admin Panel Premium HTML5 Template</title>
    <!--Favicon -->
    <link rel="icon" href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/images/brand/favicon.ico" type="image/x-icon" />
    <!-- Style css -->
    <link href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/css/style.css" rel="stylesheet" />
    <link href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/css/dark.css" rel="stylesheet" />
    <!--Sidemenu css -->
    <link href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/plugins/sidemenu/sidemenu.css" rel="stylesheet" />
    <!-- P-scroll bar css-->
    <link href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/plugins/p-scrollbar/p-scrollbar.css" rel="stylesheet" />
    <!---Icons css-->
    <link href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/plugins/web-fonts/icons.css" rel="stylesheet" />
    <link href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/plugins/web-fonts/font-awesome/font-awesome.min.css" rel="stylesheet" />
    <link href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/plugins/web-fonts/plugin.css" rel="stylesheet" />
    <!-- Switcher css-->
    <link id="theme" href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/skins/hor-skin/skin.css" rel="stylesheet" />
    <link href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/switcher/css/switcher.css" rel="stylesheet" />
    <link href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/switcher/demo.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <!-- Switcher -->
        <div class="switcher-wrapper">
            <div class="demo_changer">
                <div class="demo-icon bg_dark">
                    <i class="fa fa-cog fa-spin text_primary"></i>
                </div>
                <div class="form_holder sidebar-right">
                    <div class="row">
                        <div class="predefined_styles">
                            <div class="skin-theme-switcher">
                                <div class="swichermainleft">
                                    <h4>VERSIONS</h4>
                                    <div class="skin-body">
                                        <a class="wscolorcode blackborder nav-hor navstyle1" href="index.html">LTR VERSION</a>
                                        <a class="wscolorcode blackborder nav-hor navstyle1" href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-rtl/index">RTL VERSION</a>
                                    </div>
                                </div>
                                <div class="swichermainleft">
                                    <h4>Left-menu Skin Modes</h4>
                                    <div class="skin-body">
                                        <a class="wscolorcode blackborder sideskin-1 navstyle1 active" data-theme="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/skins/hor-skin/side-skin1.css" href="#"><span class="wsnamecode">Default</span></a>
                                        <a class="wscolorcode blackborder sideskin-2 navstyle1" data-theme="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/skins/hor-skin/side-skin2.css" href="#"><span class="wsnamecode">Color</span></a>
                                        <a class="wscolorcode blackborder sideskin-1 navstyle1" data-theme="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/skins/hor-skin/side-skin3.css" href="#"><span class="wsnamecode">Dark</span></a>
                                    </div>
                                </div>
                                <div class="swichermainleft">
                                    <h4>Body Skins Mode</h4>
                                    <div class="skin-body">
                                        <a class="wscolorcode blackborder main1 navstyle1 active" data-theme="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/skins/hor-skin/main1.css" href="#"><span class="wsnamecode">Default</span></a>
                                        <a class="wscolorcode blackborder main2 navstyle1" data-theme="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/skins/hor-skin/main2.css" href="#"><span class="wsnamecode">Style1</span></a>
                                        <a class="wscolorcode blackborder main3 navstyle1" data-theme="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/skins/hor-skin/main3.css" href="#"><span class="wsnamecode">Style2</span></a>
                                    </div>
                                </div>
                                <div class="swichermainleft">
                                    <h4>Skin Modes</h4>
                                    <div class="switch_section">
                                        <div class="switch-toggle d-flex">
                                            <span class="mr-auto">Light Mode</span>
                                            <div class="onoffswitch2">
                                                <input checked="" class="onoffswitch2-checkbox" id="myonoffswitch1" name="onoffswitch2" type="radio">
                                                <label class="onoffswitch2-label" for="myonoffswitch1"></label>
                                            </div>
                                        </div>
                                        <div class="switch-toggle d-flex">
                                            <span class="mr-auto">Dark Mode</span>
                                            <div class="onoffswitch2">
                                                <input class="onoffswitch2-checkbox" id="myonoffswitch2" name="onoffswitch2" type="radio">
                                                <label class="onoffswitch2-label" for="myonoffswitch2"></label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="swichermainleft">
                                    <h4>Font-Family</h4>
                                    <div class="skin-body">
                                        <a class="wscolorcode blackborder font-1 navstyle1 active" data-theme="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/skins/hor-skin/font1.css" href="#"><span class="wsnamecode">Roboto</span></a>
                                        <a class="wscolorcode blackborder font-2 navstyle1" data-theme="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/skins/hor-skin/font2.css" href="#"><span class="wsnamecode">Nunito</span></a>
                                        <a class="wscolorcode blackborder font-3 navstyle1" data-theme="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/skins/hor-skin/font3.css" href="#"><span class="wsnamecode">Open Sans</span></a>
                                        <a class="wscolorcode blackborder font-4 navstyle1" data-theme="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/skins/hor-skin/font4.css" href="#"><span class="wsnamecode">Lato</span></a>
                                    </div>
                                </div>
                                <div class="swichermainleft">
                                    <h4>Navigation Style</h4>
                                    <div class="skin-body">
                                        <a class="wscolorcode blackborder nav-hor navstyle1" href="https://laravel.spruko.com/clont/Horizontal-Light-ltr/inde">Horizontal</a>
                                        <a class="wscolorcode blackborder nav-side navstyle1" href="index.html">Left-menu</a>
                                    </div>
                                </div>
                                <div class="swichermainleft border-top text-center">
                                    <div class="p-3">
                                        <a class="btn btn-primary btn-block mt-0" href="../index.html">View Demo</a>
                                        <a class="btn btn-secondary btn-block" href="https://themeforest.net/user/sprukosoft/portfolio">Buy Now</a>
                                        <a class="btn btn-info btn-block" href="https://themeforest.net/user/sprukosoft/portfolio">Our Portfolio</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Switcher -->

        <!---Global-loader-->
        <div id="global-loader">
            <img src="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/images/svgs/loader.svg" alt="loader">
        </div>
        <div class="page">
            <div class="page-main">
                <div class="app-header header top-header">
                    <div class="container-fluid">
                        <div class="d-flex">
                            <a class="header-brand" href="index.html">
                                <img src="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/images/brand/logo.png" class="header-brand-img desktop-lgo" alt="Clont logo">
                                <img src="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/images/brand/logo1.png" class="header-brand-img dark-logo" alt="Clont logo">
                                <img src="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/images/brand/favicon.png" class="header-brand-img mobile-logo" alt="Clont logo">
                                <img src="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/images/brand/favicon1.png" class="header-brand-img darkmobile-logo" alt="Clont logo">
                            </a>
                            <div class="dropdown   side-nav">
                                <a aria-label="Hide Sidebar" class="app-sidebar__toggle nav-link icon mt-1" data-toggle="sidebar" href="#">
                                    <i class="fe fe-align-left"></i>
                                </a>
                                <!-- sidebar-toggle-->
                            </div>
                            <div class="dropdown  header-option">
                                <a class="nav-link icon" data-toggle="dropdown">
                                    <i class="fe fe-codepen"></i><span class="nav-span">Projects <i class="fa fa-angle-down ml-1 fs-18"></i></span>
                                </a>
                                <div class="dropdown-menu dropdown-menu-left dropdown-menu-arrow">
                                    <a class="dropdown-item" href="#">App Design Projects
									</a>
                                    <a class="dropdown-item" href="#">Web Design Projects
									</a>
                                    <a class="dropdown-item" href="#">App Development Projects
									</a>
                                    <a class="dropdown-item" href="#">Back-End Projects
									</a>
                                    <div class="text-left pr-5 pl-5 p-2 border-top">
                                        <a href="#" class="">View Projects</a>
                                    </div>
                                </div>
                            </div>
                            <div class="dropdown   header-setting">
                                <a class="nav-link icon" data-toggle="dropdown">
                                    <i class="fe fe-settings"></i><span class="nav-span">Settings <i class="fa fa-angle-down ml-1 fs-18"></i></span>
                                </a>
                                <div class="dropdown-menu dropdown-menu-left dropdown-menu-arrow">
                                    <a class="dropdown-item" href="#">Multi Pages
									</a>
                                    <a class="dropdown-item" href="#">Mail Settings
									</a>
                                    <a class="dropdown-item" href="#">Default Settings
									</a>
                                    <a class="dropdown-item" href="#">Documentation
									</a>
                                    <div class="text-left pr-5 pl-5 p-2  border-top">
                                        <a href="#" class="">Updated</a>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex order-lg-2 ml-auto">
                                <a href="#" data-toggle="search" class="nav-link nav-link-lg d-md-none navsearch"><i class="fa fa-search"></i></a>
                                <div class="mt-1">
                                    <form class="form-inline">
                                        <div class="search-element">
                                            <input type="search" class="form-control header-search" placeholder="Search…" aria-label="Search" tabindex="1">
                                            <button class="btn btn-primary-color" type="submit"><i class="fa fa-search text-dark"></i></button>
                                        </div>
                                    </form>
                                </div>
                                <!-- SEARCH -->
                                <div class="dropdown   header-fullscreen">
                                    <a class="nav-link icon full-screen-link" id="fullscreen-button">
                                        <i class="fe fe-minimize"></i>
                                    </a>
                                </div>
                                <div class="dropdown    header-notify">
                                    <a class="nav-link icon" data-toggle="dropdown">
                                        <i class="fe fe-bell"></i>
                                        <span class="pulse "></span>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
                                        <a href="#" class="dropdown-item d-flex pb-3">
                                            <div class="notifyimg">
                                                <i class="fe fe-message-square"></i>
                                            </div>
                                            <div>
                                                <div>Message Sent.</div>
                                                <div class="small text-muted">3 hours ago</div>
                                            </div>
                                        </a>
                                        <a href="#" class="dropdown-item d-flex pb-3">
                                            <div class="notifyimg bg-danger">
                                                <i class="fe fe-shopping-cart"></i>
                                            </div>
                                            <div>
                                                <div>Order Placed</div>
                                                <div class="small text-muted">5  hour ago</div>
                                            </div>
                                        </a>
                                        <a href="#" class="dropdown-item d-flex pb-3">
                                            <div class="notifyimg bg-success">
                                                <i class="fe fe-calendar"></i>
                                            </div>
                                            <div>
                                                <div>Event Started</div>
                                                <div class="small text-muted">45 mintues ago</div>
                                            </div>
                                        </a>
                                        <a href="#" class="dropdown-item d-flex pb-3">
                                            <div class="notifyimg bg-warning">
                                                <i class="fe fe-airplay"></i>
                                            </div>
                                            <div>
                                                <div>Your Admin lanuched</div>
                                                <div class="small text-muted">1 daya ago</div>
                                            </div>
                                        </a>
                                        <div class=" text-center p-2 border-top">
                                            <a href="#" class="">View All Notifications</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="dropdown ">
                                    <a href="#" class="nav-link pr-0 leading-none" data-toggle="dropdown">
                                        <span>
                                            <img src="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/images/users/16.jpg" alt="img" class="avatar avatar-md brround">
                                        </span>
                                    </a>
                                    <div class="dropdown-menu dropdown-menu-right dropdown-menu-arrow ">
                                        <div class="text-center">
                                            <a href="#" class="dropdown-item text-center user pb-0">John Thomson</a>
                                            <span class="text-center user-semi-title text-dark">App Developer</span>
                                            <div class="dropdown-divider"></div>
                                        </div>
                                        <a class="dropdown-item" href="#">
                                            <i class="dropdown-icon mdi mdi-account-outline "></i>Profile
										</a>
                                        <a class="dropdown-item" href="#">
                                            <i class="dropdown-icon  mdi mdi-settings"></i>Settings
										</a>
                                        <a class="dropdown-item" href="#">
                                            <i class="dropdown-icon mdi  mdi-message-outline"></i>Inbox
										</a>
                                        <a class="dropdown-item" href="#">
                                            <i class="dropdown-icon mdi mdi-comment-check-outline"></i>Message
										</a>
                                        <a class="dropdown-item" href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/login">
                                            <i class="dropdown-icon mdi  mdi-logout-variant"></i>Sign out
										</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--aside open-->
                <aside class="app-sidebar">
                    <div class="app-sidebar__user">
                        <div class="dropdown user-pro-body text-center">
                            <div class="user-pic">
                                <img src="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/images/users/16.jpg" alt="user-img" class="avatar-xl rounded-circle mb-1">
                            </div>
                            <div class="user-info">
                                <h6 class=" mb-1 text-dark">John Thomson</h6>
                                <span class="text-muted app-sidebar__user-name text-sm">App Developer</span>
                            </div>
                        </div>
                    </div>
                    <ul class="side-menu">
                        <li class="slide">
                            <a class="side-menu__item" data-toggle="slide" href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/#"><i class="side-menu__icon fe fe-monitor"></i><span class="side-menu__label">Dashboard</span><i class="angle fa fa-angle-right"></i></a>
                            <ul class="slide-menu">
                                <li><a class="slide-item" href="index.html"><span>Dashboard 01</span></a></li>
                                <li><a class="slide-item" href="index2.html"><span>Dashboard 02</span></a></li>
                                <li><a class="slide-item" href="index3.html"><span>Dashboard 03</span></a></li>
                                <li><a class="slide-item" href="index4.html"><span>Dashboard 04</span></a></li>
                                <li><a class="slide-item" href="index5.html"><span>Dashboard 05</span></a></li>
                            </ul>
                        </li>
                        <li class="slide">
                            <a class="side-menu__item" data-toggle="slide" href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/#"><i class="side-menu__icon fe fe-layers"></i><span class="side-menu__label">Apps</span><i class="angle fa fa-angle-right"></i></a>
                            <ul class="slide-menu">
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/cards" class="slide-item">Cards design</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/cards-image" class="slide-item">Image  Cards design</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/chat" class="slide-item">Default Chat</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/calendar" class="slide-item">Default calendar</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/calendar2" class="slide-item">Full calendar</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/notify" class="slide-item">Notifications</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/sweetalert" class="slide-item">Sweet alerts</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/rangeslider" class="slide-item">Range slider</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/scroll" class="slide-item">Content Scroll bar</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/counters" class="slide-item">Counters</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/loaders" class="slide-item">Loaders</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/time-line" class="slide-item">Time Line</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/rating" class="slide-item">Rating</a></li>
                            </ul>
                        </li>
                        <li>
                            <a class="side-menu__item" href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/widgets"><i class="side-menu__icon fe fe-grid"></i><span class="side-menu__label">Widgets</span></a>
                        </li>
                        <li class="slide">
                            <a class="side-menu__item" data-toggle="slide" href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/#"><i class="side-menu__icon fe fe-pie-chart"></i><span class="side-menu__label">Charts</span><i class="angle fa fa-angle-right"></i></a>
                            <ul class="slide-menu">
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/chart-chartist" class="slide-item">Chartjs Charts</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/chart-morris" class="slide-item">Morris Charts</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/chart-peity" class="slide-item">Pie Charts</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/chart-echart" class="slide-item">Echart Charts</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/chart-flot" class="slide-item">Flot Charts</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/chart-nvd3" class="slide-item">Nvd3 Charts</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/chart-dygraph" class="slide-item">Dygraph Charts</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/chart-c3" class="slide-item">C3 Charts</a></li>
                            </ul>
                        </li>
                        <li class="slide">
                            <a class="side-menu__item" data-toggle="slide" href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/#"><i class="side-menu__icon fe fe-compass"></i><span class="side-menu__label">Advanced UI</span><i class="angle fa fa-angle-right"></i></a>
                            <ul class="slide-menu">
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/modal" class="slide-item">Modal</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/tooltipandpopover" class="slide-item">Tooltip and popover</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/progress" class="slide-item">Progress</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/chart" class="slide-item">Charts</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/carousel" class="slide-item">Carousels</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/accordion" class="slide-item">Accordions</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/tabs" class="slide-item">Tabs</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/headers" class="slide-item">Headers</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/footers" class="slide-item">Footers</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/crypto-currencies" class="slide-item">Crypto-currencies</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/users-list" class="slide-item">User List</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/search" class="slide-item">Search page</a></li>
                            </ul>
                        </li>
                        <li>
                            <a class="side-menu__item" href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/maps"><i class="side-menu__icon fe fe-map-pin"></i><span class="side-menu__label">Vector Map</span></a>
                        </li>
                        <li class="slide">
                            <a class="side-menu__item" data-toggle="slide" href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/#"><i class="side-menu__icon fe fe-package"></i><span class="side-menu__label">Elements</span><i class="angle fa fa-angle-right"></i></a>
                            <ul class="slide-menu">
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/alerts" class="slide-item">Alerts</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/buttons" class="slide-item">Buttons</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/colors" class="slide-item">Colors</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/avatars" class="slide-item">Avatars</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/dropdown" class="slide-item">Drop downs</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/thumbnails" class="slide-item">Thumbnails</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/mediaobject" class="slide-item">Media Object</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/list" class="slide-item">List</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/tags" class="slide-item">Tags</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/pagination" class="slide-item">Pagination</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/navigation" class="slide-item">Navigation</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/typography" class="slide-item">Typography</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/breadcrumbs" class="slide-item">Breadcrumbs</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/badge" class="slide-item">Badges</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/jumbotron" class="slide-item">Jumbotron</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/panels" class="slide-item">Panels</a></li>
                            </ul>
                        </li>
                        <li class="slide">
                            <a class="side-menu__item" data-toggle="slide" href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/#"><i class="side-menu__icon fe fe-layout"></i><span class="side-menu__label">Tables</span><i class="angle fa fa-angle-right"></i></a>
                            <ul class="slide-menu">
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/tables" class="slide-item">Default table</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/datatable" class="slide-item">Data Table</a></li>
                            </ul>
                        </li>

                        <li class="slide">
                            <a class="side-menu__item" data-toggle="slide" href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/#"><i class="side-menu__icon fe fe-file-text"></i><span class="side-menu__label">Forms</span><i class="angle fa fa-angle-right"></i></a>
                            <ul class="slide-menu">
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/form-elements" class="slide-item">Form Elements</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/form-wizard" class="slide-item">Form-wizard Elements</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/wysiwyag" class="slide-item">Text Editor</a></li>
                            </ul>
                        </li>
                        <li class="slide">
                            <a class="side-menu__item" data-toggle="slide" href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/#"><i class="side-menu__icon fe fe-award"></i><span class="side-menu__label">Icons</span><i class="angle fa fa-angle-right"></i></a>
                            <ul class="slide-menu">
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/icons" class="slide-item">Font Awesome</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/icons2" class="slide-item">Material Design Icons</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/icons3" class="slide-item">Simple Line Icons</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/icons4" class="slide-item">Feather Icons</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/icons5" class="slide-item">Ionic Icons</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/icons6" class="slide-item">Flag Icons</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/icons7" class="slide-item">pe7 Icons</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/icons8" class="slide-item">Themify Icons</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/icons9" class="slide-item">Typicons Icons</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/icons10" class="slide-item">Weather Icons</a></li>
                            </ul>
                        </li>
                        <li class="slide">
                            <a class="side-menu__item" data-toggle="slide" href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/#"><i class="side-menu__icon fe fe-life-buoy"></i><span class="side-menu__label">Pages</span><i class="angle fa fa-angle-right"></i></a>
                            <ul class="slide-menu">
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/profile" class="slide-item">Profile</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/editprofile" class="slide-item">Edit Profile</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/emailservices" class="slide-item">Email</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/email" class="slide-item">Email Inbox</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/gallery" class="slide-item">Gallery</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/about" class="slide-item">About Company</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/services" class="slide-item">Services</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/faq" class="slide-item">FAQS</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/terms" class="slide-item">Terms</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/invoice" class="slide-item">Invoice</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/pricing" class="slide-item">Pricing Tables</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/blog" class="slide-item">Blog</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/empty" class="slide-item">Empty Page</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/construction" class="slide-item">Under Construction</a></li>
                            </ul>
                        </li>
                        <li class="slide">
                            <a class="side-menu__item" data-toggle="slide" href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/#"><i class="side-menu__icon fe fe-shopping-cart"></i><span class="side-menu__label">E-Commerce</span><i class="angle fa fa-angle-right"></i></a>
                            <ul class="slide-menu">
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/shop" class="slide-item">Products</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/shop-des" class="slide-item">Product Details</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/cart" class="slide-item">Shopping Cart</a></li>
                            </ul>
                        </li>
                        <li class="slide">
                            <a class="side-menu__item" data-toggle="slide" href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/#"><i class="side-menu__icon fe fe-codepen"></i><span class="side-menu__label">Account</span><i class="angle fa fa-angle-right"></i></a>
                            <ul class="slide-menu">
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/login" class="slide-item">Login</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/register" class="slide-item">Register</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/forgot-password" class="slide-item">Forgot Password</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/lockscreen" class="slide-item">Lock screen</a></li>
                            </ul>
                        </li>
                        <li class="slide">
                            <a class="side-menu__item" data-toggle="slide" href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/#"><i class="side-menu__icon fe fe-alert-triangle"></i><span class="side-menu__label">Error Pages</span><i class="angle fa fa-angle-right"></i></a>
                            <ul class="slide-menu">
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/400" class="slide-item">400</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/401" class="slide-item">401</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/403" class="slide-item">403</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/404" class="slide-item">404</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/500" class="slide-item">500</a></li>
                                <li><a href="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/503" class="slide-item">503</a></li>
                            </ul>
                        </li>
                    </ul>
                </aside>
                <!--aside closed-->

                <div class="app-content">
                    <div class="side-app">
                        <!--Page header-->
                        <div class="page-header">
                            <div class="page-leftheader">
                                <h4 class="page-title">Dashboard</h4>
                                <ol class="breadcrumb pl-0">
                                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Dashboard 01</li>
                                </ol>
                            </div>
                            <div class="page-rightheader ml-auto d-lg-flex d-none">
                                <div class="btn-group mb-0">
                                    <button type="button" class="btn btn-outline-default btn-sm dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Actions</button>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="#"><i class="fa fa-plus mr-2"></i>Add new Page</a>
                                        <a class="dropdown-item" href="#"><i class="fa fa-eye mr-2"></i>View the page Details</a>
                                        <a class="dropdown-item" href="#"><i class="fa fa-edit mr-2"></i>Edit Page</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="#"><i class="fa fa-cog mr-2"></i>Settings</a>
                                    </div>
                                </div>
                                <div class="ml-3">
                                    <span class="sparkline_bar mr-2 float-left"></span>
                                    <span class="float-left border-">
                                        <span class="mb-0 mt-1 mr-2">2,978</span><small class="mb-0 mr-3">( Visitors )</small>
                                    </span>
                                    <span class="sparkline_bar1 mr-2 float-left"></span>
                                    <span class="float-left">
                                        <span class="mb-0 mt-1 mr-2">6,453</span><small class="mb-0"> ( Followers )</small>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <!--End Page header-->
                        <!--Row-->
                        <div class="row">
                            <div class="col-xl-3 col-lg-6 col-md-12">
                                <div class="card">
                                    <div class="card-body pb-0">
                                        <div class="text-left mb-4">
                                            <p class=" mb-1 ">
                                                <i class="fa fa-line-chart mr-1"></i>
                                                Total Sales
										
                                            </p>
                                            <h2 class="mb-0">4,786<span class="fs-12 text-muted"><span class="text-success mr-1"><i class="fe fe-arrow-up ml-1 "></i> 12%</span> since last week</span></h2>
                                        </div>
                                    </div>
                                    <div id="spark1"></div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-lg-6 col-md-12">
                                <div class="card ">
                                    <div class="card-body pb-0">
                                        <div class="text-left mb-4">
                                            <p class=" mb-1 ">
                                                <i class="fa fa-usd mr-1"></i>
                                                Total Profits
										
                                            </p>
                                            <h2 class="mb-0">$873<span class="fs-12 text-muted"><span class="text-danger mr-1"><i class="fe fe-arrow-down ml-1 "></i> 0.34%</span> since last week</span></h2>
                                        </div>
                                    </div>
                                    <div id="spark2"></div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-lg-6 col-md-12">
                                <div class="card ">
                                    <div class="card-body pb-0">
                                        <div class="text-left mb-4">
                                            <p class=" mb-1 ">
                                                <i class="fa fa-cart-arrow-down mr-1"></i>
                                                Total Orders
										
                                            </p>
                                            <h2 class="mb-0">6,295<span class="fs-12 text-muted"><span class="text-success mr-1"><i class="fe fe-arrow-up ml-1 "></i> 0.22%</span> since last week</span></h2>
                                        </div>
                                    </div>
                                    <div id="spark3"></div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-lg-6 col-md-12">
                                <div class="card ">
                                    <div class="card-body pb-0">
                                        <div class="text-left mb-4">
                                            <p class=" mb-1">
                                                <i class="fa fa-signal mr-1"></i>
                                                Total Sales Revenue
										
                                            </p>
                                            <h2 class="mb-0">$356<span class="fs-12 text-muted"><span class="text-danger mr-1"><i class="fe fe-arrow-down ml-1"></i>0.82%</span> since last week</span></h2>
                                        </div>
                                    </div>
                                    <div id="spark4"></div>
                                </div>
                            </div>
                        </div>
                        <!--End row-->

                        <!--Row-->
                        <div class="row">
                            <div class="col-xl-7 col-md-12 col-lg-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h3 class="card-title">Overview Of Revenue and profit</h3>
                                        <div class="card-options ">
                                            <a href="#" class="card-options-collapse" data-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a>
                                            <a href="#" class="card-options-remove" data-toggle="card-remove"><i class="fe fe-x"></i></a>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-xl-4 col-lg-4 col-md-12 mb-5">
                                                <p class=" mb-0 ">This Year Sales</p>
                                                <h2 class="mb-0">35,789<span class="fs-12 text-muted"><span class="text-danger mr-1"><i class="fe fe-arrow-down ml-1"></i>0.9%</span>last year</span></h2>
                                            </div>
                                            <div class="col-xl-4 col-lg-4 col-md-12 mb-5">
                                                <p class=" mb-0 ">This Year Profits</p>
                                                <h2 class="mb-0">$9,265<span class="fs-12 text-muted"><span class="text-success mr-1"><i class="fe fe-arrow-up ml-1"></i>0.15%</span>last year</span></h2>
                                            </div>
                                            <div class="col-xl-4 col-lg-4 col-md-12 mb-5">
                                                <p class=" mb-0 ">This Year Sales Revenue</p>
                                                <h2 class="mb-0">$4,678<span class="fs-12 text-muted"><span class="text-danger mr-1"><i class="fe fe-arrow-down ml-1"></i>1.04%</span>last year</span></h2>
                                            </div>
                                        </div>
                                        <div id="chart" class="mb-0"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-5 col-md-12 col-lg-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h3 class="card-title">Monthly Sales Growth</h3>
                                        <div class="card-options ">
                                            <a href="#" class="card-options-collapse" data-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a>
                                            <a href="#" class="card-options-remove" data-toggle="card-remove"><i class="fe fe-x"></i></a>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-md-8">
                                                <span class=" mb-1">Sales Revenue</span>
                                                <h3 class="mb-3">$5,89,268<span class="fs-12 text-danger ml-1">last 6 months</span></h3>
                                                <p class="mb-0 text-muted fs-12">It is a long established fact that a reader will be fact that a reader will be distracted by  fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
                                            </div>
                                            <div class="col-md-4 mt-4 mt-sm-0">
                                                <div class="chart-circle overflow-hiddene  mt-sm-0 mb-0 text-left" data-value="0.23" data-thickness="8" data-color="#2d66f7">
                                                    <div class="chart-circle-value text-center ">
                                                        <h1 class="mb-0">25%</h1>
                                                        <small>Growth</small></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-body">
                                        <h3 class="card-title mb-0">Sales Funnel & Avg. Length of Sales Stages</h3>
                                        <div class="row">
                                            <div class="col-4">
                                                <p class="data-attributes mt-3 mb-1">
                                                    <span class="donut" data-peity='{ "fill": ["#2d66f7", "#e5e9f2"]}'>1/5</span>
                                                </p>
                                                <h4 class=" mb-0">3,678</h4>
                                                <p class="mb-0 text-muted fs-12">Opportunities</p>
                                            </div>
                                            <div class="col-4">
                                                <p class="data-attributes mt-3 mb-1">
                                                    <span class="donut" data-peity='{ "fill": ["#f72d66", "#e5e9f2"]}'>226/360</span>
                                                </p>
                                                <h4 class=" mb-0">6,398</h4>
                                                <p class="mb-0 text-muted fs-12">Proposal</p>
                                            </div>
                                            <div class="col-4 ">
                                                <p class="data-attributes mt-3 mb-1">
                                                    <span class="donut" data-peity='{ "fill": ["#f7be2d", "#e5e9f2"]}'>1,4</span>
                                                </p>
                                                <h4 class=" mb-0">5,289</h4>
                                                <p class="mb-0 text-muted fs-12">Negotiation</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--End row-->

                        <!--Row-->
                        <div class="row">
                            <div class="col-xl-12 col-md-12 col-lg-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h3 class="card-title">Overview of Sales Summary</h3>
                                        <div class="card-options ">
                                            <a href="#" class="card-options-collapse" data-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a>
                                            <a href="#" class="card-options-remove" data-toggle="card-remove"><i class="fe fe-x"></i></a>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-xl-3 col-lg-6 col-md-12 border-right dash1">
                                                <p class=" mb-0 ">Total Revenue</p>
                                                <h2 class="mb-2">$38925<span class="fs-12 text-muted ml-1">weekly profit</span></h2>
                                                <div class="progress progress-xs mb-0">
                                                    <div class="progress-bar bg-primary" style="width: 78%"></div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-6 col-md-12 border-right dash1">
                                                <p class=" mb-0 ">Total Tax</p>
                                                <h2 class="mb-2">$3926<span class="fs-12 text-muted ml-1">weekly profit</span></h2>
                                                <div class="progress progress-xs mb-0">
                                                    <div class="progress-bar bg-secondary" style="width: 58%"></div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-6 col-md-12 border-right dash1">
                                                <p class=" mb-0 ">Total Income</p>
                                                <h2 class="mb-2">73%<span class="fs-12 text-muted ml-1">weekly profit</span></h2>
                                                <div class="progress progress-xs mb-0">
                                                    <div class="progress-bar bg-warning" style="width: 73%"></div>
                                                </div>
                                            </div>
                                            <div class="col-xl-3 col-lg-6 col-md-12">
                                                <p class=" mb-0 ">Total Loss</p>
                                                <h2 class="mb-2">45%<span class="fs-12 text-muted ml-1">weekly loss</span></h2>
                                                <div class="progress progress-xs mb-0">
                                                    <div class="progress-bar bg-success" style="width: 45%"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--End row-->

                        <!--Row-->
                        <div class="row">
                            <div class="col-xl-4 col-md-12 col-lg-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h3 class="card-title">New Users</h3>
                                        <div class="card-options ">
                                            <a href="#" class="card-options-collapse" data-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a>
                                            <a href="#" class="card-options-remove" data-toggle="card-remove"><i class="fe fe-x"></i></a>
                                        </div>
                                    </div>
                                    <div class="card-body p-0 ">
                                        <div class="list-group list-lg-group list-group-flush">
                                            <div class="list-group-item list-group-item-action">
                                                <div class="media mt-0">
                                                    <img class="avatar-lg rounded-circle mr-3" src="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/images/users/1.jpg" alt="Image description">
                                                    <div class="media-body">
                                                        <div class="d-md-flex align-items-center">
                                                            <div class="mt-1">
                                                                <h5 class="mb-0 text-dark">Lillian Blake</h5>
                                                                <p class="mb-0  fs-13 text-muted">User ID: #1234</p>
                                                            </div>
                                                            <small class="ml-md-auto fs-16 mt-2">
                                                                <i class="si si-envelope mr-1" data-toggle="tooltip" data-placement="top" title="Chat"></i>
                                                                <i class="si si-settings" data-toggle="tooltip" data-placement="top" title="Settings"></i>
                                                                <i class="si si-trash mr-1" data-toggle="tooltip" data-placement="top" title="Delete"></i>
                                                            </small>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="list-group-item list-group-item-action">
                                                <div class="media mt-0">
                                                    <img class="avatar-lg rounded-circle mr-3" src="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/images/users/10.jpg" alt="Image description">
                                                    <div class="media-body">
                                                        <div class="d-md-flex align-items-center">
                                                            <div class="mt-1">
                                                                <h5 class="mb-0 font-weight-normal text-dark">Tim	Gray</h5>
                                                                <p class="mb-0 fs-13 text-muted">User ID: #1234</p>
                                                            </div>
                                                            <small class="ml-md-auto fs-16 mt-2">
                                                                <i class="si si-envelope mr-1" data-toggle="tooltip" data-placement="top" title="Chat"></i>
                                                                <i class="si si-settings" data-toggle="tooltip" data-placement="top" title="Settings"></i>
                                                                <i class="si si-trash mr-1" data-toggle="tooltip" data-placement="top" title="Delete"></i>
                                                            </small>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="list-group-item list-group-item-action">
                                                <div class="media mt-0">
                                                    <img class="avatar-lg rounded-circle mr-3" src="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/images/users/3.jpg" alt="Image description">
                                                    <div class="media-body">
                                                        <div class="d-md-flex align-items-center">
                                                            <div class="mt-1">
                                                                <h5 class="mb-0 font-weight-normal text-dark">Rose Nash</h5>
                                                                <p class="mb-0 fs-13 text-muted">User ID: #1234</p>
                                                            </div>
                                                            <small class="ml-md-auto fs-16 mt-2">
                                                                <i class="si si-envelope mr-1" data-toggle="tooltip" data-placement="top" title="Chat"></i>
                                                                <i class="si si-settings" data-toggle="tooltip" data-placement="top" title="Settings"></i>
                                                                <i class="si si-trash mr-1" data-toggle="tooltip" data-placement="top" title="Delete"></i>
                                                            </small>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="list-group-item list-group-item-action br-br-7 br-bl-7">
                                                <div class="media mt-0">
                                                    <img class="avatar-lg rounded-circle mr-3" src="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/images/users/9.jpg" alt="Image description">
                                                    <div class="media-body">
                                                        <div class="d-md-flex align-items-center">
                                                            <div class="mt-1">
                                                                <h5 class="mb-0 font-weight-normal text-dark">Justin Parr</h5>
                                                                <p class="mb-0  fs-13 text-muted">User ID: #1234</p>
                                                            </div>
                                                            <small class="ml-md-auto fs-16 mt-2">
                                                                <i class="si si-envelope mr-1" data-toggle="tooltip" data-placement="top" title="Chat"></i>
                                                                <i class="si si-settings" data-toggle="tooltip" data-placement="top" title="Settings"></i>
                                                                <i class="si si-trash mr-1" data-toggle="tooltip" data-placement="top" title="Delete"></i>
                                                            </small>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="list-group-item list-group-item-action br-br-7 br-bl-7">
                                                <div class="media mt-0">
                                                    <img class="avatar-lg rounded-circle mr-3" src="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/images/users/4.jpg" alt="Image description">
                                                    <div class="media-body">
                                                        <div class="d-md-flex align-items-center">
                                                            <div class="mt-1">
                                                                <h5 class="mb-0 font-weight-normal text-dark">Vanessa	Quinn</h5>
                                                                <p class="mb-0  fs-13 text-muted">User ID: #1234</p>
                                                            </div>
                                                            <small class="ml-md-auto fs-16 mt-2">
                                                                <i class="si si-envelope mr-1" data-toggle="tooltip" data-placement="top" title="Chat"></i>
                                                                <i class="si si-settings" data-toggle="tooltip" data-placement="top" title="Settings"></i>
                                                                <i class="si si-trash mr-1" data-toggle="tooltip" data-placement="top" title="Delete"></i>
                                                            </small>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="list-group-item list-group-item-action br-br-7 br-bl-7">
                                                <div class="media mt-0">
                                                    <img class="avatar-lg rounded-circle mr-3" src="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/images/users/11.jpg" alt="Image description">
                                                    <div class="media-body">
                                                        <div class="d-md-flex align-items-center">
                                                            <div class="mt-1">
                                                                <h5 class="mb-0 font-weight-normal text-dark">Steven Roberts</h5>
                                                                <p class="mb-0 fs-13 text-muted">User ID: #1234</p>
                                                            </div>
                                                            <small class="ml-md-auto fs-16 mt-2">
                                                                <i class="si si-envelope mr-1" data-toggle="tooltip" data-placement="top" title="Chat"></i>
                                                                <i class="si si-settings" data-toggle="tooltip" data-placement="top" title="Settings"></i>
                                                                <i class="si si-trash mr-1" data-toggle="tooltip" data-placement="top" title="Delete"></i>
                                                            </small>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-md-12 col-lg-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h3 class="card-title">Countrywise  Sales Performance</h3>
                                        <div class="card-options ">
                                            <a href="#" class="card-options-collapse" data-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a>
                                            <a href="#" class="card-options-remove" data-toggle="card-remove"><i class="fe fe-x"></i></a>
                                        </div>
                                    </div>
                                    <div>
                                        <table class="table card-table ">
                                            <tbody>
                                                <tr>
                                                    <td class="w-1"><i class="flag flag-us mt-2"></i></td>
                                                    <td>USA
													
                                                        <div class="progress progress-xs mt-1">
                                                            <div class="progress-bar bg-primary" style="width: 78%"></div>
                                                        </div>
                                                    </td>
                                                    <td class="w-1 text-right"><span class="">$6425</span></td>
                                                </tr>
                                                <tr>
                                                    <td><i class="flag flag-pl mt-2"></i></td>
                                                    <td>Poland
													
                                                        <div class="progress progress-xs mt-2">
                                                            <div class="progress-bar bg-secondary" style="width: 62%"></div>
                                                        </div>
                                                    </td>
                                                    <td class="text-right"><span class="">$5582</span></td>
                                                </tr>
                                                <tr>
                                                    <td><i class="flag flag-de mt-2"></i></td>
                                                    <td>Germany
													
                                                        <div class="progress progress-xs mt-2">
                                                            <div class="progress-bar bg-success" style="width: 48%"></div>
                                                        </div>
                                                    </td>
                                                    <td class="text-right"><span class="">$4587</span></td>
                                                </tr>
                                                <tr>
                                                    <td><i class="flag flag-ru mt-2"></i></td>
                                                    <td>Russia
													
                                                        <div class="progress progress-xs mt-2">
                                                            <div class="progress-bar bg-warning" style="width: 35%"></div>
                                                        </div>
                                                    </td>
                                                    <td class="text-right"><span class="">$2520</span></td>
                                                </tr>
                                                <tr>
                                                    <td><i class="flag flag-in mt-2"></i></td>
                                                    <td>India
													
                                                        <div class="progress progress-xs mt-2">
                                                            <div class="progress-bar bg-info" style="width: 35%"></div>
                                                        </div>
                                                    </td>
                                                    <td class="text-right"><span class="">$6429</span></td>
                                                </tr>
                                                <tr>
                                                    <td><i class="flag flag-pk mt-2"></i></td>
                                                    <td>Pakistan
													
                                                        <div class="progress progress-xs mt-2">
                                                            <div class="progress-bar bg-pink" style="width: 35%"></div>
                                                        </div>
                                                    </td>
                                                    <td class="text-right"><span class=" ">$3452</span></td>
                                                </tr>
                                                <tr>
                                                    <td><i class="flag flag-ca mt-2"></i></td>
                                                    <td>Canada
													
                                                        <div class="progress progress-xs mt-1">
                                                            <div class="progress-bar bg-cyan" style="width: 55%"></div>
                                                        </div>
                                                    </td>
                                                    <td class="text-right"><span class="">$1286</span></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-4 col-md-12 col-lg-12">
                                <div class="card card-bgimg">
                                    <div class="card-body">
                                        <div class="d-flex">
                                            <div class="text-white ">
                                                <h2 class="mb-1">24 days</h2>
                                                <p class=" mb-0 op1">Avg Sales Cycle length</p>
                                            </div>
                                            <div class="text-white ml-auto">
                                                <i class="fe fe-clock fs-50 text-white"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-body">
                                        <p class=" mb-0 ">Total earnings of this year</p>
                                        <h2 class="mb-0">$5,69,265<span class="fs-12 text-muted"><span class="text-success mr-1"><i class="fe fe-arrow-up ml-1"></i>0.15%</span>last year</span></h2>
                                        <div class="row mt-3">
                                            <div class="col-4 border-right">
                                                <p class="mb-0 text-muted">This month</p>
                                                <h5 class="mb-0">34%</h5>
                                            </div>
                                            <div class="col-4 border-right ">
                                                <p class="mb-0 text-muted">Last month</p>
                                                <h5 class="mb-0">67%</h5>
                                            </div>
                                            <div class="col-4">
                                                <p class="mb-0 text-muted">Total</p>
                                                <h5 class="mb-0">$63,456</h5>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card">
                                    <div class="card-body">
                                        <p class=" mb-0 ">Total Revenue of the Year</p>
                                        <h2 class="mb-0">$68,245<span class="fs-12 text-muted"><span class="text-success mr-1"><i class="fe fe-arrow-up ml-1"></i>0.28%</span>last year</span></h2>
                                        <div class="row mt-3 ">
                                            <div class="col-4 border-right">
                                                <p class="mb-0 text-muted">This month</p>
                                                <h5 class="mb-0">12.6%</h5>
                                            </div>
                                            <div class="col-4 border-right ">
                                                <p class="mb-0 text-muted">Last month</p>
                                                <h5 class="mb-0">56%</h5>
                                            </div>
                                            <div class="col-4">
                                                <p class="mb-0 text-muted">Total</p>
                                                <h5 class="mb-0">90%</h5>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--End row-->

                        <!--Row-->
                        <div class="row">
                            <div class="col-12 col-sm-12">
                                <div class="card ">
                                    <div class="card-header">
                                        <div class="card-title">Product Sales Details</div>
                                        <div class="card-options ">
                                            <a href="#" class="card-options-collapse" data-toggle="card-collapse"><i class="fe fe-chevron-up"></i></a>
                                            <a href="#" class="card-options-remove" data-toggle="card-remove"><i class="fe fe-x"></i></a>
                                        </div>
                                    </div>
                                    <div>
                                        <div class="table-responsive">
                                            <table class="table  table-vcenter  text-nowrap mb-0">
                                                <thead class="">
                                                    <tr>
                                                        <th>Product</th>
                                                        <th>Sold</th>
                                                        <th>Record point</th>
                                                        <th>Stock</th>
                                                        <th>Amount</th>
                                                        <th>Stock Status</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td class="text-sm font-weight-600">Women Wallet-E32N</td>
                                                        <td><span class="badge badge-primary">18</span></td>
                                                        <td>05</td>
                                                        <td>112</td>
                                                        <td>$ 2,356</td>
                                                        <td><i class="fa fa-check mr-1 text-success"></i>In Stock</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-sm font-weight-600">Phone-345S</td>
                                                        <td><span class="badge badge-info">10</span></td>
                                                        <td>04</td>
                                                        <td>210</td>
                                                        <td>$ 3,522</td>
                                                        <td><i class="fa fa-check text-success"></i>In Stock</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-sm font-weight-600">Doll-Elephant</td>
                                                        <td><span class="badge badge-secondary">15</span></td>
                                                        <td>05</td>
                                                        <td>215</td>
                                                        <td>$ 5,362</td>
                                                        <td><i class="fa fa-check text-success"></i>In Stock</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-sm font-weight-600">Women-Kurtis</td>
                                                        <td><span class="badge badge-primary">21</span></td>
                                                        <td>07</td>
                                                        <td>102</td>
                                                        <td>$ 1,326</td>
                                                        <td><i class="fa fa-check text-success"></i>In Stock</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-sm font-weight-600">Mens Shoes</td>
                                                        <td><span class="badge badge-danger">34</span></td>
                                                        <td>10</td>
                                                        <td>325</td>
                                                        <td>$ 5,234</td>
                                                        <td><i class="fa fa-check text-success"></i>In Stock</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-sm font-weight-600">Mens Gold Metal Watch</td>
                                                        <td><span class="badge badge-success">11</span></td>
                                                        <td>04</td>
                                                        <td>0</td>
                                                        <td>$ 3,256</td>
                                                        <td>
                                                            <i class="fa fa-exclamation-triangle text-warning"></i>Out of stock
														</td>
                                                    </tr>
                                                    <tr class="mb-0">
                                                        <td class="text-sm font-weight-600">Laptop</td>
                                                        <td><span class="badge badge-warning">60</span></td>
                                                        <td>10</td>
                                                        <td>0</td>
                                                        <td>$ 7,652</td>
                                                        <td>
                                                            <i class="fa fa-exclamation-triangle text-danger"></i>Out of stock
														</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--End row-->

                    </div>
                </div>
                <!-- end app-content-->
            </div>
            <!--Footer-->
            <footer class="footer">
                <div class="container">
                    <div class="row align-items-center flex-row-reverse">
                        <div class="col-md-12 col-sm-12 mt-3 mt-lg-0 text-center">
                            Copyright © 2019 <a href="#">Clont</a>. Designed by <a href="#">Spruko Technologies Pvt.Ltd</a> All rights reserved.
			
                        </div>
                    </div>
                </div>
            </footer>
            <!-- End Footer-->
        </div>
        <!-- End Page -->
        <!-- Back to top -->
        <a href="#top" id="back-to-top" style="display: inline;"><i class="fa fa-angle-up"></i></a>
        <!-- Jquery js-->
        <script src="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/js/vendors/jquery-3.4.0.min.js"></script>
        <!-- Bootstrap4 js-->
        <script src="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/js/vendors/bootstrap.bundle.min.js"></script>
        <script src="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/plugins/bootstrap/popper.min.js"></script>
        <script src="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
        <!--Othercharts js-->
        <script src="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/plugins/othercharts/jquery.sparkline.min.js"></script>
        <!-- Circle-progress js-->
        <script src="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/js/vendors/circle-progress.min.js"></script>
        <!-- Jquery-rating js-->
        <script src="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/plugins/rating/jquery.rating-stars.js"></script>
        <!--Sidemenu js-->
        <script src="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/plugins/sidemenu/sidemenu.js"></script>
        <!-- P-scroll js-->
        <script src="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/plugins/p-scrollbar/p-scrollbar.js"></script>
        <script src="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/plugins/p-scrollbar/p-scroll1.js"></script>
        <!-- ECharts js -->
        <script src="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/plugins/echarts/echarts.js"></script>
        <!-- Peitychart js-->
        <script src="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/plugins/peitychart/jquery.peity.min.js"></script>
        <script src="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/plugins/peitychart/peitychart.init.js"></script>
        <!-- Index js-->
        <script src="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/js/index1.js"></script>
        <!-- Apexchart js-->
        <script src="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/js/apexcharts.js"></script>
        <!-- Custom Js-->
        <script src="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/js/custom.js"></script>

        <!-- Switcher Js-->
        <script src="https://laravel.spruko.com/clont/Leftmenu-Icon-LightSidebar-ltr/assets/switcher/js/switcher.js"></script>
    </form>
</body>
</html>
