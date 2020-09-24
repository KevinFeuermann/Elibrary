<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="adminmembermanagement.aspx.cs" Inherits="ELibraryManagement.adminmembermanagement" %>
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
                                <h4>Member Details</h4>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col text-center">
                                <img src="img/generaluser.png" width="100px"/>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Member ID:</label>
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="tbx_MemberID" runat="server" placeholder="Member ID"></asp:TextBox>
                                        <asp:Button ID="btn_Go" CssClass="btn btn-primary" runat="server" Text="Go" />
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Full Name:</label>
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="tbx_FullName" runat="server" placeholder="Full Name" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <div class="form-group">
                                    <label>Account Status:</label>
                                    <div class="input-group">
                                        <asp:TextBox ID="tbx_Status" CssClass="form-control mr-1" runat="server" placeholder="Status" ReadOnly="True"></asp:TextBox>
                                        <asp:LinkButton ID="lbn_A" CssClass="btn btn-success mr-1" runat="server"><i class="fas fa-check-circle"></i></asp:LinkButton>
                                        <asp:LinkButton ID="lbn_" CssClass="btn btn-warning mr-1" runat="server"><i class="far fa-pause-circle"></i></asp:LinkButton>
                                        <asp:LinkButton ID="LinkButton2" CssClass="btn btn-danger mr-1" runat="server"><i class="fas fa-times-circle"></i></asp:LinkButton>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>Date of Birth:</label>
                                    <asp:TextBox CssClass="form-control" ID="tbx_DateOfBirth" runat="server" placeholder="dd-mm-yyyy" TextMode="Date" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>Contact Phone No:</label>
                                    <asp:TextBox CssClass="form-control" ID="tbx_PhoneNumber" runat="server" placeholder="Phone Number" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <div class="form-group">
                                    <label>E-mail:</label>
                                    <asp:TextBox CssClass="form-control" ID="tbx_Email" runat="server" placeholder="abc@example.com" TextMode="Email" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>State:</label>
                                    <asp:TextBox CssClass="form-control" ID="tbx_State" runat="server" placeholder="Select" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>City:</label>
                                    <asp:TextBox CssClass="form-control" ID="tbx_City" runat="server" placeholder="City" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>ZIP Code:</label>
                                    <asp:TextBox CssClass="form-control" ID="tbx_ZIPCode" runat="server" placeholder="123456" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label>Full Address:</label>
                                    <asp:TextBox CssClass="form-control" ID="tbx_FullAddress" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-8 mx-auto">
                                <div class="form-group">
                                    <asp:Button ID="btn_DeleteUser" CssClass="btn btn-block btn-danger btn-block btn-lg" runat="server" Text="Delete User Permanently" />
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
                                <h4>Member List</h4>
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
