<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminauthormanagement.aspx.cs" Inherits="ELibraryManagement.adminauthormanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_main" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col text-center">
                                <h4>Author Details</h4>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col text-center">
                                <img src="img/writer.png" width="100px"/>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Author ID:</label>
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="tbx_AuthorID" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:Button ID="btn_Go" CssClass="btn btn-primary" runat="server" Text="Go" />
                                    </div>
                                    
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="form-group">
                                    <label>Author Name:</label>
                                    <asp:TextBox CssClass="form-control" ID="tbx_AuthorName" runat="server" placeholder="Author Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-4">
                                <div class="form-group">
                                    <asp:Button ID="btn_Add" CssClass="btn btn-block btn-success btn-lg" runat="server" Text="Add" />
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="form-group">
                                    <asp:Button ID="btn_Update" CssClass="btn btn-block btn-warning btn-lg" runat="server" Text="Update" />
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="form-group">
                                    <asp:Button ID="btn_Delete" CssClass="btn btn-block btn-danger btn-lg" runat="server" Text="Delete" />
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col text-center">
                                <h4>Author List</h4>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <asp:GridView ID="gvw_Authors" AlternatingRowStyle-CssClass="table table-striped table-bordered" runat="server"></asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
