<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ATMS.Login" %>

<!DOCTYPE html>

<!-- <html xmlns="http://www.w3.org/1999/xhtml"> -->
<html>
<head runat="server">
    <title></title>
    <!-- Favicon-->
    <link href="../../assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background: url("../../assets/images/csandit.jpg") no-repeat center center fixed;
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
                    <h1 class=" text-center text-success  m-1">LOGIN</h1>

                    <div class="form-group">

                        <asp:TextBox runat="server" placeholder="Your Email" ID="UserName"  CssClass="form-control" />
                    </div>
                    <div class="form-group">

                        <asp:TextBox runat="server" placeholder="Password" ID="txt_password" TextMode="Password" CssClass="form-control" />
                    </div>
                    <div class="form-group">

                        <div class="form-group">

                            <asp:Button Text="Login" CssClass="form-control  bg-success text-white font-weight-bold" ID="btn_login_admin" runat="server" OnClick="btn_login_admin_Click" />
                        </div>
                       



                    </div>
                    <div class="col-md-3">
                    </div>
                </div>

            </div>
            </div>
    </form>
    <script src="<%=ResolveUrl("~")%>assets/bundles/libscripts.bundle.js"></script>
    <!-- Lib Scripts Plugin Js -->
    <script src="<%=ResolveUrl("~")%>assets/bundles/vendorscripts.bundle.js"></script>
    <!-- Lib Scripts Plugin Js -->

    <script src="<%=ResolveUrl("~")%>assets/bundles/mainscripts.bundle.js"></script>
</body>
</html>
