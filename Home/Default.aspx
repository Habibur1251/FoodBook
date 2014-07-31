<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Home_Default" %>

<!DOCTYPE html>
<!--[if IE 8]>
<html class="ie8">
  <![endif]-->
<form id="form1" runat="server">
    <!--[if (gte IE 9)|!(IE)]>
  <!-->
    <html lang="en">
    <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <title>FoodBook - Restaurant Management
        </title>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <!-- Mobile Specific Metas -->
        <link rel="stylesheet" href="css/style.css">
         <link rel="shortcut icon" href="images/favicon/favicon.ico">
        <!-- CSS Style -->
        <!-- Start JavaScript -->
        <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
        <!-- jQuery library 1.10.2 -->
        <script src="js/modernizr.js"></script>
        <!-- Modernizr -->
        <script src="js/jquery.magnific-popup.js"></script>
        <!-- Magnific Popup -->
        <script defer src="js/jquery.flexslider.js"></script>
        <!-- Flex slider -->
        <script src="js/jquery.easing.js"></script>
        <!-- Optional FlexSlider Additions -->
        <script type="text/javascript" src="js/responsive-nav.min.js"></script>
        <!-- Responsive Navigation -->
        <script type="text/javascript" src="js/instafeed.min.js"></script>
        <!-- Instgram Feed -->
        <script src="js/custom.js"></script>
        <!-- Custom Js file for javascript in html -->
        <!-- Fonts -->
        <link href='http://fonts.googleapis.com/css?family=Bitter' rel='stylesheet' type='text/css'>
        <!-- Favicons -->
        <link rel="shortcut icon" href="images/favicon/favicon.ico">
        <link rel="apple-touch-icon" href="images/favicon/apple-touch-icon.png">
        <link rel="apple-touch-icon" sizes="72x72" href="images/favicon/apple-touch-icon-72x72.png">
        <link rel="apple-touch-icon" sizes="144x144" href="images/favicon/apple-touch-icon-114x114.png">
    </head>
    <body>
        <div id="fb-root">
        </div>
        <script>
            (function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id)) return;
                js = d.createElement(s);
                js.id = id;
                js.src = "../../connect.facebook.net/en_US/all.js#xfbml=1&appId=270693226405291";
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));
        </script>
        <header>
            <div class="top-bar">
                <div class="container clearfix">
                    <div class="row">
                        <div class="col_1 col">
                            <a href="#">Home</a>
                            <a href="../Registration.aspx">Sign Up</a>
                            <a href="../Login.aspx">Login</a>

                        </div>
                        <!-- End top links -->
                        <div class="social col">
                            <a href="#"><i class="icon-twitter"></i></a>
                            <a href="#"><i class="icon-facebook"></i></a>
                            <a href="#"><i class="icon-instagram"></i></a>
                            <a href="#"><i class="icon-flickr"></i></a>
                            <a href="#"><i class="icon-email"></i></a>
                        </div>
                        <!-- End social icons -->
                    </div>
                </div>
                <!-- End container -->
            </div>
            <!-- End top bar -->
            <div class="main-header">
                <div class="container clearfix">
                    <div class="row">
                        <div id="logo" class="col">
                            <a href="#">
                                <img src="../logo copy.png" width="237" height="50" alt="CookBook - Recipe HTML Theme" />
                            </a>
                        </div>
                        <!-- End logo -->
                        <div class="top-search col">
                            <label for="s" class="assistive-text">
                                Search
                            </label>
                            <asp:TextBox CssClass="field" ID="searchtxt" placeholder="Search &hellip;" runat="server"></asp:TextBox>


                            <asp:Button ID="search" runat="server" CssClass="submit button" Text="Submit" OnClick="search_Click" />
                        </div>
                        <!-- End top-search -->
                    </div>
                </div>
            </div>
            <!-- End main header -->
            <div class="container clearfix">
                <div class="row">
                    <div id="nav" class="col">
                        <ul>
                            <li>
                                <a href="#" class="active">Home<i class="nav-icon icon-shop"></i></a>
                            </li>
                            <li>
                                <a href="../Search/Default.aspx">Search<i class="nav-icon icon-food"></i></a>
                            </li>
                            <li>
                                <a href="Blog.aspx">Blog<i class="nav-icon icon-doc"></i></a>
                            </li>
                            <li>
                                <a href="Restaurants.aspx">All Restaurant<i class="nav-icon icon-calendar"></i></a>
                            </li>
                            <li>
                                <a href="Contact.aspx">Contact<i class="nav-icon icon-mail"></i></a>
                            </li>
                        </ul>
                    </div>
                    <!-- End nav -->
                    <div class="slider-warp col">
                        <div id="slider" class="flexslider">
                            <ul class="slides">
                                <li>
                                    <img src="images/steak-with-potatoes.jpg" alt />
                                    <div class="flex-caption">
                                        <h3>
                                            <a href="#">Steak with Potatoes</a>
                                        </h3>
                                    </div>
                                </li>
                                <li>
                                    <img src="images/4646066856_56101b17c6_o.jpg" alt />
                                    <div class="flex-caption">
                                        <h3>
                                            <a href="#">Long Island Iced Tea Mixed Drink Recipe</a>
                                        </h3>
                                    </div>
                                </li>
                                <li>
                                    <img src="images/4646066888_397b6d0301_o.jpg" alt />
                                    <div class="flex-caption">
                                        <h3>
                                            <a href="#">Ham It Up Morning Sandwich</a>
                                        </h3>
                                    </div>
                                </li>
                                <li>
                                    <img src="images/4604770406_37b2e0b2f6_o.jpg" alt />
                                    <div class="flex-caption">
                                        <h3>
                                            <a href="#">Best of the Week: Fish Bow</a>
                                        </h3>
                                    </div>
                                </li>
                                <li>
                                    <img src="images/9590596438_8415469659_o.jpg" alt />
                                    <div class="flex-caption">
                                        <h3>
                                            <a href="#">Curried Chicken and Wild Rice Salad</a>
                                        </h3>
                                    </div>
                                </li>
                                <li>
                                    <img src="images/sausage-cabbage-and-tomato-5.jpg" alt />
                                    <div class="flex-caption">
                                        <h3>
                                            <a href="#">Moldavian Sausage With Cabbage, Tomato and Onions</a>
                                        </h3>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="carousel-warp">
                            <div id="carousel" class="flexslider">
                                <ul class="slides">
                                    <li>
                                        <img src="images/steak-with-potatoes.jpg" alt />
                                    </li>
                                    <li>
                                        <img src="images/4646066856_56101b17c6_o.jpg" alt />
                                    </li>
                                    <li>
                                        <img src="images/4646066888_397b6d0301_o.jpg" alt />
                                    </li>
                                    <li>
                                        <img src="images/4604770406_37b2e0b2f6_o.jpg" alt />
                                    </li>
                                    <li>
                                        <img src="images/9590596438_8415469659_o.jpg" alt />
                                    </li>
                                    <li>
                                        <img src="images/sausage-cabbage-and-tomato-5.jpg" alt />
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- End slider-warp -->
                </div>
            </div>
        </header>
        <!-- End Header -->
        <hr>

        <div class="recipe-carousel-warp">
            <div id="recipe-carousel" class="flexslider">
                <ul class="slides">
                    <li>
                        <div class="recipe-block">
                            <a href="#" title="Lemon-Garlic Shrimp">
                                <h3>Lemon-Garlic Shrimp</h3>
                                <div class="img-warp">
                                    <img src="images/8351855847_09248965e8_b.jpg" alt>
                                    <div class="img-caption">
                                        <ul>
                                            <li>
                                                <h5><i class="info-icon icon-clock"></i>15 Minutes</h5>
                                            </li>
                                            <li>
                                                <h5><i class="info-icon icon-user"></i>For four</h5>
                                            </li>
                                            <li>
                                                <h5><i class="info-icon icon-beaker"></i>Level: Easy</h5>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- hover effect -->
                            </a>
                            <span class="recipe-date">July 30th, 2013
              </span>
                            <div class="rating-warp">
                                <ul class='rating'>
                                    <li><a href='#' title='Rate this 1 star out of 5' class='one-star active'>1</a></li>
                                    <li><a href='#' title='Rate this 2 stars out of 5' class='two-stars active'>2</a></li>
                                    <li><a href='#' title='Rate this 3 stars out of 5' class='three-stars active'>3</a></li>
                                    <li><a href='#' title='Rate this 4 stars out of 5' class='four-stars active'>4</a></li>
                                    <li><a href='#' title='Rate this 5 stars out of 5' class='five-stars active'>5</a></li>
                                </ul>
                            </div>
                        </div>
                        <li>
                            <div class="recipe-block">
                                <a href="#" title="Curried Chicken and Wild Rice Salad">
                                    <h3>Curried Chicken and Wild Rice Salad</h3>
                                    <div class="img-warp">
                                        <img src="images/9590596438_8415469659_o.jpg" alt>
                                        <div class="img-caption">
                                            <ul>
                                                <li>
                                                    <h5><i class="info-icon icon-clock"></i>45 Minutes</h5>
                                                </li>
                                                <li>
                                                    <h5><i class="info-icon icon-user"></i>For five</h5>
                                                </li>
                                                <li>
                                                    <h5><i class="info-icon icon-beaker"></i>Level: Medium</h5>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <!-- hover effect -->
                                </a>
                                <span class="recipe-date">August 5th, 2013
              </span>
                                <div class="rating-warp">
                                    <ul class='rating'>
                                        <li><a href='#' title='Rate this 1 star out of 5' class='one-star active'>1</a></li>
                                        <li><a href='#' title='Rate this 2 stars out of 5' class='two-stars active'>2</a></li>
                                        <li><a href='#' title='Rate this 3 stars out of 5' class='three-stars active'>3</a></li>
                                        <li><a href='#' title='Rate this 4 stars out of 5' class='four-stars'>4</a></li>
                                        <li><a href='#' title='Rate this 5 stars out of 5' class='five-stars'>5</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                    <li>
                        <div class="recipe-block">
                            <a href="#" title="Korean Barbecue">
                                <h3>Korean Barbecue</h3>
                                <div class="img-warp">
                                    <img src="images/9225783851_d9d5f7f598_o.jpg" alt>
                                    <div class="img-caption">
                                        <ul>
                                            <li>
                                                <h5><i class="info-icon icon-clock"></i>10 Minutes</h5>
                                            </li>
                                            <li>
                                                <h5><i class="info-icon icon-user"></i>For one</h5>
                                            </li>
                                            <li>
                                                <h5><i class="info-icon icon-beaker"></i>Level: Medium</h5>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- hover effect -->
                            </a>
                            <span class="recipe-date">August 2nd, 2013
              </span>
                            <div class="rating-warp">
                                <ul class='rating'>
                                    <li><a href='#' title='Rate this 1 star out of 5' class='one-star active'>1</a></li>
                                    <li><a href='#' title='Rate this 2 stars out of 5' class='two-stars active'>2</a></li>
                                    <li><a href='#' title='Rate this 3 stars out of 5' class='three-stars active'>3</a></li>
                                    <li><a href='#' title='Rate this 4 stars out of 5' class='four-stars active'>4</a></li>
                                    <li><a href='#' title='Rate this 5 stars out of 5' class='five-stars'>5</a></li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="recipe-block">
                            <a href="#" title="Steak with Potatoes">
                                <h3>Steak with Potatoes</h3>
                                <div class="img-warp">
                                    <img src="images/steak-with-potatoes.jpg" alt>
                                    <div class="img-caption">
                                        <ul>
                                            <li>
                                                <h5><i class="info-icon icon-clock"></i>An Hour</h5>
                                            </li>
                                            <li>
                                                <h5><i class="info-icon icon-user"></i>For one</h5>
                                            </li>
                                            <li>
                                                <h5><i class="info-icon icon-beaker"></i>Level: Hard</h5>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- hover effect -->
                            </a>
                            <span class="recipe-date">July 31st, 2013
              </span>
                            <div class="rating-warp">
                                <ul class='rating'>
                                    <li><a href='#' title='Rate this 1 star out of 5' class='one-star active'>1</a></li>
                                    <li><a href='#' title='Rate this 2 stars out of 5' class='two-stars active'>2</a></li>
                                    <li><a href='#' title='Rate this 3 stars out of 5' class='three-stars'>3</a></li>
                                    <li><a href='#' title='Rate this 4 stars out of 5' class='four-stars'>4</a></li>
                                    <li><a href='#' title='Rate this 5 stars out of 5' class='five-stars'>5</a></li>
                                </ul>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="recipe-block">
                            <a href="#" title="Moldavian Sausage With Cabbage, Tomato and Onions">
                                <h3>Moldavian Sausage With Cabbage, Tomato and Onions</h3>
                                <div class="img-warp">
                                    <img src="images/sausage-cabbage-and-tomato-5.jpg" alt>
                                    <div class="img-caption">
                                        <ul>
                                            <li>
                                                <h5><i class="info-icon icon-clock"></i>Half an Hour</h5>
                                            </li>
                                            <li>
                                                <h5><i class="info-icon icon-user"></i>For four</h5>
                                            </li>
                                            <li>
                                                <h5><i class="info-icon icon-beaker"></i>Level: Medium</h5>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- hover effect -->
                            </a>
                            <span class="recipe-date">August 16th, 2013
              </span>
                            <div class="rating-warp">
                                <ul class='rating'>
                                    <li><a href='#' title='Rate this 1 star out of 5' class='one-star active'>1</a></li>
                                    <li><a href='#' title='Rate this 2 stars out of 5' class='two-stars active'>2</a></li>
                                    <li><a href='#' title='Rate this 3 stars out of 5' class='three-stars active'>3</a></li>
                                    <li><a href='#' title='Rate this 4 stars out of 5' class='four-stars'>4</a></li>
                                    <li><a href='#' title='Rate this 5 stars out of 5' class='five-stars'>5</a></li>
                                </ul>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ResManagementConnectionString %>" SelectCommand="SELECT  * FROM dbo.ResturantList"></asp:SqlDataSource>


        <!-- End recipe-carousel-warp -->
        <div class="container clearfix">
            <hr>
            <div class="row">
                <div id="primary" class="col">
                    <div class="primary-content">
                        <h2>Find Your Restaurants
                        </h2>
                        <asp:ListView ID="ListView1" runat="server" DataKeyNames="ResId" DataSourceID="SqlDataSource1">


                            <EmptyDataTemplate>
                                <span>No data was returned.</span>
                            </EmptyDataTemplate>

                            <ItemTemplate>
                                <div class="post clearfix">
                                    <div class="post-thumbnail">
                                        
                                        <a href="images/4646066888_397b6h3301_o.jpg" class="image-link">
                                           <img id="Img1" src='<%#Eval("imgpath") %>' runat="server" />
                                             <%--<img src="images/4646066888_397b6h3301_o.jpg" title="Fruits and Vegetables with Most Vitamin B" alt="Fruits and Vegetables with Most Vitamin B">--%>
                                        </a>
                                        &nbsp;
                                    </div>
                                    <div class="post-content">
                                        <h3 class="entry-title">
                                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "Details.aspx?id="+ Eval ("ResName").ToString()+"&Area="+ Eval("Area")+"&resid="+Eval("ResId")%>'
                                                Text='<%# Eval ("ResName")%>'></asp:HyperLink>
                                            <%--<asp:Label ID="Label1" runat="server" Text='<%# Eval("ResName") %>' />--%>
                                        </h3>
                                        website:
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("website") %>' />
                                        <br />
                                        Email:
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("Email") %>' />
                                        <br />
                                        contact:
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("contact") %>' />
                                        <br />
                                        Area:
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("Area") %>' />
                                        <br />
                                        <a href='<%# "Details.aspx?id="+ Eval ("ResName").ToString()+"&Area="+ Eval("Area")+"&resid="+Eval("ResId")%>' title="Continue Reading" runat="server" class="continue-reading">Details →
                                        </a>
                                    </div>
                                    <div class="post-meta">
                                        <div class="post-meta-item">
                                            <em>Share</em>
                                            <div>
                                                <i class="icon-reply"></i>
                                                <span>
                                                    <a href="#"><i class="icon-twitter"></i></a>
                                                    <a href="#"><i class="icon-facebook"></i></a>
                                                    <a href="#"><i class="icon-email"></i></a>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="post-meta-item">
                                            <em>Like it</em>
                                            <div>
                                                <a href="#"><i class="icon-heart"></i></a>
                                                <span>342 Likes
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <%--   <span style="">ResId:
                                <asp:Label ID="ResIdLabel" runat="server" Text='<%# Eval("ResId") %>' />
                                <br />
                                ResName:
                                <asp:Label ID="ResNameLabel" runat="server" Text='<%# Eval("ResName") %>' />
                                <br />
                                ResOId:
                                <asp:Label ID="ResOIdLabel" runat="server" Text='<%# Eval("ResOId") %>' />
                                <br />
                                website:
                                <asp:Label ID="websiteLabel" runat="server" Text='<%# Eval("website") %>' />
                                <br />
                                Email:
                                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                <br />
                                contact:
                                <asp:Label ID="contactLabel" runat="server" Text='<%# Eval("contact") %>' />
                                <br />
                                description:
                                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                                <br />
                                logo:
                                <asp:Label ID="logoLabel" runat="server" Text='<%# Eval("logo") %>' />
                                <br />
                                Area:
                                <asp:Label ID="AreaLabel" runat="server" Text='<%# Eval("Area") %>' />
                                <br />
                                HouseNo:
                                <asp:Label ID="HouseNoLabel" runat="server" Text='<%# Eval("HouseNo") %>' />
                                <br />
                                RoadNo:
                                <asp:Label ID="RoadNoLabel" runat="server" Text='<%# Eval("RoadNo") %>' />
                                <br />
                                District:
                                <asp:Label ID="DistrictLabel" runat="server" Text='<%# Eval("District") %>' />
                                <br />
                                Zip:
                                <asp:Label ID="ZipLabel" runat="server" Text='<%# Eval("Zip") %>' />
                                <br />
                                imgpath:
                                <asp:Label ID="imgpathLabel" runat="server" Text='<%# Eval("imgpath") %>' />
                                <br />
