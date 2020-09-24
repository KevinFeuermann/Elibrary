<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="userregister.aspx.cs" Inherits="ELibraryManagement.userregister" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_main" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col text-center">
                                <img src="img/generaluser.png" width="100px"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col text-center">
                                <h4>User Registration</h4>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Full Name:</label>
                                    <asp:TextBox CssClass="form-control" ID="tbx_FullName" runat="server" placeholder="Full Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Date of Birth:</label>
                                    <asp:TextBox CssClass="form-control" ID="tbx_DateOfBirth" runat="server" placeholder="mm-dd-yyyy" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Contact Phone No.:</label>
                                    <asp:TextBox CssClass="form-control" ID="tbx_Phone" runat="server" placeholder="(555)555-5555" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>E-mail:</label>
                                    <asp:TextBox CssClass="form-control" ID="tbx_Email" runat="server" placeholder="abc@example.com" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>State:</label>
                                    <asp:DropDownList CssClass="form-control" ID="ddl_State" runat="server">
                                        <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>City:</label>
                                    <asp:TextBox CssClass="form-control" ID="tbx_City" runat="server" placeholder="City"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label>ZIP Code:</label>
                                    <asp:TextBox CssClass="form-control" ID="tbx_ZIPCode" runat="server" placeholder="123456" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label>Full Address:</label>
                                <asp:TextBox CssClass="form-control" ID="tbx_FullAddress" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col text-center">
                                <span class="badge badge-pill badge-success">Login Credentials</span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>User ID:</label>
                                    <asp:TextBox CssClass="form-control" ID="tbx_MemberID" runat="server" placeholder="Member ID"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label>Password:</label>
                                    <asp:TextBox CssClass="form-control" ID="tbx_Password" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                 <div class="form-group">
                                    <asp:Button ID="btn_Register" CssClass="btn btn-primary btn-block btn-lg" runat="server" Text="Register" OnClick="btn_Register_Click" />
                                </div>
                            </div>
                        </div>   
                    </div>
                </div>
                <a href="homepage.aspx"><< Back to Home</a>
                <br /><br />
            </div>
        </div>
    </div>

</asp:Content>
