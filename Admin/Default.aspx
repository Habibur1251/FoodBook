<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
                    <form id="form1" runat="server">
                    <div class="page-header position-relative">
                    <h1>Dashboard
							<small>
                                <i class="icon-double-angle-right"></i>
                                overview &amp; stats
                            </small>
                        
                    </h1>
                </div>
                <!--/.page-header-->

                <div class="row-fluid">
                    <div class="span12">
                        <!--PAGE CONTENT BEGINS-->

                        <div class="alert alert-block alert-success">
                            <button type="button" class="close" data-dismiss="alert">
                                <i class="icon-remove"></i>
                            </button>

                            <i class="icon-ok green"></i>

                            Welcome to
								<strong class="green">Food Book
								
                                </strong>
                         
                        </div>

                        <div class="space-6"></div>

                        <div class="row-fluid">
                            

                            <div class="vspace"></div>

                            <div class="span5">
                                <div class="widget-box">
                                    <div class="widget-header widget-header-flat widget-header-small">
                                        <h5>
                                            <i class="icon-signal"></i>
                                            Traffic Sources
                                        </h5>
                                    </div>

                                    <div class="widget-body">
                                        <div class="widget-main">
                                            

                                            <div class="hr hr8 hr-double"></div>
                                            
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ResManagementConnectionString %>" SelectCommand="SELECT COUNT(ResId) AS res FROM dbo.ResturantList;"></asp:SqlDataSource>
                                            <div class="clearfix">
                                                <div class="grid3">
                                                    <asp:Repeater ID="count" runat="server" DataSourceID="SqlDataSource1">
                                                        <ItemTemplate>
                                                             <span class="grey">
                                                        Total Restaurants
                                                    </span>
                                                            <br />
                                                    <h4 class="bigger pull-right"><%# Eval("res") %></h4>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </div>
                                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ResManagementConnectionString %>" SelectCommand="SELECT COUNT(ResOId) AS res2 FROM dbo.ResturantOwnerDetails;"></asp:SqlDataSource>
                                                <div class="grid3">
                                                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">
                                                        <ItemTemplate>
                                                             <span class="grey">
                                                        Total Owners
                                                    </span>
                                                            <br />
                                                    <h4 class="bigger pull-right"><%# Eval("res2") %></h4>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </div>
                                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ResManagementConnectionString %>" SelectCommand="SELECT COUNT(UserId) AS res3 FROM  dbo.UserTable;"></asp:SqlDataSource>
                                                <div class="grid3">
                                                    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource3">
                                                        <ItemTemplate>
                                                             <span class="grey">
                                                        Total Users
                                                    </span>
                                                            <br />
                                                    <h4 class="bigger pull-right"><%# Eval("res3") %></h4>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </div>
                                            </div>
                                        </div>
                                        <!--/widget-main-->
                                    </div>
                                    <!--/widget-body-->
                                </div>
                                <!--/widget-box-->
                            </div>
                            <!--/span-->
                        </div>
                        <!--/row-->

                        <div class="hr hr32 hr-dotted"></div>

                        

                        <div class="hr hr32 hr-dotted"></div>

                        
                        <!--/row-->

                        <!--PAGE CONTENT ENDS-->
                    </div>
                    <!--/.span-->
                </div>
                    </form>
</asp:Content>

