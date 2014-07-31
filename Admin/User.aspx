<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="Admin_User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">

    <form id="form1" runat="server">
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="UserId" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="UserId" HeaderText="UserId" ReadOnly="True" SortExpression="UserId" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ResManagementConnectionString %>" InsertCommand="sp_Usertable_add" InsertCommandType="StoredProcedure" SelectCommand="sp_usertable_select" SelectCommandType="StoredProcedure">
            <InsertParameters>
                <asp:Parameter Name="UserId" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Contact" Type="String" />
                <asp:Parameter DbType="Date" Name="DOB" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter Name="id" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>

</asp:Content>

