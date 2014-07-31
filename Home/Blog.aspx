<%@ Page Title="" Language="C#" MasterPageFile="~/Home/MasterPage.master" AutoEventWireup="true" CodeFile="Blog.aspx.cs" Inherits="Home_Blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ResManagementConnectionString %>"
            SelectCommand="SELECT * FROM [article];"></asp:SqlDataSource>
    <div class="row">
        <div id="primary" class="col">
          <div class="primary-content">
            <h2>
              Blog
            </h2>
            <div class="post clearfix">
             <asp:Repeater ID="all" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate> 
              <div class="post-content">
                <h3 class="entry-title">
                 <%# Eval("article_title") %>
                </h3>
                <a href='<%# "Blog.aspx?id="+ Eval ("article_id")%>' title="Continue Reading" class="continue-reading">
                Continue Reading →
                </a>
              </div>
              <div class="post-meta">
                <div class="post-meta-item">
                  <em>Share</em>
                  <div>
                    <i class="icon-reply">
                    </i>
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
                    <span>
                    1563 Likes
                    </span>
                  </div>
                </div>
              </div>
                </ItemTemplate>
                </asp:Repeater>
  <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ResManagementConnectionString %>"
            SelectCommand="SELECT * FROM [article] where article_id=@id;">
      <SelectParameters>
          <asp:QueryStringParameter Name="id" QueryStringField="id" />
      </SelectParameters>
  </asp:SqlDataSource>
                <asp:Repeater ID="post" runat="server" DataSourceID="SqlDataSource2">
                    <ItemTemplate>
                        <div class="primary-content">
            <div class="post-open clearfix">
              <h2 class="entry-title">
                <%# Eval("article_title") %>
              </h2>
              <div class="post-thumbnail">
                <a href="images/9587828677_0c952c7410_c.jpg" class="image-link">
                <img src="images/9587828677_0c952c7410_c.jpg" title="Best Coffee Shops in Seattle" alt="Post Image">
                </a>
              </div>
              <div class="entry-content">
                <p>
                 <%# Eval("article_body") %>
                </p>
                
              </div>
              <div class="post-meta">
                <span class="author">
                Posted by
                <a href="#">Octavian Munteanu</a>
                </span>
                <span class="date">
                March 13th 2012
                </span>
                <span class="category">
                In
                <a href="#">Coffe</a>
                </span>
              </div>
            </div>
          </div>
                    </ItemTemplate>

                </asp:Repeater>
            </div>
           
            
          
        </div>

            </div>
        </div>
</asp:Content>

