<%@ Page Language="C#" MasterPageFile="~/Owner/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="User_Profile" %>

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


                                    <div class="span9">
                                        <div class="space-12">
                                       
                                             </div>
                                        <div class="profile-user-info profile-user-info-striped">
                                           
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ResManagementConnectionString %>" SelectCommand="sp_ResturantOwnerDetails_select" SelectCommandType="StoredProcedure" UpdateCommand="sp_ResturantOwnerDetails_Update" UpdateCommandType="StoredProcedure">
                                                <SelectParameters>
                                                    <asp:CookieParameter CookieName="UserName" Name="ResOId" Type="Int32" />
                                                </SelectParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="ID" Type="Int32" />
                                                    <asp:Parameter Name="ResOPass" Type="String" />
                                                    <asp:Parameter Name="ResOName" Type="String" />
                                                    <asp:Parameter Name="ResOEmail" Type="String" />
                                                    <asp:Parameter Name="ResOAddress" Type="String" />
                                                    <asp:Parameter Name="ResOContact" Type="String" />
                                                    <asp:Parameter Name="ResODes" Type="String" />
                                                    <asp:Parameter Name="imgpath" Type="String" />
                                                </UpdateParameters>
                                            </asp:SqlDataSource>
                                            <br />

                                            <asp:ListView ID="ListView1" runat="server" DataKeyNames="ResOId" DataSourceID="SqlDataSource1" GroupItemCount="3">
                                                <AlternatingItemTemplate>
                                                    <td runat="server" style="">ResOId:
                                                        <asp:Label ID="ResOIdLabel" runat="server" Text='<%# Eval("ResOId") %>' />
                                                        <br />
                                                        ResOName:
                                                        <asp:Label ID="ResONameLabel" runat="server" Text='<%# Eval("ResOName") %>' />
                                                        <br />
                                                        ResOPass:
                                                        <asp:Label ID="ResOPassLabel" runat="server" Text='<%# Eval("ResOPass") %>' />
                                                        <br />
                                                        ResOEmail:
                                                        <asp:Label ID="ResOEmailLabel" runat="server" Text='<%# Eval("ResOEmail") %>' />
                                                        <br />
                                                        ResOAddress:
                                                        <asp:Label ID="ResOAddressLabel" runat="server" Text='<%# Eval("ResOAddress") %>' />
                                                        <br />
                                                        ResOContact:
                                                        <asp:Label ID="ResOContactLabel" runat="server" Text='<%# Eval("ResOContact") %>' />
                                                        <br />
                                                        ResODes:
                                                        <asp:Label ID="ResODesLabel" runat="server" Text='<%# Eval("ResODes") %>' />
                                                        <br />
                                                        imgpath:
                                                        <asp:Label ID="imgpathLabel" runat="server" Text='<%# Eval("imgpath") %>' />
                                                        <br />
                                                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                                        <br />
                                                    </td>
                                                </AlternatingItemTemplate>
                                                <EditItemTemplate>
                                                    <td runat="server" style="">ResOId:
                                                        <asp:Label ID="ResOIdLabel1" runat="server" Text='<%# Eval("ResOId") %>' />
                                                        <br />
                                                        ResOName:
                                                        <asp:TextBox ID="ResONameTextBox" runat="server" Text='<%# Bind("ResOName") %>' />
                                                        <br />
                                                        ResOPass:
                                                        <asp:TextBox ID="ResOPassTextBox" runat="server" Text='<%# Bind("ResOPass") %>' />
                                                        <br />
                                                        ResOEmail:
                                                        <asp:TextBox ID="ResOEmailTextBox" runat="server" Text='<%# Bind("ResOEmail") %>' />
                                                        <br />
                                                        ResOAddress:
                                                        <asp:TextBox ID="ResOAddressTextBox" runat="server" Text='<%# Bind("ResOAddress") %>' />
                                                        <br />
                                                        ResOContact:
                                                        <asp:TextBox ID="ResOContactTextBox" runat="server" Text='<%# Bind("ResOContact") %>' />
                                                        <br />
                                                        ResODes:
                                                        <asp:TextBox ID="ResODesTextBox" runat="server" Text='<%# Bind("ResODes") %>' />
                                                        <br />
                                                        imgpath:
                                                        <asp:TextBox ID="imgpathTextBox" runat="server" Text='<%# Bind("imgpath") %>' />
                                                        <br />
                                                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                                        <br />
                                                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                                        <br />
                                                    </td>
                                                </EditItemTemplate>
                                                <EmptyDataTemplate>
                                                    <table runat="server" style="">
                                                        <tr>
                                                            <td>No data was returned.</td>
                                                        </tr>
                                                    </table>
                                                </EmptyDataTemplate>
                                                <EmptyItemTemplate>
                                                    <td runat="server" />
                                                </EmptyItemTemplate>
                                                <GroupTemplate>
                                                    <tr id="itemPlaceholderContainer" runat="server">
                                                        <td id="itemPlaceholder" runat="server"></td>
                                                    </tr>
                                                </GroupTemplate>
                                                <InsertItemTemplate>
                                                    <td runat="server" style="">ResOName:
                                                        <asp:TextBox ID="ResONameTextBox" runat="server" Text='<%# Bind("ResOName") %>' />
                                                        <br />
                                                        ResOPass:
                                                        <asp:TextBox ID="ResOPassTextBox" runat="server" Text='<%# Bind("ResOPass") %>' />
                                                        <br />
                                                        ResOEmail:
                                                        <asp:TextBox ID="ResOEmailTextBox" runat="server" Text='<%# Bind("ResOEmail") %>' />
                                                        <br />
                                                        ResOAddress:
                                                        <asp:TextBox ID="ResOAddressTextBox" runat="server" Text='<%# Bind("ResOAddress") %>' />
                                                        <br />
                                                        ResOContact:
                                                        <asp:TextBox ID="ResOContactTextBox" runat="server" Text='<%# Bind("ResOContact") %>' />
                                                        <br />
                                                        ResODes:
                                                        <asp:TextBox ID="ResODesTextBox" runat="server" Text='<%# Bind("ResODes") %>' />
                                                        <br />
                                                        imgpath:
                                                        <asp:TextBox ID="imgpathTextBox" runat="server" Text='<%# Bind("imgpath") %>' />
                                                        <br />
                                                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                                        <br />
                                                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                                        <br />
                                                    </td>
                                                </InsertItemTemplate>
                                                <ItemTemplate>
                                                    <td>
                                                        <tr>
                                                            <div class="profile-info-row">
                                                                <span class="profile-picture">
                                                                    <img src="<%# Eval("imgpath") %>" style="float: left" />
                                                                </span>
                                                            </div>
                                                        </tr>
                                                        </td>
                                                    <td>
                                                        <tr>
                                                            <div class="profile-user-info profile-user-info-striped">
                                                                <div class="profile-info-row">
                                                                    <div class="profile-info-name">Id</div>

                                                                    <div class="profile-info-value">
                                                                        <span class="editable" id="login">
                                                                            <asp:Label ID="ResOIdLabel" runat="server" Text='<%# Eval("ResOId") %>' /></span>
                                                                    </div>
                                                                </div>


                                                                <div class="profile-info-row">
                                                                    <div class="profile-info-name">Full Name</div>

                                                                    <div class="profile-info-value">
                                                                        <span class="editable" id="Span1">
                                                                            <asp:Label ID="ResONameLabel" runat="server" Text='<%# Eval("ResOName") %>' />

                                                                        </span>
                                                                    </div>
                                                                </div>

                                                                <div class="profile-info-row">
                                                                    <div class="profile-info-name">Password</div>

                                                                    <div class="profile-info-value">
                                                                        <span class="editable" id="Span2">
                                                                            <asp:Label ID="ResOPassLabel" runat="server" Text='<%# Eval("ResOPass") %>' />

                                                                        </span>
                                                                    </div>
                                                                </div>


                                                                <div class="profile-info-row">
                                                                    <div class="profile-info-name">Email</div>

                                                                    <div class="profile-info-value">
                                                                        <span class="editable" id="Span3">
                                                                            <asp:Label ID="ResOEmailLabel" runat="server" Text='<%# Eval("ResOEmail") %>' />

                                                                        </span>
                                                                    </div>
                                                                </div>

                                                                <div class="profile-info-row">
                                                                    <div class="profile-info-name">Address</div>

                                                                    <div class="profile-info-value">
                                                                        <span class="editable" id="Span4">
                                                                            <asp:Label ID="ResOAddressLabel" runat="server" Text='<%# Eval("ResOAddress") %>' />

                                                                        </span>
                                                                    </div>
                                                                </div>

                                                                <div class="profile-info-row">
                                                                    <div class="profile-info-name">Contact</div>

                                                                    <div class="profile-info-value">
                                                                        <span class="editable" id="Span5">
                                                                            <asp:Label ID="ResOContactLabel" runat="server" Text='<%# Eval("ResOContact") %>' />

                                                                        </span>
                                                                    </div>
                                                                </div>

                                                                <div class="profile-info-row">
                                                                    <div class="profile-info-name">Description</div>

                                                                    <div class="profile-info-value">
                                                                        <span class="editable" id="Span6">
                                                                            <asp:Label ID="ResODesLabel" runat="server" Text='<%# Eval("ResODes") %>' />

                                                                        </span>
                                                                    </div>
                                                                </div>
                                                        </tr>
                                                    </td>
                                                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                                    <br />
                                                    </div>

                                                </ItemTemplate>
                                                <LayoutTemplate>
                                                    <table runat="server">
                                                        <tr runat="server">
                                                            <td runat="server">
                                                                <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                                                                    <tr id="groupPlaceholder" runat="server">
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                        <tr runat="server">
                                                            <td runat="server" style=""></td>
                                                        </tr>
                                                    </table>
                                                </LayoutTemplate>
                                                <SelectedItemTemplate>
                                                    <td runat="server" style="">ResOId:
                                                        <asp:Label ID="ResOIdLabel" runat="server" Text='<%# Eval("ResOId") %>' />
                                                        <br />
                                                        ResOName:
                                                        <asp:Label ID="ResONameLabel" runat="server" Text='<%# Eval("ResOName") %>' />
                                                        <br />
                                                        ResOPass:
                                                        <asp:Label ID="ResOPassLabel" runat="server" Text='<%# Eval("ResOPass") %>' />
                                                        <br />
                                                        ResOEmail:
                                                        <asp:Label ID="ResOEmailLabel" runat="server" Text='<%# Eval("ResOEmail") %>' />
                                                        <br />
                                                        ResOAddress:
                                                        <asp:Label ID="ResOAddressLabel" runat="server" Text='<%# Eval("ResOAddress") %>' />
                                                        <br />
                                                        ResOContact:
                                                        <asp:Label ID="ResOContactLabel" runat="server" Text='<%# Eval("ResOContact") %>' />
                                                        <br />
                                                        ResODes:
                                                        <asp:Label ID="ResODesLabel" runat="server" Text='<%# Eval("ResODes") %>' />
                                                        <br />
                                                        imgpath:
                                                        <asp:Label ID="imgpathLabel" runat="server" Text='<%# Eval("imgpath") %>' />
                                                        <br />
                                                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                                                        <br />
                                                    </td>
                                                </SelectedItemTemplate>
                                            </asp:ListView>
                                        </div>
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
