<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ShowTimeTable.aspx.cs" Inherits="ATMS.Views.Admin.Initials.ShowTimeTable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../../../Content/bootstrap.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row justify-content-center">
        <div class="table-responsive col-12">
        <asp:GridView runat="server" ID="DGVShowtimetable" AutoGenerateColumns="false" CssClass=" table table-borderd table-light "  OnRowCommand="DGVShowtimetable_RowCommand" OnRowEditing="DGVShowtimetable_RowEditing" OnRowDeleting="DGVShowtimetable_RowDeleting">
            <RowStyle CssClass="text-center" />
            <AlternatingRowStyle CssClass="text-center" />
            <Columns>
               <asp:BoundField DataField="ClassId" HeaderText="Class ID " HeaderStyle-CssClass="text-center bg-dark text-white"/>
                 <asp:BoundField DataField="FacultyFullName" HeaderText="Faculty Name " HeaderStyle-CssClass="text-center bg-dark text-white"/>
                 <asp:BoundField DataField="StartHour" HeaderText="Start Hour " HeaderStyle-CssClass="text-center bg-dark text-white"/>
               
                <asp:BoundField DataField="SubjectName" HeaderText="Subject Name " HeaderStyle-CssClass="text-center bg-dark text-white"/>
                <asp:BoundField DataField="Day" HeaderText="Day " HeaderStyle-CssClass="text-center bg-dark text-white"/>
            
                 
                <asp:TemplateField ShowHeader="False" HeaderStyle-CssClass="text-center bg-dark text-white" HeaderText="Remove" ItemStyle-Width="10%">
                    <ItemTemplate>
                        <asp:Button ID="btnRemoveInDgv" runat="server" CausesValidation="false" CssClass=" btn-rounded btn-danger btn-block" CommandName="RemoveItem" Text="Remove" CommandArgument='<%# Eval("AllocationID") %>' />
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
        </asp:GridView>
    </div>
    </div>
    <div class="row align-content-center">
        <div class="col-md-5">

        </div>
        <div class="col-md-4 ">
            <asp:Button Text="New Allocation"  CssClass="btn btn-dark" runat="server" OnClick="Unnamed_Click" />
        </div>
    </div>
</asp:Content>
