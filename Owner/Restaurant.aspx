<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Owner/AdminMasterPage.master" CodeFile="Restaurant.aspx.cs" Inherits="Admin_Restaurant" %>

<asp:Content ContentPlaceHolderID="body" runat="server">
    <div class="page-content">
        <div class="page-header position-relative">
            <h1>Add New Restaurant
            </h1>
        </div>
        <!--/.page-header-->

        <div class="row-fluid">
            <div class="span12">
                <!--PAGE CONTENT BEGINS-->

                <form class="form-horizontal" runat="server">
                    <div class="control-group">
                        <label class="control-label" for="form-field-1">Restaurant Name</label>

                        <div class="controls">
                            <asp:TextBox ID="ResName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator Text="Can not be Blank" ControlToValidate="ResName" ForeColor="Red" ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                        </div>

                    </div>
                    <div class="control-group">
                        <label class="control-label" for="form-field-1">Restaurant Website</label>

                        <div class="controls">
                            <asp:TextBox ID="website" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator Text="Can not be Blank" ControlToValidate="website" ForeColor="Red" ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="form-field-1">Restaurant Email</label>

                        <div class="controls">
                            <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator Text="Can not be Blank" ControlToValidate="Email" ForeColor="Red" ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator Text="Enter your email in correct format" ControlToValidate="Email" ForeColor="Red" ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="form-field-1">Restaurant Contact</label>

                        <div class="controls">
                            <asp:TextBox ID="contact" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator Text="Can not be Blank" ControlToValidate="contact" ForeColor="Red" ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="form-field-1">Picture</label>

                        
                            <div class="controls">
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="form-field-1">Description</label>

                            <div class="controls">
                                <asp:TextBox ID="description" runat="server" TextMode="MultiLine"></asp:TextBox>

                            </div>
                        </div>
                        <div class="hr">Location</div>

                        <div class="control-group">
                            <label class="control-label" for="form-field-1">Area</label>

                            <div class="controls">
                                <asp:TextBox ID="Area" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator Text="Can not be Blank" ControlToValidate="Area" ForeColor="Red" ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="form-field-1">House No </label>

                            <div class="controls">
                                <asp:TextBox ID="HouseNo" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator Text="Can not be Blank" ControlToValidate="HouseNo" ForeColor="Red" ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="form-field-1">Road No</label>

                            <div class="controls">
                                <asp:TextBox ID="RoadNo" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator Text="Can not be Blank" ControlToValidate="RoadNo" ForeColor="Red" ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="form-field-1">District</label>

                            <div class="controls">
                                <asp:TextBox ID="District" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator Text="Can not be Blank" ControlToValidate="District" ForeColor="Red" ID="RequiredFieldValidator8" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="form-field-1">Zip</label>

                            <div class="controls">
                                <asp:TextBox ID="Zip" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator Text="Can not be Blank" ControlToValidate="Zip" ForeColor="Red" ID="RequiredFieldValidator9" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
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
            <!--/.span-->
        </div>
        <!--/.row-fluid-->
    </div>
    <!--/.page-content-->

</asp:Content>
