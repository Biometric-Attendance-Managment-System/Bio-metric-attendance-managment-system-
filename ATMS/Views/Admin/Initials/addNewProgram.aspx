<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="addNewProgram.aspx.cs" Inherits="ATMS.Views.Admin.Initials.addNewProgram" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../../../Scripts/jquery-3.4.1.min.js"></script>
    <style>
        .table-light thead th {
            border-color: #343a40;
        }

        .table-light tbody + tbody, .table-light td, .table-light th, .table-light thead th {
            border-color: #343a40;
        }

        .table td input {
            padding-top: .0em;
            padding-bottom: .0em;
        }

        .table td {
            padding-top: .5em;
            padding-bottom: .5em;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <button type="button" data-toggle="modal" data-target="#colorModal" data-color="blue" class="btn bg-blue waves-effect">Add New Program</button>
    <hr />
    <div class="row justify-content-center">
        <div class="table-responsive col-6">
        <asp:GridView runat="server" ID="DGVPrograms" AutoGenerateColumns="false" CssClass=" table table-borderd table-light" OnRowCommand="DGVPrograms_RowCommand">
            <RowStyle CssClass="text-center" />
            <AlternatingRowStyle CssClass="text-center" />
            <Columns>
                <asp:BoundField HeaderText="ProgrammeID" DataField="ProgrammeID" HeaderStyle-CssClass="d-none" ItemStyle-CssClass="d-none" />
                <asp:BoundField HeaderText="Program Name" DataField="ProgrammeName" HeaderStyle-CssClass="text-center bg-dark text-white" />
                <asp:TemplateField ShowHeader="False" HeaderStyle-CssClass="text-center bg-dark text-white" HeaderText="Edit" ItemStyle-Width="10%">
                    <ItemTemplate>
                        <asp:Button ID="btnEditInDgv" runat="server" CausesValidation="false" CssClass=" btn-rounded btn-primary btn-block" CommandName="EditItem" Text="Edit" CommandArgument='<%# Eval("ProgrammeID") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField ShowHeader="False" HeaderStyle-CssClass="text-center bg-dark text-white" HeaderText="Remove" ItemStyle-Width="10%">
                    <ItemTemplate>
                        <asp:Button ID="btnRemoveInDgv" runat="server" CausesValidation="false" CssClass=" btn-rounded btn-danger btn-block" CommandName="RemoveItem" Text="Remove" CommandArgument='<%# Eval("ProgrammeID") %>' />
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
                    <h4 class="title" id="defaultModalLabel">Add Programs</h4>
                </div>
                <div class="modal-body text-light">
                    <div class="row justify-content-center">
                        <div class="form-group col-sm-6">
                            <asp:TextBox runat="server" CssClass="form-control" placeholder="Program Name" ID="txt_program_name" />
                        </div>
                        <div class="form-group col-sm-3">
                            <asp:Button Text="Submit" runat="server" CssClass="btn btn-primary mt-0" ID="btn_Submit" OnClick="btn_Submit_Click" />
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


    <div class="modal fade" id="ProgramUpdateModel" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content ">
                <div class="modal-header bg-light justify-content-center pt-2 pb-2">
                    <h4 class="title" id="">Update Programs</h4>
                </div>
                <div class="modal-body text-light">
                    <div class="row justify-content-center">
                        <div class="form-group col-sm-6">
                            <asp:TextBox runat="server" CssClass="form-control" placeholder="Program Name" ID="Uptxt_program_name" />
                        </div>
                        <div class="form-group col-sm-3">
                            <asp:Button Text="Update" runat="server" CssClass="btn btn-success mt-0" ID="btn_updateProgram" OnClick="btn_updateProgram_Click" />
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
</asp:Content>
