<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="TimeTableAllocation.aspx.cs" Inherits="ATMS.Views.Admin.Initials.TimeTableAllocation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../../Content/bootstrap.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="align-content-center p-4 "> Time Table Allocation </h2>
    <div class="  container row ">
        <div class="col-md-12 ">
            <div class="form-group">
        <asp:Label Text="Choose Class" runat="server" />
    <asp:DropDownList runat="server" ID="DDL_CLasses">
    
    </asp:DropDownList>
    </div>

    <div class="form-group">
        <asp:Label Text="Choose Subject" runat="server" />
    <asp:DropDownList runat="server" ID="DDL_Subjects" OnSelectedIndexChanged="DDL_Subjects_SelectedIndexChanged" AutoPostBack="true">
    
    </asp:DropDownList>
    </div>

    <div class="form-group">
        <asp:Label Text="Choose Teacher" runat="server" />
    <asp:DropDownList runat="server" ID="DDL_Teachers">
    
    </asp:DropDownList>
    </div>

    <div class="form-group">
        <asp:Label Text="Choose Day" runat="server" />
        <asp:DropDownList runat="server" ID="DDL_Day">
        <asp:ListItem Text="Monday" />
        <asp:ListItem Text="Tuesday" />
        <asp:ListItem Text="Wednesday" />
        <asp:ListItem Text="Thursday" />
        <asp:ListItem Text="Friday" />

    
    </asp:DropDownList>
    </div>

    <div class="form-group">
        <asp:Label Text="Choose Time" runat="server" />
    <asp:DropDownList runat="server" ID="DDL_Time">
        <asp:ListItem Text="08:00 - 09:30" Value="8" />
        <asp:ListItem Text="09:30 - 11:00" Value="9.5" />
        <asp:ListItem Text="11:00 - 12:30" Value="11" />
        <asp:ListItem Text="12:30 - 02:00"  Value="12.5"/>
        <asp:ListItem Text="02:00 - 03:30" Value="2" />
        <asp:ListItem Text="03:30 - 05:00" Value="3.5" />
    
    </asp:DropDownList>
    </div>

    <asp:Button Text="Allocate" runat="server" ID="btn_allocate"  OnClick="btn_allocate_Click" />

        </div>

    </div>
</asp:Content>
