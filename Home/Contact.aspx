<%@ Page Title="" Language="C#" MasterPageFile="~/Home/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Home_Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
    <!-- Google Map and Address Section
    	================================================================ --> 
   
 <div class="row">
	  <div id="primary" class="col">
          <div class="primary-content">
            <h2>
              You can reach us using the contact form below
            </h2>
            <p>
              Send us your problems also tell us how can we make our site better
            </p>
            <form class="contact-form">
              <p>
                <span class="name">
                    <asp:TextBox ID="name" runat="server" CssClass="form"></asp:TextBox>
                
                </span>
                <label>
                Name
                <span class="require">
                *
                </span>
                </label>
              </p>
              <p>
                <span class="email">
                <asp:TextBox ID="email" runat="server" CssClass="form"></asp:TextBox>
                </span>
                <label>
                Email
                <span class="require">
                *
                </span>
                </label>
              </p>
              <p>
                <span class="website">
                
                    <asp:TextBox ID="website" runat="server" CssClass="form"></asp:TextBox>
                </span>
                <label>
                Website
                </label>
              </p>
              <p>
                <span class="message">
                     <asp:TextBox TextMode="MultiLine" ID="message" runat="server" CssClass="textarea"></asp:TextBox>
                   
                </span>
              </p>
              <p>
                  <asp:Button CssClass="submit" ID="submit" runat="server" Text="Submit" />
               
              </p>
            </form>
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

