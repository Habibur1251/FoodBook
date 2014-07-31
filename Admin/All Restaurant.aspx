<%@ Page MasterPageFile="~/Admin/AdminMasterPage.master" Language="C#" AutoEventWireup="true" CodeFile="All Restaurant.aspx.cs" Inherits="Admin_All_Restaurant" %>

<asp:Content ContentPlaceHolderID="body" runat="server">
<form id="form1" runat="server">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ResId" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:TemplateField ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text="Select"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="ResId" HeaderText="ResId" InsertVisible="False" ReadOnly="True" SortExpression="ResId" />
                    <asp:BoundField DataField="ResName" HeaderText="ResName" SortExpression="ResName" />
                    <asp:TemplateField HeaderText="ResOId" SortExpression="ResOId">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ResOId") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("ResOId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="website" HeaderText="website" SortExpression="website" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Area" HeaderText="Area" SortExpression="Area" />
                    <asp:BoundField DataField="contact" HeaderText="contact" SortExpression="contact" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ResManagementConnectionString %>" SelectCommand="SELECT [ResId], [ResName], [ResOId], [website], [Email], [Area], [contact] FROM [ResturantList]"></asp:SqlDataSource>
            <br />
      </form>

    </asp:Content>