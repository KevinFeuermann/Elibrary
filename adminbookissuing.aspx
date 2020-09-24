<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminbookissuing.aspx.cs" Inherits="ELibraryManagement.adminbookissuing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_main" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col text-center">
                                <h4>Book Issuing</h4>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col text-center">
                                <img src="img/books.png" width="100px"/>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Member ID:</label>
                                    <asp:TextBox CssClass="form-control" ID="tbx_MemberID" runat="server" placeholder="Member ID"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Book ID:</label>
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="tbx_BookID" runat="server" placeholder="BookID"></asp:TextBox>
                                        <asp:Button ID="btn_Go" CssClass="btn btn-primary" runat="server" Text="Go" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Member Name:</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Member Name" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Book Name:</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Book Name" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Start Date:</label>
                                    <asp:TextBox CssClass="form-control" ID="tbx_StartDate" runat="server" placeholder="dd-mm-yyyy" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>End Date:</label>
                                    <asp:TextBox CssClass="form-control" ID="tbx_EndDate" runat="server" placeholder="dd-mm-yyyy" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6">
                                <div class="form-group">
                                    <asp:Button ID="btn_Issue" CssClass="btn btn-block btn-primary btn-lg" runat="server" Text="Issue" />
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <asp:Button ID="btn_Return" CssClass="btn btn-block btn-success btn-lg" runat="server" Text="Return" />
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
                                <h4>Issued Book List</h4>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <asp:GridView ID="gvw_IssuedBooks" AlternatingRowStyle-CssClass="table table-striped table-bordered" runat="server"></asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
