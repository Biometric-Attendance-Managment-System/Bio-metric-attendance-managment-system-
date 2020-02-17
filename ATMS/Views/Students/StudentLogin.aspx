<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentLogin.aspx.cs" Inherits="ATMS.Views.Students.StudentLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- Favicon-->
    <link href="../../assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <style>
         body{
            background:url("../../assets/images/csandit.jpg") no-repeat center center fixed ;
            -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
        }
        
    </style>
     <script>
         function alertfunc() {
             alert("Login Failed");

         }
    </script>

   

<!-- Custom Css -->

</head>
<body>
    <form id="form1" runat="server">
        <div class="container p-5">
            <div class="row">
                <div class="col-md-3">

                </div>

                <div class="col-md-6 bg-light">
                    <h1 class=" text-center text-success  m-3">STUDENT LOGIN</h1>
                   
                      <div class="form-group">
                        
                        <asp:TextBox runat="server" placeholder="Your Email" ID="txt_email"  TextMode="Email" CssClass="form-control" />
                    </div>
                     <div class="form-group">
                        
                        <asp:TextBox runat="server" placeholder="Password" TextMode="Password" ID="txt_pass"  CssClass="form-control" />
                    </div>
                     <div class="form-group">
                        
                     

                      
                    <div class="form-group">
                        
                        <asp:Button Text="Login" CssClass="form-control  bg-success text-white font-weight-bold" ID="btn_login" runat="server" OnClick="btn_login_Click" />
                    </div>
                     <div class="form-group">
                        
                        <span class="text-success font-weight-bold p-1"> Not a Member?<asp:LinkButton CssClass=" p-3  alert-success text-success font-weight-bold text-wrap bg-light" Text="SignUp" runat="server" ID="btn_signup" OnClick="btn_signup_Click"  /></span>
                    </div>



                </div>
                <div class="col-md-3">

                </div>
            </div>

        </div>
  </form>
    <script src="<%=ResolveUrl("~")%>assets/bundles/libscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js --> 
<script src="<%=ResolveUrl("~")%>assets/bundles/vendorscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js --> 

<script src="<%=ResolveUrl("~")%>assets/bundles/mainscripts.bundle.js"></script>
</body>
</html>