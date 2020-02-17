<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Subjects.aspx.cs" Inherits="ATMS.Views.Admin.Initials.Subjects" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>.psn-btn{position:relative;top:70px;left:-240px;}</style>
    <script src="../../../Scripts/jquery-3.4.1.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <button type="button" data-toggle="modal" data-target="#colorModal" data-color="blue" class="btn bg-blue waves-effect">Add New Subject</button>
    <hr />
    <div class="row justify-content-center">
        <div class="table-responsive col-12">
        <asp:GridView runat="server" ID="DGVSubjects" AutoGenerateColumns="false" CssClass=" table table-borderd table-light" OnRowCommand="DGVSubjects_RowCommand" OnRowDeleting="DGVSubjects_RowDeleting" OnRowEditing="DGVSubjects_RowEditing" >
            <RowStyle CssClass="text-center" />
            <AlternatingRowStyle CssClass="text-center" />
            <Columns>
               <asp:BoundField DataField="SubjectName" HeaderText="Subject Name" HeaderStyle-CssClass="text-center bg-dark text-white"/>
                <asp:BoundField DataField="SubjectCode" HeaderText="Subject Code" HeaderStyle-CssClass="text-center bg-dark text-white" />
                 <asp:TemplateField ShowHeader="False" HeaderStyle-CssClass="text-center bg-dark text-white" HeaderText="Edit" ItemStyle-Width="10%">
                    <ItemTemplate>
                        <asp:Button ID="btnEditInDgv" runat="server" CausesValidation="false" CssClass=" btn-rounded btn-primary btn-block" CommandName="EditItem" Text="Edit" CommandArgument='<%# Eval("SubjectID") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False" HeaderStyle-CssClass="text-center bg-dark text-white" HeaderText="Remove" ItemStyle-Width="10%">
                    <ItemTemplate>
                        <asp:Button ID="btnRemoveInDgv" runat="server" CausesValidation="false" CssClass=" btn-rounded btn-danger btn-block" CommandName="RemoveItem" Text="Remove" CommandArgument='<%# Eval("SubjectID") %>' />
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
        </asp:GridView>
    </div>
    </div>


     <%--------------------------------------------------------------------- model section -------------------------%>
    <div class="modal fade" id="colorModal" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content ">
                <div class="modal-header bg-light justify-content-center pt-2 pb-2">
                    <h4 class="title" id="defaultModalLabel">Add Subject</h4>
                </div>
                <div class="modal-body text-light">
                    <div class="row justify-content-center">
                        <div class="form-group col-sm-6">
                            <asp:TextBox runat="server" CssClass="form-control" placeholder="Subject Name" ID="txt_subject_name" /><br />
                            <asp:TextBox runat="server" CssClass="form-control" placeholder="Subject code" ID="txt_subject_code" />
                        </div>
                        <div class="form-group col-sm-6">
                            <asp:Button Text="Submit" runat="server" CssClass="btn btn-primary mt-5  psn-btn"  ID="btn_Submit"  OnClick="btn_Submit_Click" />
                        </div>
                    </div>
                </div>
                <hr />
                <div class="modal-footer bg-light pb-2 pt-2">
                    <button type="button" class="btn btn-danger waves-effect text-light" data-dismiss="modal">CLOSE</button>
                </div>
            </div>
        </div>
    </div>


     <%------------------------------- update model for Progam-----------------------------------------%>


    <div class="modal fade" id="CourseUpdateModel" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content ">
                <div class="modal-header bg-light justify-content-center pt-2 pb-2">
                    <h4 class="title" id="">Update Subject</h4>
                </div>
                <div class="modal-body text-light">
                    <div class="row justify-content-center">
                        <div class="form-group col-sm-6">
                            <asp:TextBox runat="server"  CssClass="form-control" placeholder="Subject Name" ID="update_txt_subject_name" /><br />
                            <asp:TextBox runat="server" CssClass="form-control" placeholder="Subject Code" ID="update_txt_subject_code" />
                        </div>
                        <div class="form-group col-sm-3">
                            <asp:Button Text="Update" runat="server" CssClass="btn btn-success mt-0" ID="btn_update_subject"  OnClick="btn_update_subject_Click" />
                        </div>
                    </div>
                </div>
                <hr />
                <div class="modal-footer bg-light pb-2 pt-2">
                    <button type="button" class="btn btn-danger waves-effect text-light" data-dismiss="modal">CLOSE</button>
                </div>
            </div>
        </div>
    </div>


    <%---------------------------------------------------------- script section ------------------------------------------------------%>
    <script>
        function openModelUpdte() {
            $(function () {
                $("#CourseUpdateModel").modal("show");
            });
        }

    </script>
</asp:Content>
