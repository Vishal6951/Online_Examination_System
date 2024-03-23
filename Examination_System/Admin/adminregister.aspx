<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminregister.aspx.cs" Inherits="Examination_System.Admin.adminregister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Bootstrap core CSS-->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this register-->
    <link href="../assets/css/custom.css" rel="stylesheet">
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

    <div class="container" style="margin-top:10%;margin-left:19%;">
        <div class="card card-register mx-auto mt-5">
            <div class="card-header">Register an Account</div>
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
                            <div class="col">
                                <label for="exampleInputName">Name </label>
                                <asp:TextBox ID="txt_adminame" runat="server" CssClass="form-control" placeholder="Enter a name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rqr_name" runat="server" ErrorMessage="Enter first name" ControlToValidate="txt_adminame" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <asp:TextBox ID="txt_adminemail" runat="server" CssClass="form-control" placeholder="Enter email" TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rqr_emil" runat="server" ErrorMessage="Enter email" ControlToValidate="txt_adminemail" Display="Dynamic" ForeColor="Red" ></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rqrexpre_email" runat="server" ErrorMessage="Enter validate email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"  ControlToValidate="txt_adminemail" Display="Dynamic" ForeColor="Red" ></asp:RegularExpressionValidator>
                          </div>
                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-6">
                                <label for="exampleInputPassword1">Password</label>
                                <asp:TextBox ID="txt_adminpass" runat="server" CssClass="form-control" placeholder="Enter password" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rqr_pass" runat="server" ErrorMessage="Enter password" ControlToValidate="txt_adminpass" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-6">
                                <label for="exampleConfirmPassword">Confirm password</label>
                                <asp:TextBox ID="txt_repass" runat="server" CssClass="form-control" placeholder="Re-type password" TextMode="Password"></asp:TextBox>
                                <asp:CompareValidator ID="rqrcopm_pass" runat="server" ErrorMessage="Password do not match" ControlToValidate="txt_repass" Display="Dynamic" ForeColor="Red" ControlToCompare="txt_adminpass" ></asp:CompareValidator>
                                 </div>
                        </div>
                    </div>
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary btn-block" Text="Register" OnClick="btn_addadmin_Click" />
                    <div class="text-center">
                        <a class="d-block small mt-3" href="login.aspx">Login Page</a>
                    </div>
                </form>
                <asp:Panel ID="panel_addamin_warning" runat="server" Visible="false">
                        <br />
                        <div class="alert alert-danger text-center">
                            <asp:Label ID="lbl_addaminwarning" runat="server" />
                        </div>
                    </asp:Panel>

            </div>
        </div>
    </div>

</body>
</html>

