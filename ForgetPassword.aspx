<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgetPassword.aspx.cs" Inherits="ForgetPassword" %>

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
    <title>foodbook | ForgotPass</title>
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
        <div class="row-fluid">

            <div class="row-fluid">
                <div class="span12 center login-header">
                </div>
                <!--/span-->
            </div>
            <!--/row-->

            <div class="row-fluid">
                <div class="well span5 center login-box">
                    <div class="alert alert-info">
                        Please Enter your Email.
				
                    </div>
                    <form id="Form1" class="form-horizontal" runat="server">
                        <fieldset>
                            <div class="input-prepend" title="Email:" data-rel="tooltip">
                                <span class="add-on"><i class="icon-user"></i></span>
                                <asp:TextBox CssClass="input-large span10" ID="txtEmail" runat="server"></asp:TextBox>
                                <asp:Label ID="lblMessage" runat="server" Text="" />
                                <asp:RequiredFieldValidator ID="RV1" runat="server"
                                    ControlToValidate="txtEmail"
                                    ErrorMessage="Please Enter EmailID"
                                    SetFocusOnError="True">*
                                </asp:RequiredFieldValidator>



                                <asp:ValidationSummary ID="ValidationSummary1"
                                    runat="server" CssClass="error" />


                            </div>

                            <p class="center span5">
                                <asp:Button ID="btnPass" CssClass="btn btn-primary" runat="server" Text="Submit" OnClick="btnPass_Click" /><br />

                            </p>
                            <div class="clearfix"></div>

                        </fieldset>





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

