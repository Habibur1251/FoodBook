<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Navmenu2.ascx.cs" Inherits="Controller_Navmenu" %>

<div class="navbar">
    <div class="navbar-inner">
        <div class="container-fluid">
            <a href="#" class="brand">
                <small>

                    <img src="../assets/img/logo copy.png" style="height: 35px" />
                </small>
            </a>
            <!--/.brand-->

            <ul class="nav ace-nav pull-right">
               

                <li class="light-blue">
                    <a data-toggle="dropdown" href="#" class="dropdown-toggle">
                        <img class="nav-user-photo" src='../<%:Session["imagepath"] %>' ' alt="Jasons Photo" />
                        <span class="user-info">
                            <small>Welcome,</small>
                            <asp:Label ID="name" runat="server"></asp:Label>
                        </span>

                        <i class="icon-caret-down"></i>
                    </a>

                    <ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-closer">
                        

                        <li>
                            <a href="../Owner/Profile.aspx">
                                <i class="icon-user"></i>
                                Profile
                            </a>
                        </li>

                     

                        <li>
                            <a href="../Owner/Login.aspx">
                                <i class="icon-off"></i>
                                
                                
                                Log out
                              
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
            <!--/.ace-nav-->
        </div>
        <!--/.container-fluid-->
    </div>
    <!--/.navbar-inner-->
</div>

