<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="ELibraryManagement.userlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cph_head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_main" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col text-center">
                                <img src="img/generaluser.png" width="150px"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col text-center">
                                <h3>Member Login</h3>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>Member ID:</label>
                                    <asp:TextBox CssClass="form-control" ID="tbx_MemberID" runat="server" placeholder="Member ID"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Password:</label>
                                    <asp:TextBox CssClass="form-control" ID="tbx_Password" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Button ID="btn_Login" CssClass="btn btn-success btn-block btn-lg" runat="server" Text="Login" />
                                </div>
                                <div class="form-group">
                                    <a href="userregister.aspx"><input id="btn_Register" class="btn btn-info btn-block btn-lg" type="button" value="Register" /></a>
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
