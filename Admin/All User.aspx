<%@ Page Language="C#" AutoEventWireup="true" CodeFile="All User.aspx.cs" Inherits="Admin_All_User" MasterPageFile="~/Admin/AdminMasterPage.master" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>


<asp:Content ContentPlaceHolderID="body" runat="server">
    <style type="text/css">
        .highlight {
            text-decoration: none;
            color: white;
            background: #307ECC;
        }
    </style>
    <script type="text/javascript">
        function BlockUI(elementID) {
            var prm = Sys.WebForms.PageRequestManager.getInstance();
            prm.add_beginRequest(function () {
                $("#" + elementID).block({
                    message: '<table align = "center"><tr><td>' +
             '<img src="images/loadingAnim.gif"/></td></tr></table>',
                    css: {},
                    overlayCSS: {
                        backgroundColor: '#000000', opacity: 0.6
                    }
                });
            });
            prm.add_endRequest(function () {
                $("#" + elementID).unblock();
            });
        }
        $(document).ready(function () {

            BlockUI("<%=pnlAddEdit.ClientID %>");
            $.blockUI.defaults.css = {};
        });
            function Hidepopup() {
                $find("popup").hide();
                return false;
            }
    </script>

    <form id="form1" runat="server">
        <div class="row-fluid">
            <div class="table-header">All Registered Users</div>

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
                        <asp:Button ID="btnSearch" runat="server" CssClass="btn btn-small btn-inverse" Text="Search" OnClick="btnSearch_Click" />
                        <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-small btn-danger" OnClick="btnClear_Click" />

                    </div>
                </div>
            </div>



            <asp:GridView ID="GridView1" CssClass="table table-striped table-bordered table-hover" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="UserId" DataSourceID="SqlDataSource1" AllowSorting="True">
                <Columns>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="" CssClass="icon-share-alt green"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="" CssClass="icon-remove red"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="" CssClass="green icon-pencil bigger-130"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton3" CssClass="icon-trash bigger-130 red" runat="server" CausesValidation="False" CommandName="Delete"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="User Id" SortExpression="UserId">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("UserId") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>

                            <asp:Label ID="Label1" runat="server" Text='<%# HighlightText(Eval("UserId").ToString()) %>'></asp:Label>

                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Password" SortExpression="Password">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Full Name" SortExpression="Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# HighlightText(Eval("Name").ToString()) %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Contact" SortExpression="Contact">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Contact") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Contact") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Date of Birth" SortExpression="DOB">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("DOB") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("DOB") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Gender" SortExpression="Gender">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Gender") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email" SortExpression="Email">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# HighlightText(Eval("Email").ToString()) %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>
            </asp:GridView>

        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ResManagementConnectionString %>" SelectCommand="sp_usertable_show" SelectCommandType="StoredProcedure" InsertCommand="sp_Usertable_add" InsertCommandType="StoredProcedure" DeleteCommand="ap_usertable_delete" DeleteCommandType="StoredProcedure" UpdateCommand="sp_usertable_edit" UpdateCommandType="StoredProcedure" FilterExpression="UserId LIKE '%{0}%'or name LIKE '%{0}%' or Email LIKE '%{0}%'">
            <DeleteParameters>
                <asp:Parameter Name="UserID" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="UserId" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Contact" Type="String" />
                <asp:Parameter DbType="Date" Name="DOB" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="UserId" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Contact" Type="String" />
                <asp:Parameter DbType="Date" Name="DOB" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
            </UpdateParameters>
            <FilterParameters>
                <asp:ControlParameter Name="UserId, Name" ControlID="txtSearch" PropertyName="Text" />
            </FilterParameters>
        </asp:SqlDataSource>

        <div class="hr hr-18 dotted hr-double">
        </div>
        <div class="row-fluid">
            <div class="table-header">All Registered Owners</div>
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

                        <asp:TextBox ID="TextBox7" runat="server" Style="width: 15%"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-small btn-inverse" Text="Search" OnClick="btnSearch_Click" />
                        <asp:Button ID="Button2" runat="server" Text="Clear" CssClass="btn btn-small btn-danger" OnClick="btnClear_Click" />

                    </div>
                </div>
            </div>
            <asp:SqlDataSource  ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ResManagementConnectionString %>" SelectCommand="sp_resturantownerdetails_viewall" SelectCommandType="StoredProcedure" DeleteCommand="ResturantOwnerDetails_Delete" DeleteCommandType="StoredProcedure" UpdateCommand="sp_ResturantOwnerDetails_Update" UpdateCommandType="StoredProcedure" >
                <DeleteParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ID" Type="Int32" />
                    <asp:Parameter Name="ResOPass" Type="String" />
                    <asp:Parameter Name="ResOName" Type="String" />
                    <asp:Parameter Name="ResOEmail" Type="String" />
                    <asp:Parameter Name="ResOAddress" Type="String" />
                    <asp:Parameter Name="ResOContact" Type="String" />
                    <asp:Parameter Name="ResOImg" Type="Object" />
                    <asp:Parameter Name="ResODes" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>

        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ResManagementConnectionString %>" SelectCommand="sp_resturantownerdetails_select" SelectCommandType="StoredProcedure" UpdateCommand="sp_ResturantOwnerDetails_Update" UpdateCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView2" Name="ResOId" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="ID" Type="Int32" />
                <asp:Parameter Name="ResOPass" Type="String" />
                <asp:Parameter Name="ResOName" Type="String" />
                <asp:Parameter Name="ResOEmail" Type="String" />
                <asp:Parameter Name="ResOAddress" Type="String" />
                <asp:Parameter Name="ResOContact" Type="String" />
                <asp:Parameter Name="ResODes" Type="String" />
                <asp:Parameter Name="RETURN_VALUE" Type="Int32" Direction="ReturnValue" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:GridView ID="GridView2" CssClass="table table-striped table-bordered table-hover" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="ResOId" DataSourceID="SqlDataSource2" AllowSorting="True">
                    <Columns>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton3_Click" CausesValidation="False" CommandName="Select" Text="Select"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Id" InsertVisible="False" SortExpression="ResOId">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("ResOId") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# HighlightText(Eval("ResOId").ToString()) %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Password" SortExpression="ResOPass">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ResOPass") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("ResOPass") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email" SortExpression="ResOEmail">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# HighlightText(Eval("ResOEmail").ToString()) %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("ResOEmail") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Address" SortExpression="ResOAddress">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ResOAddress") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("ResOAddress") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Contact" SortExpression="ResOContact">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("ResOContact") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("ResOContact") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>

                <asp:Panel ID="pnlAddEdit" runat="server">
                    <div class="modal-header no-padding">
									<div class="table-header">
										
										Update Restaurant Owner Details
									</div>
								</div>
                    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="ResOId" DataSourceID="SqlDataSource3" CssClass="table table-striped table-bordered table-hover" BackColor="White">
                        <Fields>
                            <asp:TemplateField HeaderText="Id" InsertVisible="False" SortExpression="ResOId">
                                <EditItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("ResOId") %>'></asp:Label>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("ResOId") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Name" SortExpression="ResOName">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ResOName") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ResOName") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("ResOName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Password" SortExpression="ResOPass">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ResOPass") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ResOPass") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("ResOPass") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Email" SortExpression="ResOEmail">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ResOEmail") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("ResOEmail") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("ResOEmail") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Address" SortExpression="ResOAddress">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("ResOAddress") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("ResOAddress") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("ResOAddress") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Contact" SortExpression="ResOContact">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("ResOContact") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("ResOContact") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("ResOContact") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Description" SortExpression="ResODes">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("ResODes") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <InsertItemTemplate>
                                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("ResODes") %>'></asp:TextBox>
                                </InsertItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("ResODes") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ShowHeader="False">
                                <EditItemTemplate>
                                    <asp:LinkButton OnClick="LinkButton3_Click" ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" OnClick="LinkButton3_Click" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                                    
                                    <asp:LinkButton ID="LinkButton4" runat="server" OnClientClick = "return Hidepopup()" Text="Close"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Fields>
                    </asp:DetailsView>

                </asp:Panel>
                <asp:LinkButton ID="lnkFake" runat="server"></asp:LinkButton>
                <cc1:ModalPopupExtender ID="popup" runat="server" DropShadow="false"
                    PopupControlID="pnlAddEdit" TargetControlID="lnkFake"
                    BackgroundCssClass="modalBackground">
                </cc1:ModalPopupExtender>
            </ContentTemplate>
            <Triggers>
                <%--<asp:AsyncPostBackTrigger ControlID="GridView3" />--%>
                <%--         <asp:AsyncPostBackTrigger ControlID="btnSave" />--%>
            </Triggers>
        </asp:UpdatePanel>

        <%--                <h4 class="pink">
								<i class="icon-hand-right icon-animated-hand-pointer blue"></i>
								<a href="#modal-table" role="button" class="green" data-toggle="modal"> Table Inside a Modal Box </a>
							
        </h4>

  
    
    <div class="hr hr-18 dotted hr-double"></div>	
    <div id="modal-table" class="modal hide fade" tabindex="-1">
								<div class="modal-header no-padding">
									<div class="table-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										All restaurant Owners
									</div>
								</div>
        
								<div class="modal-body no-padding">
									<div class="row-fluid">
										<table class="table table-striped table-bordered table-hover no-margin-bottom no-border-top">
                                            
										</table>
									<div class="modal-footer">
									<button class="btn btn-small btn-danger pull-left" data-dismiss="modal">
										<i class="icon-remove"></i>
										Close
									</button>

									<div class="pagination pull-right no-margin">
										<ul>
											<li class="prev disabled">
												<a href="#">
													<i class="icon-double-angle-left"></i>
												</a>
											</li>

											<li class="active">
												<a href="#">1</a>
											</li>

											<li>
												<a href="#">2</a>
											</li>

											<li>
												<a href="#">3</a>
											</li>

											<li class="next">
												<a href="#">
													<i class="icon-double-angle-right"></i>
												</a>
											</li>
										</ul>
									</div>
								</div>
                                    </div>
								</div>
      
								
							</div>	--%>
    </form>

</asp:Content>
