<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Siderbar.ascx.cs" Inherits="Controller_Siderbar" %>
<div class="sidebar" id="sidebar">
    <div class="sidebar-shortcuts" id="sidebar-shortcuts">
        <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
<%--            <button class="btn btn-small btn-success">
                <i class="icon-signal"></i>
            </button>

            <button class="btn btn-small btn-info">
                <i class="icon-pencil"></i>
            </button>

            <button class="btn btn-small btn-warning">
                <i class="icon-group"></i>
            </button>

            <button class="btn btn-small btn-danger">
                <i class="icon-cogs"></i>
            </button>--%>
        </div>

        <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
            <span class="btn btn-success"></span>

            <span class="btn btn-info"></span>

            <span class="btn btn-warning"></span>

            <span class="btn btn-danger"></span>
        </div>
    </div>
    <!--#sidebar-shortcuts-->


    <ul class="nav nav-list">
        <li>
            <a href="Default.aspx">
                <i class="icon-dashboard"></i>
                <span class="menu-text">
                    <asp:Label ID="Dashboard" Text="Dashboard" runat="server"></asp:Label>
                </span>
            </a>
        </li>
        <li>
            <a href="#" class="dropdown-toggle">
                <i class="icon-edit"></i>
                <span class="menu-text">Add New</span>
                <b class="arrow icon-angle-down"></b>
            </a>
                <ul class="submenu">
                    <li>
                        <a href="User.aspx">
                            <i class="icon-double-angle-right"></i>
                            <span class="menu-text">
                                <asp:Label ID="Label2" Text="New User" runat="server"></asp:Label>
                            </span>
                        </a>
                    </li>
                    <li>
                        <a href="Owners.aspx">
                            <i class="icon-double-angle-right"></i>
                            <span class="menu-text">
                                <asp:Label ID="Label1" Text="New Owner" runat="server"></asp:Label>
                            </span>
                        </a>
                    </li>
                    
                </ul>
        </li>
        <li>
            <a href="#" class="dropdown-toggle">
                <i class="icon-edit"></i>
                <span class="menu-text">View</span>
                <b class="arrow icon-angle-down"></b>
            </a>
                <ul class="submenu">
                    <li>
                        <a href="All User.aspx">
                            <i class="icon-double-angle-right"></i>
                            <span class="menu-text">
                                <asp:Label ID="Label4" Text="All Data" runat="server"></asp:Label>
                            </span>
                        </a>
                    </li>
                    
                </ul>
        </li>
    </ul>
    <!--/.nav-list-->

    <div class="sidebar-collapse" id="sidebar-collapse">
        <i class="icon-double-angle-left"></i>
    </div>
</div>
