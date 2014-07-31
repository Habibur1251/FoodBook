<%@ Page Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="User_Profile" %>

<asp:Content ContentPlaceHolderID="body" runat="server">
    <form id="form1" runat="server">
        <div class="page-content">
            <div id="user-profile-2" class="user-profile row-fluid">
                <div class="tabbable">
                    <ul class="nav nav-tabs padding-18">
                        <li class="active">
                            <a data-toggle="tab" href="#home">
                                <i class="green icon-user bigger-120"></i>
                                Profile
                            </a>
                        </li>


                    </ul>
                    <div class="tab-content no-border padding-24">
                        <div id="home" class="tab-pane in active">
                            <div>
                                <div id="user-profile-1" class="user-profile row-fluid">
                                    <div class="span3 center">
                                        <div>
                                            <span class="profile-picture">

                                                <img id="avatar" class="editable" alt="Alex's Avatar" src="../<%:Session["imagepath"] %>" />
                                            </span>

                                            <div class="space-4"></div>

                                            <div class="width-80 label label-info label-large arrowed-in arrowed-in-right">
                                                <div class="inline position-relative">
                                                    <a href="#" class="user-title-label dropdown-toggle" data-toggle="dropdown">&nbsp;
														<span class="white middle bigger-120">
                                                            <asp:Label ID="Label1" runat="server"><%:Session["fName"] %></asp:Label></span>
                                                    </a>

                                                    <ul class="align-left dropdown-menu dropdown-caret dropdown-lighter">
                                                        <li class="nav-header">Change Status </li>

                                                        <li>
                                                            <a href="#">
                                                                <i class="icon-circle green"></i>
                                                                &nbsp;
																<span class="green">Available</span>
                                                            </a>
                                                        </li>

                                                        <li>
                                                            <a href="#">
                                                                <i class="icon-circle red"></i>
                                                                &nbsp;
																<span class="red">Busy</span>
                                                            </a>
                                                        </li>

                                                        <li>
                                                            <a href="#">
                                                                <i class="icon-circle grey"></i>
                                                                &nbsp;
																<span class="grey">Invisible</span>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="space-6"></div>

                                    </div>

                                    <div class="span9">
                                        <div class="space-12">
                                        </div>
                                        <div class="profile-user-info profile-user-info-striped">
                                            <asp:Repeater ID="repeater1" runat="server" DataSourceID="SqlDataSource1">
                                                <ItemTemplate>
                                                    <div class="profile-info-row">
                                                        <div class="profile-info-name">Full Name </div>

                                                        <div class="profile-info-value">
                                                            <span class="editable" id="Span1"><%# Eval("Name") %></span>
                                                        </div>
                                                    </div>
                                                    <div class="profile-info-row">
                                                        <div class="profile-info-name">Username </div>

                                                        <div class="profile-info-value">
                                                            <span class="editable" id="username2"><%# Eval("UserId") %></span>
                                                        </div>
                                                    </div>

                                                    <div class="profile-info-row">
                                                        <div class="profile-info-name">Email</div>

                                                        <div class="profile-info-value">
                                                            <span class="editable" id="username3"><%# Eval("Email") %></span>
                                                        </div>
                                                    </div>
                                                    
                                                    <div class="profile-info-row">
                                                        <div class="profile-info-name">Contact </div>

                                                        <div class="profile-info-value">
                                                            <span class="editable" id="Span2"><%# Eval("Contact") %></span>
                                                        </div>
                                                    </div>
                                                   
                                                    </ItemTemplate>
                                                 </asp:Repeater>
                                           
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ResManagementConnectionString %>" SelectCommand="sp_usertable_select" SelectCommandType="StoredProcedure" UpdateCommand="sp_usertable_edit" UpdateCommandType="StoredProcedure">
                                                <SelectParameters>
                                                    <asp:CookieParameter CookieName="UserName" Name="id" Type="String" />
                                                </SelectParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="UserId" Type="String" />
                                                    <asp:Parameter Name="Password" Type="String" />
                                                    <asp:Parameter Name="Name" Type="String" />
                                                    <asp:Parameter Name="Contact" Type="String" />
                                                    <asp:Parameter DbType="Date" Name="DOB" />
                                                    <asp:Parameter Name="Gender" Type="String" />
                                                    <asp:Parameter Name="Email" Type="String" />
                                                    <asp:Parameter Name="imgpath" Type="String" />
                                                    <asp:Parameter Name="area" Type="String" />
                                                </UpdateParameters>
                                            </asp:SqlDataSource>
                                            <br />
                                            <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="SqlDataSource1" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="UserId">
                                                <Fields>

                                                    <asp:TemplateField HeaderText="User Id" SortExpression="UserId">

                                                        <EditItemTemplate>
                                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("UserId") %>'></asp:Label>
                                                        </EditItemTemplate>
                                                        <InsertItemTemplate>
                                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("UserId") %>'></asp:TextBox>
                                                        </InsertItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label CssClass="profile-info-value" ID="Label1" runat="server" Text='<%# Bind("UserId") %>'></asp:Label>
                                                        </ItemTemplate>

                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Password" SortExpression="Password">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <InsertItemTemplate>
                                                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                                                        </InsertItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Name" SortExpression="Name">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <InsertItemTemplate>
                                                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                                                        </InsertItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Contact" SortExpression="Contact">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Contact") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <InsertItemTemplate>
                                                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Contact") %>'></asp:TextBox>
                                                        </InsertItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Contact") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="Email" SortExpression="Email">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <InsertItemTemplate>
                                                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                                                        </InsertItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                    <asp:TemplateField HeaderText="imgpath" SortExpression="imgpath">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("imgpath") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <InsertItemTemplate>
                                                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("imgpath") %>'></asp:TextBox>
                                                        </InsertItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("imgpath") %>'></asp:Label>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>

                                                    <asp:TemplateField ShowHeader="False">
                                                        <EditItemTemplate>
                                                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                                                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Fields>
                                            </asp:DetailsView>
                                        </div>
                                     <asp:Button ID="Button2" runat="server" Text="Edit" OnClick="Button2_Click" CssClass="pull-left btn btn-small btn-primary" Width="50px" />
                                         </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
