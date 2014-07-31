<%@ Page Language="C#" MasterPageFile="~/Home/MasterPage.master" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="Details" %>

<asp:Content ContentPlaceHolderID="body" runat="server">
    <div class="row">
        <div id="primary" class="col">
            <div class="primary-content">
                <div class="post-open clearfix">
                    <asp:ListView ID="ListView1" runat="server" DataKeyNames="ResId" DataSourceID="SqlDataSource1">






                        <EmptyDataTemplate>
                            <span>No data was returned.</span>
                        </EmptyDataTemplate>

                        <ItemTemplate>

                            <asp:Label Visible="false" ID="ResIdLabel" runat="server" Text='<%# Eval("ResId") %>' />

                            <h2 class="entry-title">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("ResName") %>' />
                            </h2>
                            <div class="post-thumbnail">
                                
                                    
                                   <img id="Img1" src='<%#Eval("imgpath") %>' runat="server" />
                                    <%--<asp:Label ID="imgpathLabel" runat="server" Text='<%# Eval("imgpath") %>' />--%>
                               
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </div>
                            <div class="entry-content">
                                Contact:
                <asp:Label ID="contactLabel" runat="server" Text='<%# Eval("contact") %>' />
                                <br />

                                District:
                <asp:Label ID="DistrictLabel" runat="server" Text='<%# Eval("District") %>' />
                                <br />
                                Road No:
                <asp:Label ID="RoadNoLabel" runat="server" Text='<%# Eval("RoadNo") %>' />
                                <br />
                                HouseNo:
                <asp:Label ID="HouseNoLabel" runat="server" Text='<%# Eval("HouseNo") %>' />
                                <br />
                                Area:
                <asp:Label ID="AreaLabel" runat="server" Text='<%# Eval("Area") %>' />
                                <br />

                                Zip:
                <asp:Label ID="ZipLabel" runat="server" Text='<%# Eval("Zip") %>' /><br />
                                Description:
                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                                <br />
                            </div>
                            <div class="post-meta">
                                <span class="author">Website:
                <asp:Label ID="websiteLabel" runat="server" Text='<%# Eval("website") %>' />
                                </span>
                                <span class="date">Email:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />

                                </span>
                                 <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "FoodMenu.aspx?id="+ Eval ("ResName").ToString()+"&resid="+Eval("ResId")%>'
                                                Text="Food Menu"></asp:HyperLink>
                            </div>
                        </ItemTemplate>




                    </asp:ListView>

                </div>

            </div>
            <div class="comments">


                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">
                    <ItemTemplate>
                        <h2 class="comments-num">
                        Total Comments     <asp:Label ID="Label1" runat="server" Text='<%# Bind("Column1") %>'></asp:Label>
                        </h2>
                    </ItemTemplate>
                </asp:Repeater>


                <ol>
                  
                        

                        
                           
                       
                          <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource3">
                    <ItemTemplate>
                          <li class="comment">
                               <div>
                        <img src="images/avatar.png" alt="User Avatar" class="avatar">
                            <div class="comment-body">
                             <asp:Label ID="CommentsLabel" runat="server" Text='<%# Eval("Comments") %>' />
                 
                            </div>
                            <div class="comment-author">
                                
                                <asp:Label ID="UserIdLabel" runat="server" Text='<%# Eval("UserId") %>' />
                            </div>
                            <a href="#" class="reply-link">Reply</a>
                            <div class="comment-date">
                                September 4th, 2013
                 
                            </div>
                                      </div>
                                </li>
                       </ItemTemplate>
                              </asp:Repeater>      
                     
                         
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ResManagementConnectionString %>" SelectCommand="SELECT [Comments], [UserId] FROM [Comments&amp;Ratings] where ResId = @ResId">
                                    <SelectParameters>
                            <asp:QueryStringParameter Name="ResId" QueryStringField="resid" Type="Int32" />
                            
                        </SelectParameters>

                                </asp:SqlDataSource>
                                
                        
                  
                   
                </ol>
            </div>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ResManagementConnectionString %>" SelectCommand="SELECT COUNT(*) FROM dbo.[Comments&amp;Ratings] where ResId = @ResId;">
                     <SelectParameters>
                            <asp:QueryStringParameter Name="ResId" QueryStringField="resid" Type="Int32" />
                            
                        </SelectParameters>
                </asp:SqlDataSource>

            <h2 class="leave-comment">

            </h2>
            <form class="comment-form" id="comm">
                <div class="rating-warp" runat="server" id="rating">
                         
                    <ul class='rating'>
                                    
                                    <li><a href='#' title='Rate this 1 star out of 5' class='one-star active'>1</a></li>
                                    <li><a href='#' title='Rate this 2 stars out of 5' class='two-stars active'>2</a></li>
                                    <li><a href='#' title='Rate this 3 stars out of 5' class='three-stars active'>3</a></li>
                                    <li><a href='#' title='Rate this 4 stars out of 5' class='four-stars active'>4</a></li>
                                    <li><a href='#' title='Rate this 5 stars out of 5' class='five-stars active'>5</a></li>
                                </ul>
                            </div>
                <asp:Label ID="log" runat="server"></asp:Label>
            
            
            <p>
              <span class="message">
                  <asp:TextBox CssClass="textarea" ID="msg" runat="server" TextMode="MultiLine"></asp:TextBox>
                 
              </span>
            </p>
            <p>
              
                <asp:Button ID="submit" runat="server" CssClass="submit" Text="Submit" OnClick="submit_Click" />
            </p>
               
          </form>
        </div>
      
        <!-- End primary -->
       <div id="sidebar" class="aside col">
               <div class="cat-widget widget clearfix">
            <h3 class="widget-title">
              <span>
              Categories
              </span>
            </h3>
                     <ul>
                        <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource4">

                            <EmptyDataTemplate>
                                <span>No data was returned.</span>
                            </EmptyDataTemplate>

                            <ItemTemplate>
                              
                                    
                                    <li>
                                        <a href="#">
                                          <%# Eval("category") %>
                                            </a>
                                            <span>
                                                <%# Eval("Column1") %>
                                            </span>
                                   </li>
                               
                            </ItemTemplate>


                        </asp:ListView>
                         </ul>
                            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ResManagementConnectionString %>" SelectCommand="SELECT DISTINCT [category],COUNT(category) FROM [FoodTable] GROUP BY category;"></asp:SqlDataSource>
                         


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
                <a href="#">
                    <img src="images/tf_300x250_v2.gif" title="ThemeForest" alt="ThemeForest Ad"></a>
            </div>
        </div>
        <!-- End sidebar -->
    </div>

    <div>
    </div>
    <br />

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ResManagementConnectionString %>" SelectCommand="SELECT [ResId], [ResName], [website], [Email], [contact], [description], [District], [RoadNo], [HouseNo], [Area], [imgpath], [Zip] FROM [ResturantList] WHERE ([ResId] = @ResId)">
        <SelectParameters>
            <asp:QueryStringParameter Name="ResId" QueryStringField="ResId" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

