<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="Blog_insert.aspx.cs" Inherits="User_Blog_insert" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" Runat="Server">

    <form id="form1" runat="server">
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="article_id" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="article_id" HeaderText="article_id" InsertVisible="False" ReadOnly="True" SortExpression="article_id" />
                <asp:BoundField DataField="article_title" HeaderText="article_title" SortExpression="article_title" />
                <asp:TemplateField HeaderText="article_body" SortExpression="article_body">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("article_body") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("article_body") %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("article_body") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="UserId" SortExpression="UserId">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Session["fName"] %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Session["fName"] %>'></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Session["fName"] %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ResManagementConnectionString %>" InsertCommand="article_add" InsertCommandType="StoredProcedure" SelectCommand="article_select" SelectCommandType="StoredProcedure">
            <InsertParameters>
                <asp:Parameter Name="article_title" Type="String" />
                <asp:Parameter Name="article_body" Type="String" />
                <asp:Parameter Name="UserId" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="article_id" QueryStringField="id" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>

</asp:Content>

