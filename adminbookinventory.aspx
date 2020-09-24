<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminbookinventory.aspx.cs" Inherits="ELibraryManagement.adminbookinventory" %>

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
                                <h4>Book Details</h4>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col text-center">
                                <img src="img/books.png" width="100px" />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <asp:FileUpload ID="fud_BookImage" CssClass="form-control" runat="server" />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <label>Book ID:</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="tbx_BookID" runat="server" placeholder="ex: b001"></asp:TextBox>
                                        <asp:Button ID="btn_Go" CssClass="btn btn-primary" runat="server" Text="Go" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-9">
                                <label>Book Name:</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="tbx_BookName" runat="server" placeholder="Book Name"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Language:</label>
                                <div class="form-group">
                                    <asp:DropDownList ID="ddl_Language" CssClass="form-control" runat="server">
                                        <asp:ListItem Text="English" Value="English" />
                                        <asp:ListItem Text="German" Value="German" />
                                        <asp:ListItem Text="Italian" Value="Italian" />
                                        <asp:ListItem Text="Portuguese" Value="Portuguese" />
                                        <asp:ListItem Text="Russian" Value="Russian" />
                                        <asp:ListItem Text="Spanish" Value="Spanish" />

                                    </asp:DropDownList>
                                </div>
                                <label>Publisher Name:</label>

                                <div class="form-group">
                                    <asp:DropDownList ID="ddl_Publisher" CssClass="form-control" runat="server">
                                        <asp:ListItem Text="Publisher1" Value="Publisher1" />
                                        <asp:ListItem Text="Publisher2" Value="Publisher2" />
                                        <asp:ListItem Text="Publisher3" Value="Publisher3" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Author Name:</label>
                                <div class="form-group">
                                    <asp:DropDownList ID="ddl_Author" CssClass="form-control" runat="server">
                                        <asp:ListItem Text="A1" Value="a1" />
                                        <asp:ListItem Text="A2" Value="a2" />
                                        <asp:ListItem Text="A3" Value="a3" />
                                    </asp:DropDownList>
                                </div>
                                <label>Publish Date:</label>
                                <div class="form-group">
                                    <asp:TextBox ID="tbx_PublishDate" CssClass="form-control" placeholder="Date" TextMode="Date" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Genres:</label>
                                <div class="form-group">
                                    <asp:ListBox ID="lbx_Genres" CssClass="form-control" Rows="4" SelectionMode="Multiple" runat="server">
                                        <asp:ListItem Text="Adventure" Value="Adventure" />
                                        <asp:ListItem Text="Classic" Value="Adventure" />
                                        <asp:ListItem Text="Comic Book" Value="Comic Book" />
                                        <asp:ListItem Text="Crime" Value="Adventure" />
                                        <asp:ListItem Text="Drama" Value="Adventure" />
                                        <asp:ListItem Text="Fantasy" Value="Adventure" />
                                        <asp:ListItem Text="Horror" Value="Adventure" />
                                        <asp:ListItem Text="Philosophy" Value="Adventure" />
                                        <asp:ListItem Text="Psycology" Value="Adventure" />
                                    </asp:ListBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Edition:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="tbx_Edition" runat="server" placeholder="Edition"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Book Cost (unitary):</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="tbx_Cost" runat="server" placeholder="Cost" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Pages:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="tbx_Pages" runat="server" placeholder="000" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label>Actual Stock:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="tbx_ActualStock" runat="server" placeholder="0" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Current Stock:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="tbx_CurrentStock" runat="server" placeholder="0" TextMode="Number" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <label>Issued Books:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="tbx_IssuedBooks" runat="server" placeholder="000" TextMode="Number" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-12">
                                <label>Book Description</label>
                                <div class="form-group">
                                    <asp:TextBox ID="tbx_Description" CssClass="form-control" runat="server" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-4">
                                <asp:Button ID="btn_Add" CssClass="btn btn-success btn-block btn-lg" runat="server" Text="Add" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="btn_Update" CssClass="btn btn-warning btn-block btn-lg" runat="server" Text="Update" />
                            </div>
                            <div class="col-4">
                                <asp:Button ID="btn_Delete" CssClass="btn btn-danger btn-block btn-lg" runat="server" Text="Delete" />
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
                                <h4>Book Inventory List</h4>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <asp:GridView ID="gvw_Members" AlternatingRowStyle-CssClass="table table-striped table-bordered" runat="server"></asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
