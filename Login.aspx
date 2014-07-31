<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <!--
		Charisma v1.0.0

		Copyright 2012 Muhammad Usman
		Licensed under the Apache License v2.0
		http://www.apache.org/licenses/LICENSE-2.0

		http://usman.it
		http://twitter.com/halalit_usman
	-->
    <meta charset="utf-8">
    <title>foodbook | Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Charisma, a fully featured, responsive, HTML5, Bootstrap admin template.">
    <meta name="author" content="Muhammad Usman">

    <!-- The styles -->
    <link id="bs-css" href="Admin/css/bootstrap-cerulean.css" rel="stylesheet">
    <style type="text/css">
        body {
            padding-bottom: 40px;
        }

        .sidebar-nav {
            padding: 9px 0;
        }
    </style>
    <link href="Admin/css/bootstrap-responsive.css" rel="stylesheet">
    <link href="Admin/css/charisma-app.css" rel="stylesheet">
    <link href="Admin/css/jquery-ui-1.8.21.custom.css" rel="stylesheet">
    <link href='Admin/css/fullcalendar.css' rel='stylesheet'>
    <link href='Admin/css/fullcalendar.print.css' rel='stylesheet' media='print'>
    <link href='Admin/css/chosen.css' rel='stylesheet'>
    <link href='Admin/css/uniform.default.css' rel='stylesheet'>
    <link href='Admin/css/colorbox.css' rel='stylesheet'>
    <link href='Admin/css/jquery.cleditor.css' rel='stylesheet'>
    <link href='Admin/css/jquery.noty.css' rel='stylesheet'>
    <link href='Admin/css/noty_theme_default.css' rel='stylesheet'>
    <link href='Admin/css/elfinder.min.css' rel='stylesheet'>
    <link href='Admin/css/elfinder.theme.css' rel='stylesheet'>
    <link href='Admin/css/jquery.iphone.toggle.css' rel='stylesheet'>
    <link href='Admin/css/opa-icons.css' rel='stylesheet'>
    <link href='Admin/css/uploadify.css' rel='stylesheet'>

    <!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
	  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->

    <!-- The fav icon -->
    <link rel="shortcut icon" href="img/favicon.ico">
</head>

<body>
    <div class="container-fluid">
        <div>
            <p class="center span5">
                <a href="Registration.aspx" style="float:right;">Sign up</a>

            </p>
        </div>
        <div class="row-fluid">

            <div class="row-fluid">
                <div class="span12 center login-header">
                    <h2>Welcome to foodbook</h2>
                </div>
                <!--/span-->
            </div>
            <!--/row-->

            <div class="row-fluid">
                <div class="well span5 center login-box">
                    <div class="alert alert-info">
                        Please login with your Username and Password.
				
                    </div>
                    <form class="form-horizontal" runat="server">
                        <fieldset>
                            <div class="input-prepend" title="Username" data-rel="tooltip">
                                <span class="add-on"><i class="icon-user"></i></span>
                                <asp:TextBox CssClass="input-large span10" ID="user" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="user" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter User name">

                                </asp:RequiredFieldValidator>
                            </div>
                            <div class="clearfix"></div>

                            <div class="input-prepend" title="Password" data-rel="tooltip">
                                <span class="add-on"><i class="icon-lock"></i></span>

                                <asp:TextBox CssClass="input-large span10" ID="pass" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ForeColor="Red" ControlToValidate="pass" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter password">

                                </asp:RequiredFieldValidator>
                            </div>

                            <p class="center span5">
                                <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Login" OnClick="Button1_Click" /><br />

                            </p>
                            <div class="clearfix"></div>
                            <div class="input-prepend">
                                <label class="remember" for="remember">

                                    <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" />
                                    Remember me</label>
                            </div>

                            <div class="clearfix"></div>

                        </fieldset>



                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ForgetPassword.aspx">Forget Password?</asp:HyperLink><br />
                         <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Home/Default.aspx"><--Back to Home</asp:HyperLink>
                    </form>
                </div>
                <!--/span-->
            </div>
            <!--/row-->
        </div>
        <!--/fluid-row-->

    </div>
    <!--/.fluid-container-->

    <!-- external javascript
	================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->

    <!-- jQuery -->


</body>
</html>



