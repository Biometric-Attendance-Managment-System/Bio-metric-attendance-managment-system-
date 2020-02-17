<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Sessions.aspx.cs" Inherits="ATMS.Views.Admin.Initials.Sessions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>.psn-btn{position:relative;top:70px;left:-240px;}</style>
    <script src="../../../Scripts/jquery-3.4.1.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <button type="button" data-toggle="modal" data-target="#colorModal" data-color="blue" class="btn bg-blue waves-effect">Add New Session</button>
    <hr />
    <div class="row justify-content-center">
        <div class="table-responsive col-12">
        <asp:GridView runat="server" ID="DGVSession" AutoGenerateColumns="false" CssClass=" table table-borderd table-light" OnRowCommand="DGVSession_RowCommand" OnRowEditing="DGVSession_RowEditing" OnRowDeleting="DGVSession_RowDeleting">
            <RowStyle CssClass="text-center" />
            <AlternatingRowStyle CssClass="text-center" />
            <Columns>
               <asp:BoundField DataField="SessionName" HeaderText="Session Name" HeaderStyle-CssClass="text-center bg-dark text-white"/>
              <%--  <asp:BoundField DataField="CourseCode" HeaderText="Course Code" HeaderStyle-CssClass="text-center bg-dark text-white" />--%>
                 <asp:TemplateField ShowHeader="False" HeaderStyle-CssClass="text-center bg-dark text-white" HeaderText="Edit" ItemStyle-Width="10%">
                    <ItemTemplate>
                        <asp:Button ID="btnEditInDgv" runat="server" CausesValidation="false" CssClass=" btn-rounded btn-primary btn-block" CommandName="EditItem" Text="Edit" CommandArgument='<%# Eval("SessionID") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False" HeaderStyle-CssClass="text-center bg-dark text-white" HeaderText="Remove" ItemStyle-Width="10%">
                    <ItemTemplate>
                        <asp:Button ID="btnRemoveInDgv" runat="server" CausesValidation="false" CssClass=" btn-rounded btn-danger btn-block" CommandName="RemoveItem" Text="Remove" CommandArgument='<%# Eval("SessionID") %>' />
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
                    <h4 class="title" id="defaultModalLabel">Add Session</h4>
                </div>
                <div class="modal-body text-light">
                    <div class="row justify-content-center">
                        <div class="form-group col-sm-6">
                            <asp:TextBox runat="server" CssClass="form-control" placeholder="Session Name" ID="txt_session_name" /><br />
                           <%-- <asp:TextBox runat="server" CssClass="form-control" placeholder="Course Code" ID="txt_course_code" />--%>
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


      <%------------------------------- update model for Session-----------------------------------------%>


    <div class="modal fade" id="CourseUpdateModel" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content ">
                <div class="modal-header bg-light justify-content-center pt-2 pb-2">
                    <h4 class="title" id="">Update Session</h4>
                </div>
                <div class="modal-body text-light">
                    <div class="row justify-content-center">
                        <div class="form-group col-sm-6">
                            <asp:TextBox runat="server"  CssClass="form-control" placeholder="Session Name" ID="update_txt_session_name" /><br />
                          <%--  <asp:TextBox runat="server" CssClass="form-control" placeholder="Course Code" ID="update_txt_course_code" />--%>
                        </div>
                        <div class="form-group col-sm-3">
                            <asp:Button Text="Update" runat="server" CssClass="btn btn-success mt-0" ID="btn_update_session"  OnClick="btn_update_session_Click" />
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
