<%@ Page MasterPageFile="~/Owner/AdminMasterPage.master" Language="C#" AutoEventWireup="true" CodeFile="All Restaurant.aspx.cs" Inherits="Admin_All_Restaurant" %>

<asp:Content ContentPlaceHolderID="body" runat="server">
<form id="form1" runat="server">
    <div class="row-fluid">
            <div class="table-header">All Restaurants</div>

            <div class="widget-box">
                <div class="widget-header">
                    <h5>Search Box</h5>

                    <div class="widget-toolbar">
                        <a href="#" data-action="collapse">
                            <i class="icon-chevron-up"></i>
                        </a>
                    </div>
                </div>

                <div class="widget-body">
                    <div class="widget-main">

                        <asp:TextBox ID="txtSearch" runat="server" Style="width: 15%"></asp:TextBox>
                        <asp:Button ID="btnSearch" runat="server" CssClass="btn btn-small btn-inverse" Text="Search" />
                        <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-small btn-danger" />

                    </div>
                </div>
            </div>
            <asp:GridView CssClass="table table-striped table-bordered table-hover" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ResId" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text="Select" OnClick="LinkButton1_Click"></asp:LinkButton>
                            <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClick="LinkButton1_Click"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Id" InsertVisible="False" SortExpression="ResId">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("ResId") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("ResId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name" SortExpression="ResName">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ResName") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("ResName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Owner Id" SortExpression="ResOId">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ResOId") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("ResOId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Website" SortExpression="website">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("website") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("website") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email" SortExpression="Email">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Area" SortExpression="Area">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Area") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("Area") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Contact" SortExpression="contact">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("contact") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("contact") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Image" SortExpression="imgpath">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("imgpath") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
                            <img src='<%# Eval("imgpath")%>' runat="server" id="img2" style="height:50px; width:50px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ResManagementConnectionString %>" SelectCommand="SELECT [ResId], [ResName], [ResOId], [website], [Email], [Area], [contact], [imgpath] FROM [ResturantList] WHERE ([ResOId] = @ResOId)" DeleteCommand="sp_ResturantList_Delete" DeleteCommandType="StoredProcedure">
                <DeleteParameters>
                    <asp:Parameter Name="ResId" Type="Int32" />
                </DeleteParameters>
                <SelectParameters>
                    <asp:CookieParameter CookieName="UserName" Name="ResOId" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
     
    
    
            <br />
            <br />
            <asp:DetailsView CssClass="table table-striped table-bordered table-hover" ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ResId" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="ResId" HeaderText="ResId" InsertVisible="False" ReadOnly="True" SortExpression="ResId" />
                    <asp:BoundField DataField="ResName" HeaderText="ResName" SortExpression="ResName" />
                    <asp:BoundField DataField="Area" HeaderText="Area" SortExpression="Area" />
                    <asp:BoundField DataField="HouseNo" HeaderText="HouseNo" SortExpression="HouseNo" />
                    <asp:BoundField DataField="RoadNo" HeaderText="RoadNo" SortExpression="RoadNo" />
                    <asp:BoundField DataField="District" HeaderText="District" SortExpression="District" />
                    <asp:BoundField DataField="Zip" HeaderText="Zip" SortExpression="Zip" />
                    <asp:BoundField DataField="imgpath" HeaderText="imgpath" SortExpression="imgpath" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="contact" HeaderText="contact" SortExpression="contact" />
                    <asp:CommandField ShowEditButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ResManagementConnectionString %>" SelectCommand="SELECT [ResId], [ResName], [Area], [HouseNo], [RoadNo], [District], [Zip], [imgpath], [Email], [contact] FROM [ResturantList] WHERE ([ResId] = @ResId)" UpdateCommand="sp_ResturantList_Edit" UpdateCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="ResId" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ResId" Type="Int32" />
                    <asp:Parameter Name="ResName" Type="String" />
                    <asp:Parameter Name="ResOId" Type="Int32" />
                    <asp:Parameter Name="website" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="contact" Type="String" />
                    <asp:Parameter Name="description" Type="String" />
                    <asp:Parameter Name="Area" Type="String" />
                    <asp:Parameter Name="HouseNo" Type="String" />
                    <asp:Parameter Name="RoadNo" Type="String" />
                    <asp:Parameter Name="District" Type="String" />
                    <asp:Parameter Name="Zip" Type="String" />
                    <asp:Parameter Name="imgpath" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
     
    
    
    </div>
         </form>
    
    </asp:Content>