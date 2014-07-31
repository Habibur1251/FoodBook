<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Food.aspx.cs" Inherits="Admin_Food" MasterPageFile="~/Owner/AdminMasterPage.master" %>

<asp:Content ContentPlaceHolderID="body" runat="server">

    <form id="form1" runat="server">
        <asp:GridView CssClass="table table-striped table-bordered table-hover" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="FoodId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="FoodId" HeaderText="FoodId" InsertVisible="False" ReadOnly="True" SortExpression="FoodId" />
                <asp:BoundField DataField="FoodName" HeaderText="FoodName" SortExpression="FoodName" />
                <asp:BoundField DataField="ResName" HeaderText="ResName" SortExpression="ResName" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                <asp:TemplateField HeaderText="imgpath" SortExpression="imgpath">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("imgpath") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <img src='<%# Eval("imgpath") %>' runat="server" id="img2" style="height:50px; width:50px" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ResManagementConnectionString %>" SelectCommand="SELECT * FROM [FoodTable] WHERE ResId IN (SELECT ResId FROM dbo.ResturantList WHERE ResOId=@ResOID);">

             <SelectParameters>
                    <asp:CookieParameter CookieName="UserName" Name="ResOId" Type="Int32" />
                </SelectParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>