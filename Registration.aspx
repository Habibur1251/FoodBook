    <%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>



    <!DOCTYPE html>
    <html lang="en">

    <head runat="server">
    <meta charset="utf-8">
    <title>foodbook - Registration</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="http://cesarlab.com/templates/social/assets/img/favicon.ico"/>
    <link rel="icon" type="image/gif" href="assets/img/favicon.gif">
 
    <link href="assets/css/twitter-bootstrap/bootstrap.css" rel="stylesheet">
    <link href="assets/css/social.css" rel="stylesheet">
    <link href="assets/css/social.plugins.css" rel="stylesheet">
    <link href="assets/css/social.examples.css" rel="stylesheet">
    <link href="assets/css/font-awesome.css" rel="stylesheet">
    <link href="assets/css/twitter-bootstrap/bootstrap-responsive.css" rel="stylesheet">
    <link href="assets/css/docs.css" rel="stylesheet">
        <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
  <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css" />
  <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
  <script>
      $(function () {
          $("#datepicker").datepicker();
      });
  </script>
    <style>.wraper #main{margin-top:40px;}</style>
    <script>
        ie = false;
        </script>
 
    <!--[if lt IE 9]>
          <script src="/templates/social/assets/js/html5shiv.js"></script>
        <![endif]-->
    <!--[if lte IE 8]>
        <script src="/templates/social/assets/js/respond/respond.min.js"></script>
        <script>
            ie = 8;
        </script>
        <![endif]-->
    <!--[if lte IE 8]><script language="javascript" type="text/javascript" src="/templates/social/assets/js/jquery-flot/excanvas.min.js"></script><![endif]-->
    <script type="text/javascript">
        /*<![CDATA[*/
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-38708835-1']);
        _gaq.push(['_trackPageview']);
        (function () {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();
        /*]]>*/
        </script>
    </head>
    <body runat="server">
    <div class="wraper ">
 

        <header>
 
        <nav class="navbar navbar-blue navbar-fixed-top ">
            <b class="brand" style="padding-left:7%; font-size:36px;">foodbook</b>
        <div class="navbar-inner">

        </div>
        </nav>

        </header>

    <div id="main">
    <div class="container-fluid">
    <div class="row-fluid">
    <div class="span12">
    
    <ul class="breadcrumb">
    <li>
    <i class="icon-home"></i>
    <a href="Home/Default.aspx">Home</a>
    <span class="icon-angle-right"></span>
    </li>
    <li><a href="#">Registration</a>
    <span class="icon-angle-right"></span>
    </li>
    
    </ul> </div>
    </div>
    <div class="row-fluid">
    <div class="span12">
    <div class="social-box">
    <div class="header" >
    <h4 >User Registration</h4>
    </div>
    <div class="body">

    <form  class="form-horizontal"  runat="server" >
    <fieldset style="margin-left:20%; margin-top:5%;  ">
 
   
     <asp:ScriptManager ID="sm1" runat="server">
      <Scripts>
        <asp:ScriptReference Name="jquery"/>
      </Scripts>
    </asp:ScriptManager>   

    <div class="control-group">
    <label class="control-label">Full Name</label>
    <div class="controls">
        <asp:TextBox ID="fname" runat="server" placeholder="Your Full Name" CssClass="input-xlarge" AutoCompleteType="Disabled"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator Display="Dynamic"  ControlToValidate="fname" ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" Text="Enter your full name" ForeColor="Red" CssClass="input-xlarge" >
       
        </asp:RequiredFieldValidator>
        
    </div>
    </div>
 

    <div class="control-group">
    <label class="control-label">User Id</label>
    <div class="controls">
        <asp:TextBox ID="userid" runat="server" placeholder="Why don't enter userid" CssClass="input-xlarge" AutoCompleteType="Disabled" ontextchanged="userid_TextChanged" AutoPostBack="true"></asp:TextBox>
                     &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="userid" ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" Text="Enter your User Id" ForeColor="Red" CssClass="input-xlarge" >

        </asp:RequiredFieldValidator>
    <asp:Label ID="Label2" runat="server"></asp:Label>
    
    </div>
    </div>
 
    <div class="control-group">
    <label class="control-label">Password</label>
    <div class="controls">
        <asp:TextBox ID="password1" runat="server" TextMode="Password" placeholder="Enter a strong password" CssClass="input-xlarge"></asp:TextBox>
         &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="password1" ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" Text="Enter your Password" ForeColor="Red" CssClass="input-xlarge" >

        </asp:RequiredFieldValidator>
    
    </div>
    </div>
 
    <div class="control-group">
    <label class="control-label">Repeat Password</label>
    <div class="controls">
        <asp:TextBox ID="password2" runat="server" TextMode="Password" placeholder="Repeat your Password" CssClass="input-xlarge" AutoCompleteType="Disabled"></asp:TextBox>
     &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator  ControlToValidate="password2" ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" Text="Confirm you Password" ForeColor="Red" CssClass="input-xlarge" Display="Dynamic" >

        </asp:RequiredFieldValidator>
        <asp:CompareValidator Text="Password do not match" CssClass="input-xlarge" ID="CompareValidator1" ControlToValidate="password2" ControlToCompare="password1" runat="server" ErrorMessage="CompareValidator" ForeColor="Red" Display="Dynamic"></asp:CompareValidator>
    </div>
    </div>
 
    <div class="control-group">
    <label class="control-label">Email</label>
    <div class="controls">
        <asp:TextBox ID="email" runat="server"  placeholder="Enter a valid Email" CssClass="input-xlarge" AutoCompleteType="Disabled"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="email" ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" Text="Enter your Email address" ForeColor="Red" CssClass="input-xlarge" >

        </asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator  
            ForeColor="Red" 
            ID="RegularExpressionValidator1"  
            runat="server"   
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"  
            ControlToValidate="email"  
            ErrorMessage="Input valid email address!"  
            >  
        </asp:RegularExpressionValidator>
    </div>
    </div>

    <div class="control-group">
    <label class="control-label">Contact</label>
    <div class="controls">
        <asp:TextBox ID="contact" runat="server"  placeholder="Enter a valid Phone Number" CssClass="input-xlarge"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="contact" ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" Text="Enter your Phone no" ForeColor="Red" CssClass="input-xlarge" >

        </asp:RequiredFieldValidator>
    </div>
    </div>

    <div class="control-group">
    <label class="control-label">Your Birthdate</label>
    <div class="controls">
        
    
        <asp:TextBox ID="datepicker" runat="server" placeholder="Select a valid Date" CssClass="input-xlarge" AutoCompleteType="Disabled"></asp:TextBox>
       &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="datepicker" ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator" Text="Enter your date of birth" ForeColor="Red" CssClass="input-xlarge" >

        </asp:RequiredFieldValidator>
        
    </div>
    </div>
 
    <div class="control-group">
    <label class="control-label">Gender</label>
    <div class="controls">
    
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="Others">Others</asp:ListItem>
            <asp:ListItem Value="male">Male</asp:ListItem>
            <asp:ListItem Value="female">Female</asp:ListItem>
            
        </asp:DropDownList> 
        <asp:RequiredFieldValidator Display="Dynamic" ControlToValidate="DropDownlist1" ID="RequiredFieldValidator8" runat="server" ErrorMessage="RequiredFieldValidator" Text="Select your Gender" ForeColor="Red" CssClass="input-xlarge" >

        </asp:RequiredFieldValidator>
    </div>
    </div>
 
    <div class="control-group" style="margin-left:20%; margin-top:5%;  ">
    <asp:Button runat="server" ID="submit_button"  CssClass="btn btn-primary" Text="Register" data-loading-text="sending info..." OnClick="submit_button_Click" />
    <asp:Button runat="server" ID="cancel_button" CssClass="btn btn-danger" Text="Cancel" OnClick="cancel_button_Click"/>
    </div>
    
    </fieldset>
    </form>
       
    </div>
    </div>
    </div>
    </div>
    </div>
 
    <footer id="footer">
    <div class="container-fluid">

    </div>
    </footer> </div>
    </div>
 
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="assets/js/jquery-1.9.1.min.js"><\/script>')</script>
    <script src="assets/js/jquery-ui/js/jquery-ui-1.10.1.custom.min.js"></script>
    <script src="assets/js/twitter-bootstrap/bootstrap.js"></script>
    <script src="assets/js/jquery-slimscroll/jquery.slimscroll.min.js"></script>
    <!--[if lte IE 8]>
        <script src="/templates/social/assets/js/placeholders/placeholders.min.js"></script>
        <![endif]-->
    <script src="assets/js/extents.js"></script>
    <script src="assets/js/app.js"></script>
    <script src="assets/js/jquery-validation/jquery.validate.js"></script>
    <script src="assets/js/jquery-chosen/chosen/chosen.jquery.min.js"></script>
    <script src="assets/js/jquery.maskedinput/dist/jquery.maskedinput.min.js"></script>
    <script src="assets/js/form-stuff.validation.js"></script>
 
  
    </body>

    </html>