<br /></span>--%>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <div id="itemPlaceholderContainer" runat="server" style="">
                                    <span runat="server" id="itemPlaceholder" />
                                </div>
                                <br />
                                <div style="text-align: center; background-color: #FFCC66; font-family: Verdana, Arial, Helvetica, sans-serif; color: #333333;">
                                    <asp:DataPager ID="DataPager1" runat="server">
                                        <Fields>

                                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                        </Fields>
                                    </asp:DataPager>
                                </div>
                            </LayoutTemplate>

                        </asp:ListView>


                    </div>
                </div>
                <!-- End primary -->
                <div id="sidebar" class="aside col">

                    <div class="cat-widget widget clearfix">
                        <h3 class="widget-title">
                            <span>Categories
              </span>
                        </h3>
                        <ul>
                            <asp:Repeater ID="repeater2" runat="server" DataSourceID="SqlDataSource2">
                                <ItemTemplate>


                                    <li>
                                        <a href='<%# "Restaurants.aspx?cat="+ Eval ("category") %>'>
                                            <%# Eval("category") %>
                                        </a>
                                        <span>
                                            <%# Eval("Column1") %>
                                        </span>
                                    </li>

                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>


                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ResManagementConnectionString %>" SelectCommand="SELECT DISTINCT [category],COUNT(category) FROM [FoodTable] GROUP BY category;"></asp:SqlDataSource>



                    </div>
                    <div class="instagram-widget widget clearfix">
                        <h3 class="widget-title">
                            <span>Instagram
                            </span>
                        </h3>
                        <div id="instafeed">
                        </div>
                    </div>
                    <div id="video-widget" class="widget clearfix">
                        <h3 class="widget-title">
                            <span>Video
                            </span>
                        </h3>
                        <div class="videoWrapper">
                            <iframe src="http://player.vimeo.com/video/51978875?title=0&amp;byline=0&amp;portrait=0&amp;color=ffffff"></iframe>
                        </div>
                    </div>
                    <div id="ad-widget" class="widget clearfix">
                        
                    </div>
                </div>
                <!-- End sidebar -->
            </div>
        </div>
        <div id="footer">
            <div class="footer-upper container clearfix">
                <div class="row">
                    <div class="col_1 col">
                        <h3 class="widget-title">About Food Book
                        </h3>
                        <p>
                           Food Book is a restaurant management system. This site is develoepd by Habib,Eva,Rafat,Mehedi
                        </p>
                      
                    </div>
                    
                    <div class="col fb-widget">
                        <h3 class="widget-title">Site Map
                        </h3>
                        
                           <div id="Div1" class="col">
                        <ul>
                            <li>
                                <a href="#" class="active">Home<i class="nav-icon icon-shop"></i></a>
                            </li>
                            <li>
                                <a href="../Search.aspx">Search<i class="nav-icon icon-food"></i></a>
                            </li>
                            <li>
                                <a href="blog.html">Blog<i class="nav-icon icon-doc"></i></a>
                            </li>
                            <li>
                                <a href="Restaurants.aspx">All Restaurant<i class="nav-icon icon-calendar"></i></a>
                            </li>
                            <li>
                                <a href="Contact.aspx">Contact<i class="nav-icon icon-mail"></i></a>
                            </li>
                        </ul>
                    </div>
                        </div>
                    
                </div>
            </div>
            <!-- End footer-upper -->
            <div class="footer-down clearfix">
                <div class="container">
                    <div class="copyright">
                        Copyright © 2013
            <a href="#" title="CooBook Theme">Habib</a>
                        . All rights reserved.
                    </div>
                    <div class="credit">
                        Designed by
            <a href="http://munfactory.com/" title="munfactory">munfactory</a>
                    </div>
                </div>
            </div>
            <!-- End footer-down -->
        </div>
        <!-- End Footer -->
        <script type="text/javascript">
            var navigation = responsiveNav("#nav", {
                insert: "before"
            });
        </script>
    </body>
    </html>
</form>
