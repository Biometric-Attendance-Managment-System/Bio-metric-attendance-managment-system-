<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FacultySignUp.aspx.cs" Inherits="ATMS.Views.Faculty.FacultySignUp" %>

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

   

<!-- Custom Css -->
   

</head>
<body>
    <form id="form1" runat="server">
        <div class="container p-3">
            <div class="row">
                <div class="col-md-3">

                </div>

                <div class="col-md-6 bg-light">
                    <h1 class="font-weight-bolder text-success text-center  m-3">FACULTY REGISTER</h1>
                    <div class="form-group">
                        
                        <asp:TextBox runat="server" placeholder="First Name" ID="txt_first_name"  CssClass="form-control" />
                    </div>
                    <div class="form-group">
                        
                        <asp:TextBox runat="server" placeholder="Last Name" ID="txt_last_name"  CssClass="form-control" />
                    </div>
                      <div class="form-group">
                        
                        <asp:TextBox runat="server" placeholder="Your Email" ID="txt_email" TextMode="Email"  CssClass="form-control" />
                    </div>
                     <div class="form-group">
                        
                        <asp:TextBox runat="server" placeholder="Password" ID="txt_pass" TextMode="Password" CssClass="form-control" />
                    </div>
                     <div class="form-group">
                        
                        <asp:TextBox runat="server" placeholder="Confirm Password" ID="txt_cnfrm_pass" TextMode="Password"  CssClass="form-control" />
                    </div>

                      <div class="form-group">
                         
                        
                        <asp:TextBox runat="server" placeholder="Phone " ID="txt_phone" TextMode="Phone"  CssClass="form-control" />
                    </div>

                      <div class="form-group">
                        
                          <asp:TextBox  runat="server" placeholder="Designation"  ID="txt_designation"   CssClass="form-control" />
                    </div>

                      <div class="form-group">
                        
                          <asp:Label Text="Gender" CssClass=" border-0" runat="server" />
                          <asp:RadioButton Text="Male" CssClass="p-5 " ID="btn_radio_male"  runat="server" /> <asp:RadioButton CssClass="p-5 " Text="Female"  runat="server" ID="btn_radio_female" />
                    </div>
                    <div class="form-group">
                        
                        <asp:Button Text="Submit" CssClass="form-control bg-success text-center text-white font-weight-bold" ID="btn_submit" runat="server" OnClick="btn_submit_Click" />
                    </div>
                     <div class="form-group">
                        
                        <span class="text-success"> Already Member?<asp:LinkButton CssClass=" p-3 text-success text-wrap bg-light" Text="Login" runat="server" ID="btn_login" OnClick="btn_login_Click" /></span>
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
