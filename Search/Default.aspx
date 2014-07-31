<%@ Page Title="" Language="C#" MasterPageFile="~/Search/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Search_Default" %>

<%-- Add content controls here --%>
<asp:Content ContentPlaceHolderID="srchreslt" runat="server">
    <div id="job-content-fields">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ResManagementConnectionString %>"
            SelectCommand="SELECT * FROM [ResturantList];"></asp:SqlDataSource>
        <asp:Repeater ID="all" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <div id="list" class="view_mode">
                    <div class="field-container odd box-1">
                        <%--<div class="nav-buttons">
                            <%-- <ul>
                                                <li class="show-hide"><a></a></li>
                                                <li class="favorite"><a href="#"></a></li>
                                                <li class="link"><a href="job.html"></a></li>
                                            </ul>
                        </div>--%>
                        <div class="header-fields">
                            <%--<div class="date">27<span>Jun</span></div>--%>
                            <div class="title-company">
                                <div class="title"><a href='<%# "../Home/Details.aspx?id="+ Eval ("ResName").ToString()+"&Area="+ Eval("Area")+"&resid="+Eval("ResId")%>'><%# Eval("ResName") %></a></div>
                                <div class="company">Location - <a href="#"><%# Eval("Area") %></a></div>
                            </div>
                            <ul class="social_media_icons job">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
                                <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                            </ul>
                        </div>
                        <div class="body-field">
                            <div style="float:right; margin-top:-10px;"><img src='<%#Eval("imgpath") %>' height="50px" width="50px" /></div>
                            <div class="teaser">
                                <p><%# Eval("description") %></p>
                            </div>

                            <ul class="candidate-meta meta-fields">
                                <li class="pull-left">Email: <span><%# Eval("email") %></span></li>
                                <li class="pull-center">Website: <span><%# Eval("website") %></span></li>
                                <%--<li class="pull-right">Food Category: <span><%# Eval("category") %></span></li>--%>
                            </ul>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ResManagementConnectionString %>"
            SelectCommand="SELECT * FROM [ResturantList] where (ResName LIKE '%'+@q+ '%') ;">

            <SelectParameters>
                <asp:QueryStringParameter Name="q" QueryStringField="resname" />
                
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Repeater ID="resnamewise" runat="server" DataSourceID="SqlDataSource2">
            <ItemTemplate>
                <div id="list" class="view_mode">
                    <div class="field-container odd box-1">
                        <%--<div class="nav-buttons">
                            <%-- <ul>
                                                <li class="show-hide"><a></a></li>
                                                <li class="favorite"><a href="#"></a></li>
                                                <li class="link"><a href="job.html"></a></li>
                                            </ul>
                        </div>--%>
                        <div class="header-fields">
                            <%--<div class="date">27<span>Jun</span></div>--%>
                            <div class="title-company">
                                <div class="title"><a href='<%# "../Home/Details.aspx?id="+ Eval ("ResName").ToString()+"&Area="+ Eval("Area")+"&resid="+Eval("ResId")%>'><%# Eval("ResName") %></a></div>
                                <div class="company">Location - <a href="#"><%# Eval("Area") %></a></div>
                            </div>
                            <ul class="social_media_icons job">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
                                <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                            </ul>
                        </div>
                        <div class="body-field">

                            <div style="float:right; margin-top:-10px;"><img src='<%#Eval("imgpath") %>' height="50px" width="50px" /></div>
                            <div class="teaser">
                                <p><%# Eval("description") %></p>
                            </div>

                            <ul class="candidate-meta meta-fields">
                                <li class="pull-left">Email: <span><%# Eval("email") %></span></li>
                                <li class="pull-center">Website: <span><%# Eval("website") %></span></li>
                                <%--<li class="pull-right">Food Category: <span><%# Eval("category") %></span></li>--%>
                            </ul>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>


        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ResManagementConnectionString %>"
            SelectCommand="SELECT * FROM [ResturantList] where (Area LIKE '%'+@q+ '%') ;">

            <SelectParameters>
                <asp:QueryStringParameter Name="q" QueryStringField="area" />
                
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Repeater ID="Areawise" runat="server" DataSourceID="SqlDataSource3">
            <ItemTemplate>
                <div id="list" class="view_mode">
                    <div class="field-container odd box-1">
                        <%--<div class="nav-buttons">
                            <%-- <ul>
                                                <li class="show-hide"><a></a></li>
                                                <li class="favorite"><a href="#"></a></li>
                                                <li class="link"><a href="job.html"></a></li>
                                            </ul>
                        </div>--%>
                        <div class="header-fields">
                            <%--<div class="date">27<span>Jun</span></div>--%>
                            <div class="title-company">
                                <div class="title"><a href='<%# "../Home/Details.aspx?id="+ Eval ("ResName").ToString()+"&Area="+ Eval("Area")+"&resid="+Eval("ResId")%>'><%# Eval("ResName") %></a></div>
                                <div class="company">Location - <a href="#"><%# Eval("Area") %></a></div>
                            </div>
                            <ul class="social_media_icons job">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
                                <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                            </ul>
                        </div>
                        <div style="float:right; margin-top:-10px;"><img src='<%#Eval("imgpath") %>' height="50px" width="50px" /></div>
                        <div class="body-field">
                            <div class="teaser">
                                <p><%# Eval("description") %></p>
                            </div>

                            <ul class="candidate-meta meta-fields">
                                <li class="pull-left">Email: <span><%# Eval("email") %></span></li>
                                <li class="pull-center">Website: <span><%# Eval("website") %></span></li>
                                <%--<li class="pull-right">Food Category: <span><%# Eval("category") %></span></li>--%>
                            </ul>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>

        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ResManagementConnectionString %>"
            SelectCommand="SELECT * FROM FoodTable where (FoodTable.FoodName LIKE '%'+@q+ '%') ;">

            <SelectParameters>
                <asp:QueryStringParameter Name="q" QueryStringField="fname" />
                
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Repeater ID="foodnamewise" runat="server" DataSourceID="SqlDataSource4">
            <ItemTemplate>
                <div id="list" class="view_mode">
                    <div class="field-container odd box-1">
                        <%--<div class="nav-buttons">
                            <%-- <ul>
                                                <li class="show-hide"><a></a></li>
                                                <li class="favorite"><a href="#"></a></li>
                                                <li class="link"><a href="job.html"></a></li>
                                            </ul>
                        </div>--%>
                        <div class="header-fields">
                            <%--<div class="date">27<span>Jun</span></div>--%>
                            <div class="title-company">
                                <div class="title"><a href='<%# "../Home/Details.aspx?id="+ Eval ("ResName").ToString()+"&resid="+Eval("ResId")%>'><%# Eval("FoodName") %></a></div>
                                <div class="company">Restaurant - <a href="#"><%# Eval("ResName") %></a></div>
                            </div>
                            <ul class="social_media_icons job">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
                                <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                            </ul>
                        </div>
                        <div class="body-field">
                            <div style="float:right; margin-top:-10px;"><img src='<%#Eval("imgpath") %>' height="50px" width="50px" /></div>
                            <div class="teaser">
                                <p><%# Eval("description") %></p>
                            </div>

                            <ul class="candidate-meta meta-fields">
                                <li class="pull-left">Price: <span><%# Eval("price") %></span></li>
                                <li class="pull-center">Category: <span><%# Eval("category") %></span></li>
                                
                            </ul>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>

        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ResManagementConnectionString %>"
            SelectCommand="select * from FoodTable where Price=@pr;">

            <SelectParameters>
                <asp:QueryStringParameter Name="pr" QueryStringField="pr"/>
                
                
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Repeater ID="pricewise" runat="server" DataSourceID="SqlDataSource5">
            <ItemTemplate>
                <div id="list" class="view_mode">
                    <div class="field-container odd box-1">
                        <%--<div class="nav-buttons">
                            <%-- <ul>
                                                <li class="show-hide"><a></a></li>
                                                <li class="favorite"><a href="#"></a></li>
                                                <li class="link"><a href="job.html"></a></li>
                                            </ul>
                        </div>--%>
                        <div class="header-fields">
                            <%--<div class="date">27<span>Jun</span></div>--%>
                            <div class="title-company">
                                <div class="title"><a href='<%# "../Home/Details.aspx?id="+ Eval ("ResName").ToString()+"&resid="+Eval("ResId")%>'><%# Eval("FoodName") %></a></div>
                                <div class="company">Restaurant - <a href="#"><%# Eval("ResName") %></a></div>
                            </div>
                            <ul class="social_media_icons job">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
                                <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                            </ul>
                        </div>
                        <div class="body-field">
                            <div style="float:right; margin-top:-10px;"><img src='<%#Eval("imgpath") %>' height="50px" width="50px" /></div>
                            <div class="teaser">
                                <p><%# Eval("description") %></p>
                            </div>

                            <ul class="candidate-meta meta-fields">
                                <li class="pull-left">Price: <span><%# Eval("price") %></span></li>
                                <li class="pull-center">Category: <span><%# Eval("category") %></span></li>
                                
                            </ul>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>

        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ResManagementConnectionString %>"
            SelectCommand="(SELECT * FROM dbo.ResturantList WHERE ResId IN(SELECT ResId FROM dbo.FoodTable WHERE (category LIKE '%'+@q+'%')));">

            <SelectParameters>
                <asp:QueryStringParameter Name="q" QueryStringField="cat" />
                
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Repeater ID="catwise" runat="server" DataSourceID="SqlDataSource6">
            <ItemTemplate>
                <div id="list" class="view_mode">
                    <div class="field-container odd box-1">
                        <%--<div class="nav-buttons">
                            <%-- <ul>
                                                <li class="show-hide"><a></a></li>
                                                <li class="favorite"><a href="#"></a></li>
                                                <li class="link"><a href="job.html"></a></li>
                                            </ul>
                        </div>--%>
                        <div class="header-fields">
                            <%--<div class="date">27<span>Jun</span></div>--%>
                            <div class="title-company">
                                <div class="title"><a href='<%# "../Home/Details.aspx?id="+ Eval ("ResName").ToString()+"&Area="+ Eval("Area")+"&resid="+Eval("ResId")%>'><%# Eval("ResName") %></a></div>
                                <div class="company">Location - <a href="#"><%# Eval("Area") %></a></div>
                            </div>
                            <ul class="social_media_icons job">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin-square"></i></a></li>
                                <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                            </ul>
                        </div>
                        <div class="body-field">
                            <div style="float:right; margin-top:-10px;"><img src='<%#Eval("imgpath") %>' height="50px" width="50px" /></div>
                            <div class="teaser">
                                <p><%# Eval("description") %></p>
                            </div>

                            <ul class="candidate-meta meta-fields">
                                <li class="pull-left">Email: <span><%# Eval("email") %></span></li>
                                <li class="pull-center">Website: <span><%# Eval("website") %></span></li>
                                <%--<li class="pull-right">Food Category: <span><%# Eval("category") %></span></li>--%>
                            </ul>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
