<%@ Page Title="" Language="C#" MasterPageFile="~/Home/MasterPage.master" AutoEventWireup="true" CodeFile="Restaurants.aspx.cs" Inherits="Home_Restaurants" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
      <div class="row">
        <div id="primary" class="col">
          <div class="primary-content">
              <h2>Find Your Restaurants
                        </h2>
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ResManagementConnectionString %>" SelectCommand="SELECT  * FROM dbo.ResturantList"></asp:SqlDataSource>
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
                                        <a id="A1" href='<%# "Details.aspx?id="+ Eval ("ResName").ToString()+"&Area="+ Eval("Area")+"&resid="+Eval("ResId")%>' title="Continue Reading" runat="server" class="continue-reading">Details →
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
             
             
              <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ResManagementConnectionString %>" SelectCommand="(SELECT * FROM dbo.ResturantList WHERE ResId IN(SELECT ResId FROM dbo.FoodTable WHERE (category LIKE '%'+ @category +'%')))">
                  <SelectParameters>
                    <asp:QueryStringParameter Name="category" QueryStringField="cat" />
                   
                </SelectParameters>
              </asp:SqlDataSource>
              
               <asp:ListView ID="ListView2" runat="server"  DataSourceID="SqlDataSource3">


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
                                        <a id="A1" href='<%# "Details.aspx?id="+ Eval ("ResName").ToString()+"&Area="+ Eval("Area")+"&resid="+Eval("ResId")%>' title="Continue Reading" runat="server" class="continue-reading">Details →
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
      </div>


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
          
</asp:Content>

