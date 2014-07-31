<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Owners.aspx.cs" Inherits="Admin_Owners" %>

<asp:Content ContentPlaceHolderID="body" runat="server">
    <div>
        <div class="page-content">
            <div class="page-header position-relative">
                <h1>Add New Restaurant Owner
                </h1>
            </div>
            <!--/.page-header-->
            <div class="row-fluid">
                <div class="span12">
                    <form id="Form1" class="form-horizontal" runat="server">
                        <asp:ScriptManager ID="sm1" runat="server">
                            <Scripts>
                                <asp:ScriptReference Name="jquery" />
                            </Scripts>
                        </asp:ScriptManager>

                        <div class="control-group">
                            <label class="control-label" for="form-field-1">Owner Name</label>

                            <div class="controls">
                                <asp:TextBox ID="ResOName" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="ResOName" ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" Text="Enter your full name" ForeColor="Red" CssClass="input-xlarge">
       
                                </asp:RequiredFieldValidator>
                            </div>

                        </div>

                        <div class="control-group">
                            <label class="control-label" for="form-field-1">Password</label>

                            <div class="controls">
                                <asp:TextBox ID="ResOPass" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="ResOPass" ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" Text="Enter your Password" ForeColor="Red" CssClass="input-xlarge">
       
                                </asp:RequiredFieldValidator>
                            </div>

                        </div>
                        <div class="control-group">
                            <label class="control-label" for="form-field-1">Retype Password</label>

                            <div class="controls">
                                <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="TextBox1" ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" Text="Enter your Password" ForeColor="Red" CssClass="input-xlarge">
       
                                </asp:RequiredFieldValidator>
                                <asp:CompareValidator Text="Password do not match" CssClass="input-xlarge" ID="CompareValidator1" ControlToValidate="TextBox1" ControlToCompare="ResOPass" runat="server" ErrorMessage="CompareValidator" ForeColor="Red" Display="Dynamic"></asp:CompareValidator>
                            </div>

                        </div>

                        <div class="control-group">
                            <label class="control-label" for="form-field-1">Email</label>

                            <div class="controls">
                                <asp:TextBox ID="ResOEmail" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="ResOEmail" ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" Text="Enter your Email" ForeColor="Red" CssClass="input-xlarge">
       
                                </asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator
                                    ForeColor="Red"
                                    ID="RegularExpressionValidator1"
                                    runat="server"
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                    ControlToValidate="ResOEmail"
                                    ErrorMessage="Input valid email address!">  
                                </asp:RegularExpressionValidator>
                            </div>

                        </div>
                        <div class="control-group">
                            <label class="control-label" for="form-field-1">Address</label>

                            <div class="controls">
                                <asp:TextBox ID="ResOAddress" runat="server" TextMode="MultiLine"></asp:TextBox>

                            </div>

                        </div>
                        <div class="control-group">
                            <label class="control-label" for="form-field-1">Contact</label>

                            <div class="controls">
                                <asp:TextBox ID="ResOContact" runat="server"></asp:TextBox>

                            </div>

                        </div>
                        <div class="control-group">
                            <label class="control-label" for="form-field-1">Description</label>

                            <div class="controls">
                                <asp:TextBox ID="ResODes" runat="server" TextMode="MultiLine"></asp:TextBox>

                            </div>

                        </div>
                        <div class="control-group">
                            <label class="control-label" for="form-field-1">Upload Image</label>

                            <div class="controls">
                                <asp:FileUpload ID="FileUpload1" runat="server" />

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
    </div>
</asp:Content>
