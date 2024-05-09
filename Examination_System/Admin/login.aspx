<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Examination_System.Admin.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Login - Online exam sytem</title>
    <!-- Bootstrap core CSS-->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Custom fonts for login-->
    <link href="../assets/css/custom.css" rel="stylesheet" />
</head>
<body class="bg-dark">
      <!-- Navigation -->
        <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top navcolor">
            <div class="container">
                <a class="navbar-brand" href="../Homepage.aspx">
                    <img id="answerlogo" src="../assets/images/answers.png"  width="150px" />
                </a>  
             </div>  
        </nav>
    <div class="container"  style="margin-top:8%;margin-left:19%;">
        <div class="card adminloginstyling card-login mx-auto mt-5">
            <center><div class="card-header"style="border-color:#00986F;border-width:3px;">
                <center>
                        <img src="../assets/images/avatar.png" width="180px" />
                    </center>
                Admin Login</div></center>
            <div class="card-body">
                <form runat="server" id="formlogin">
                    <asp:Panel ID="pnl_warning" runat="server" Visible="false">
                    <div class="form-group card-header text-center">
                        <div class="alert-danger">
                        <asp:Label ID="lbl_warning" runat="server" Text="Label" CssClass="col-form-label text-center"></asp:Label>
                        </div>
                    </div>
                    </asp:Panel>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <asp:TextBox ID="txt_email" runat="server" CssClass="form-control" placeholder="Enter email" TextMode="Email" BackColor="#1D2026" BorderColor="#00986F" BorderStyle="Solid" BorderWidth="3px" ForeColor="White"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rqr_emil" runat="server" ErrorMessage="Enter email" ControlToValidate="txt_email" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rqrexpre_email" runat="server" ErrorMessage="Enter validate email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txt_email" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>
                    <div class="form-group">
                        <div class="form-row">
                            <div class="col">
                                <label for="exampleInputPassword1">Password</label>
                                <asp:TextBox ID="txt_pass" runat="server" CssClass="form-control" placeholder="Enter password" TextMode="Password" BackColor="#1D2026" BorderColor="#00986F" BorderStyle="Solid" BorderWidth="3px" ForeColor="White"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rqr_pass" runat="server" ErrorMessage="Enter password" ControlToValidate="txt_pass" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>                  
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-check">
                            <label class="form-check-label">
                                <asp:CheckBox ID="chk_remember" runat="server" CssClass="form-check-input remembermecustom" />
                                Remember Password</label>
                        </div>
                    </div>
                    <asp:Button ID="btn_login" runat="server" Text="Log In" CssClass="btn btn-primary btn-block" OnClick="btn_login_Click" /><br />
                    <div class="text-center">
                        <a class="d-block small mt-2" href="adminregister.aspx">Register an Account</a>
                    </div>
                    
                </form>

            </div>
        </div>
    </div>
</body>
</html>
