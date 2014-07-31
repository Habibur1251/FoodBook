<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Image.aspx.cs" Inherits="Image" %>

<%@ Register Src="~/Controller/ImageUp.ascx" TagName="links" TagPrefix="uc1" %>
<html>
<body>
    <div>
        <form runat="server" id="form1">
            <uc1:links ID="CSS" runat="server"  />
            
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="ResOId">
                <Columns>
                    <asp:BoundField DataField="ResOName" HeaderText="ResOName" SortExpression="ResOName" />
                    <asp:TemplateField HeaderText="imgpath" SortExpression="imgpath">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("imgpath") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <img src="<%# Eval("imgpath") %>" />
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("imgpath") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="ResOId" HeaderText="ResOId" InsertVisible="False" ReadOnly="True" SortExpression="ResOId" />
                    
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ResManagementConnectionString %>" SelectCommand="SELECT [ResOName], [imgpath], [ResOId] FROM [ResturantOwnerDetails] WHERE ([ResOId] = @ResOId)">
                <SelectParameters>
                    <asp:CookieParameter CookieName="UserName" Name="ResOId" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>


            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:Button OnClick="Button1_Click" ID="Button1" runat="server" Text="Button" />
            <asp:Image ID="imgpath" runat="server" />
        </form>
    </div>

</body>

</html>
