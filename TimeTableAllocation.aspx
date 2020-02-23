<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="TimeTableAllocation.aspx.cs" Inherits="ATMS.Views.Admin.Initials.TimeTableAllocation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../../Content/bootstrap.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container">
        <div class="row p-3 align-content-center">
            <div class="col-md-6">
                <h2 class=" form-group"> TimeTable Allocation </h2>
            </div>
             <div class="col-md-6">
                 <asp:LinkButton Text="Show TimeTable" runat="server" CssClass="m-1 form-group font-weight-bold " Font-Underline="true" Font-Size="X-Large" ForeColor="Black" ID="btn_show_timetable" OnClick="btn_show_timetable_Click" />
            </div>
        </div>
        <div class="row">
             
            <div class="col-md-6">
                  <div>
                        <asp:Label Text="Choose Class" CssClass="text-black-50" runat="server" />
                    <asp:DropDownList CssClass="w-100 btn border border-dark"  runat="server" ID="DDL_CLasses" >
    
                    </asp:DropDownList>
                  </div>
            </div>
            <div class="col-md-6">
                <div class="">
                    <asp:Label Text="Choose Subject" runat="server" />
                <asp:DropDownList runat="server" ID="DDL_Subjects" CssClass="w-100 btn border border-dark" OnSelectedIndexChanged="DDL_Subjects_SelectedIndexChanged" AutoPostBack="true">
    
                </asp:DropDownList>
                </div>

            </div>

        </div>

          <div class="row mt-5">
             
            <div class="col-md-6">
                               <div>
                    <asp:Label Text="Choose Teacher" runat="server" />
                <asp:DropDownList runat="server" CssClass="w-100  btn border border-dark" ID="DDL_Teachers">
    
                </asp:DropDownList>
                     </div>
            </div>
            <div class="col-md-6">
                <div>
                        <asp:Label Text="Choose Day" runat="server" />
                        <asp:DropDownList CssClass="w-100 btn border border-dark" runat="server" ID="DDL_Day">
                        <asp:ListItem Text="Monday" />
                        <asp:ListItem Text="Tuesday" />
                        <asp:ListItem Text="Wednesday" />
                        <asp:ListItem Text="Thursday" />
                        <asp:ListItem Text="Friday" />

    
                    </asp:DropDownList>
                </div>

            </div>

        </div>

            <div class="row mt-5">
             
            <div class="col-md-6">
                              <div class="form-group">
                        <asp:Label Text="Choose Time" runat="server" />
                    <asp:DropDownList CssClass="w-100 btn border border-dark " runat="server" ID="DDL_Time">
                        <asp:ListItem Text="08:00 - 09:30" Value="8" />
                        <asp:ListItem Text="09:30 - 11:00" Value="9.5" />
                        <asp:ListItem Text="11:00 - 12:30" Value="11" />
                        <asp:ListItem Text="12:30 - 02:00"  Value="12.5"/>
                        <asp:ListItem Text="02:00 - 03:30" Value="2" />
                        <asp:ListItem Text="03:30 - 05:00" Value="3.5" />
    
                    </asp:DropDownList>
                </div>
            </div>
            <div class="col-md-6 ">
               <div class="form-group p-3">
                   <asp:Button Text="Allocate" CssClass="btn btn-dark form-control text-white font-weight-bold" runat="server" ID="btn_allocate"  OnClick="btn_allocate_Click" />
               </div>

            </div>

        </div>

  

    </div>
</asp:Content>
