﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FacultyDashBoard.aspx.cs" Inherits="ATMS.Views.Faculty.FacultyDashBoard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="row justify-content-center">
        <h3 class=" text-white  font-weight-bold">Faculty Dashboard</h3>
        <div class="table-responsive col-10 m-3">
        <asp:GridView runat="server" ID="DGVCourse" AutoGenerateColumns="false" CssClass=" table table-borderd table-light" OnRowCommand="DGVCourse_RowCommand" OnRowEditing="DGVCourse_RowEditing"  OnRowDeleting="DGVCourse_RowDeleting">
            <RowStyle CssClass="text-center" />
            <AlternatingRowStyle CssClass="text-center" />
            <Columns>
               <asp:BoundField  DataField="FacultyFirstName" HeaderText="Faculty First Name" HeaderStyle-CssClass="text-center bg-dark text-white"/>
                <asp:BoundField DataField="FacultyLastName" HeaderText="Faculty Last Name" HeaderStyle-CssClass="text-center bg-dark text-white" />
                <asp:BoundField DataField="FacultyEmail" HeaderText="Faculty Email" HeaderStyle-CssClass="text-center bg-dark text-white" />
                <asp:BoundField DataField="FacultyPhone" HeaderText="Faculty Phone" HeaderStyle-CssClass="text-center bg-dark text-white" />
                <asp:BoundField DataField="FacultyDesignation" HeaderText="Faculty Designation" HeaderStyle-CssClass="text-center bg-dark text-white" />
                <asp:BoundField DataField="FacultyGender" HeaderText="Faculty Gender" HeaderStyle-CssClass="text-center bg-dark text-white" />
                 <asp:TemplateField ShowHeader="False" HeaderStyle-CssClass="text-center bg-dark text-white" HeaderText="Edit" ItemStyle-Width="10%">
                    <ItemTemplate>
                        <asp:Button ID="btnEditInDgv" runat="server" CausesValidation="false" CssClass=" btn-rounded btn-primary btn-block" CommandName="EditItem" Text="Edit" CommandArgument='<%# Eval("FacultyID") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False" HeaderStyle-CssClass="text-center bg-dark text-white" HeaderText="Remove" ItemStyle-Width="10%">
                    <ItemTemplate>
                        <asp:Button ID="btnRemoveInDgv" runat="server" CausesValidation="false" CssClass=" btn-rounded btn-danger btn-block" CommandName="RemoveItem" Text="Remove" CommandArgument='<%# Eval("FacultyID") %>' />
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
        </asp:GridView>
    </div>
    </div>
    </div>
        <div class="form-group row">
            <div class="col-md-5">

            </div>
          <div class="col-md-4">
              <span>
              <asp:Button Text="Go Back To Dashboard" runat="server" ID="btn_go_back_dashboard" CssClass="bg-transparent font-weight-bold text-white border-4 b"  OnClick="btn_go_back_dashboard_Click" /></span>
          </div>
        </div>

    </form>
     <script src="<%=ResolveUrl("~")%>assets/bundles/libscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js --> 
<script src="<%=ResolveUrl("~")%>assets/bundles/vendorscripts.bundle.js"></script> <!-- Lib Scripts Plugin Js --> 

<script src="<%=ResolveUrl("~")%>assets/bundles/mainscripts.bundle.js"></script>
</body>
</html>
