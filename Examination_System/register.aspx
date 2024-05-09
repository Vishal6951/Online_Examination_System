<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Examination_System.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Register - Online exam sytem</title>
    <!-- Bootstrap core CSS-->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this register-->
    <link href="assets/css/custom.css" rel="stylesheet">
</head>
<body class="bg-dark">
    <!-- Navigation -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark fixed-top navcolor">
        <div class="container">
            <a class="navbar-brand" href="../Homepage.aspx">
                <img id="answerlogo" src="../assets/images/answers.png" width="150px" />
            </a>
        </div>
    </nav>

    <div class="container" style="margin-top: 10%; margin-left: 19%;">
        <div class="card registerstyling card-register mx-auto mt-5">
            <center>
                <div class="card-header" style="border-color: #00986f; border-width: 3px;">Register an Account</div>
            </center>
            <div class="card-body">
                <form runat="server" id="formregister">
                    <asp:Panel ID="pnl_warning" runat="server" Visible="false">
                        <div class="form-group card-header text-center">
                            <div class="alert-danger">
                                <asp:Label ID="lbl_warning" runat="server" Text="Label" CssClass="col-form-label text-center"></asp:Label>
                            </div>
                        </div>
                    </asp:Panel>

                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-6">
                                <label for="exampleInputName">First name</label>
                                <asp:TextBox ID="txt_fname" runat="server" CssClass="form-control" placeholder="Enter first name" BackColor="#1D2026" BorderColor="#00986F" BorderStyle="Solid" BorderWidth="3px" ForeColor="White"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rqr_name" runat="server" ErrorMessage="Enter first name" ControlToValidate="txt_fname" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-6">
                                <label for="exampleInputLastName">Last name</label>
                                <asp:TextBox ID="txt_lname" runat="server" CssClass="form-control" placeholder="Enter last name" BackColor="#1D2026" BorderColor="#00986F" BorderStyle="Solid" BorderWidth="3px" ForeColor="White"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rqr_lname" runat="server" ErrorMessage="Enter last name" ControlToValidate="txt_lname" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <asp:TextBox ID="txt_email" runat="server" CssClass="form-control" placeholder="Enter email" TextMode="Email" BackColor="#1D2026" BorderColor="#00986F" BorderStyle="Solid" BorderWidth="3px" ForeColor="White"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rqr_emil" runat="server" ErrorMessage="Enter email" ControlToValidate="txt_email" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rqrexpre_email" runat="server" ErrorMessage="Enter validate email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txt_email" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>
                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-6">
                                <label for="exampleInputPassword1">Password</label>
                                <asp:TextBox ID="txt_pass" runat="server" CssClass="form-control" placeholder="Enter password" TextMode="Password" BackColor="#1D2026" BorderColor="#00986F" BorderStyle="Solid" BorderWidth="3px" ForeColor="White"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rqr_pass" runat="server" ErrorMessage="Enter password" ControlToValidate="txt_pass" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Password must contain: Minimum 8 Characters atleast 1 Uppercase Alphabet, 1 Lowercase Alphabet, 1 Number and 1 Special Character." ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?%&]{8,}" ControlToValidate="txt_pass"></asp:RegularExpressionValidator>
                            </div>
                            <div class="col-md-6">
                                <label for="exampleConfirmPassword">Confirm password</label>
                                <asp:TextBox ID="txt_repass" runat="server" CssClass="form-control" placeholder="Re-type password" TextMode="Password" BackColor="#1D2026" BorderColor="#00986F" BorderStyle="Solid" BorderWidth="3px" ForeColor="White"></asp:TextBox>
                                <asp:CompareValidator ID="rqrcopm_pass" runat="server" ErrorMessage="Password do not match" ControlToValidate="txt_repass" Display="Dynamic" ForeColor="Red" ControlToCompare="txt_pass"></asp:CompareValidator>
                            </div>
                        </div>
                    </div>
                    <asp:Button ID="btn_register" runat="server" Text="Register" CssClass="btn btn-primary btn-block" OnClick="btn_register_Click" />
                    <div class="text-center">
                        <a class="d-block small mt-3" href="login.aspx">Login Page</a>
                    </div>
                </form>

            </div>
        </div>
    </div>

</body>
</html>
