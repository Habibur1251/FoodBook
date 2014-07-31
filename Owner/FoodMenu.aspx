<%@ Page Title="" Language="C#" MasterPageFile="~/Owner/AdminMasterPage.master" AutoEventWireup="true" CodeFile="FoodMenu.aspx.cs" Inherits="Admin_FoodMenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="Server">
    <div class="page-content">
        <div class="page-header position-relative">
            <h1>Add New Food Item
            </h1>
        </div>
        <!--/.page-header-->

        <div class="row-fluid">
            <div class="span12">
                <form id="Form1" class="form-horizontal" runat="server">


                    <div class="control-group">
                        <label class="control-label" for="form-field-1">Food Name</label>

                        <div class="controls">
                            <asp:TextBox ID="FoodName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator Text="Can not be Blank" ControlToValidate="FoodName" ForeColor="Red" ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator">

                            </asp:RequiredFieldValidator>
                        </div>

                    </div>
                    <div class="control-group">
                        <label class="control-label" for="form-field-1">Restaurant Name</label>

                        <div class="controls">
                            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <asp:DropDownList  ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="ResName" DataValueField="ResName">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ResManagementConnectionString %>" SelectCommand="sp_restaurantList_dropdown" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:CookieParameter CookieName="UserName" Name="ResOId" Type="Int32" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <asp:Label ID="label" runat="server" Visible="false"></asp:Label>

                                    <asp:RequiredFieldValidator Text="Can not be Blank" ControlToValidate="DropDownList1" ForeColor="Red" ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator">

                                    </asp:RequiredFieldValidator>
                                </ContentTemplate>

                            </asp:UpdatePanel>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ResManagementConnectionString %>" SelectCommand="SELECT DISTINCT [ResId],[ResName], [website], [Email], [contact], [description], [Area], [imgpath] FROM [ResturantList] WHERE ([ResOId]=@ResOId) ">
                                <SelectParameters>
                                    <asp:CookieParameter CookieName="UserName" Name="ResOId" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>

                    </div>
                    <div class="control-group">
                        <label class="control-label" for="form-field-1">Category</label>

                        <div class="controls">

                            <asp:DropDownList ID="DropDownList2" runat="server">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>Appertizers</asp:ListItem>
                                <asp:ListItem>Salads</asp:ListItem>
                                <asp:ListItem>Chicken Items</asp:ListItem>
                                <asp:ListItem>Pasta</asp:ListItem>
                                <asp:ListItem>Pizza</asp:ListItem>
                                <asp:ListItem>Burgers and sandwiches</asp:ListItem>
                                <asp:ListItem>Beverages</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator Text="Can not be Blank" ControlToValidate="DropDownList2" ForeColor="Red" ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator">

                            </asp:RequiredFieldValidator>
                        </div>

                    </div>
                    <div class="control-group">
                        <label class="control-label" for="form-field-1">Price</label>

                        <div class="controls">
                            <asp:TextBox ID="price" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator Text="Can not be Blank" ControlToValidate="price" ForeColor="Red" ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator">

                            </asp:RequiredFieldValidator>
                        </div>

                    </div>
                    <div class="control-group">
                        <label class="control-label" for="form-field-1">Description</label>

                        <div class="controls">
                            <asp:TextBox ID="description" TextMode="MultiLine" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator Text="Can not be Blank" ControlToValidate="description" ForeColor="Red" ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator">

                            </asp:RequiredFieldValidator>
                        </div>

                    </div>
                    <div class="control-group">
                        <label class="control-label" for="form-field-1">Upload Image</label>

                        <div class="controls">
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                            <asp:RequiredFieldValidator Text="Can not be Blank" ControlToValidate="FileUpload1" ForeColor="Red" ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator">

                            </asp:RequiredFieldValidator>
                        </div>

                    </div>


                    <div class="space-4"></div>



                    <div class="form-actions">


                        <asp:Button ID="submit" CssClass="btn btn-info" runat="server" Text="Submit" OnClick="submit_Click" />


                        &nbsp; &nbsp; &nbsp;
                                    <asp:Button ID="reset" runat="server" Text="Reset" CssClass="btn" OnClick="reset_Click" />


                    </div>

                    <div class="hr"></div>

                </form>
            </div>
        </div>
    </div>
</asp:Content>

