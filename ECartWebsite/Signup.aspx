<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Signup </title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="Google-Chrome" />

    <link href="css/StyleSheet.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>

                        </button>
                        <a class="navbar-brand" href="Default.aspx"><span>
                            <img src="icons/safeIcons.png" alt="EcartWebsite" height="30" /></span>MyEcartSite </a>

                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li ><a href="Default.aspx">Home</a> </li>
                            <li><a href="#">About</a> </li>
                            <li><a href="#">Contact</a> </li>
                            <li><a href="#">Blog</a> </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Products<b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li class="dropdown-header">Men</li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#">Shirts</a></li>
                                    <li><a href="#">Pants</a></li>
                                    <li><a href="#">Denims</a></li>

                                    <li role="separator" class="divider"></li>

                                    <li class="dropdown-header">Women</li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#">Top</a></li>
                                    <li><a href="#">Leggings</a></li>
                                    <li><a href="#">Denims</a></li>

                                </ul>

                            </li>
                            <li class="active"><a href="Signup.aspx">Registration</a> </li>
                            <li><a href="Signin.aspx">SignIN</a></li>
                            <li><a href="Regusers.aspx">Registered Users</a> </li>
                        </ul>
                    </div>
                </div>



            </div>

        </div>

        <!--signup page-->
        <div class="center-page">
            <!--<asp:HiddenField ID="hfUserID" runat="server" />-->
            <label class="col-xs-11">Username:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtUname" runat="server" Class="form-control" placeholder="Enter UserName"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="UserName cannot be blank" ControlToValidate="txtUname" ForeColor="Red"></asp:RequiredFieldValidator>  
            </div>

            <label class="col-xs-11">Password:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtPass" runat="server" Class="form-control" TextMode="Password" placeholder="Enter your Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Password cannot be blank" ControlToValidate="txtPass" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPass" ErrorMessage="Password must have Minimum eight characters, at least one letter and one number" ForeColor="Red" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$"></asp:RegularExpressionValidator>  
            </div>

            <label class="col-xs-11">Confirm Password:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtCPass" runat="server" Class="form-control" TextMode="Password" placeholder="Confirm your Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPass" ControlToValidate="txtCPass" ErrorMessage="Password and confirm password must be same" ForeColor="Red"></asp:CompareValidator> 
            </div>

            <label class="col-xs-11">City:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtName" runat="server" Class="form-control" placeholder="Enter the City you live in"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="City cannot be blank" ControlToValidate="txtName" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>

            <label class="col-xs-11">Email</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtMail" runat="server" Class="form-control" placeholder="Enter your Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email cannot be blank" ControlToValidate="txtMail" ForeColor="Red"></asp:RequiredFieldValidator> 
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtMail" ErrorMessage="Enter proper email format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>  
            </div>
            <label class="col-xs-11"></label>
            <div class="col-xs-11">
           <asp:Button ID="btnSignup" runat="server" CssClass="btn btn-primary" Text="Signup" OnClick="btnSignup_Click" />
                <asp:Label ID="lbltext" runat="server" Text=""></asp:Label>
            </div>


        </div>

         <!--Footer Start-->
        <footer class="footer-pos">
            <div class="container">
                <p class="pull-right"><a href="#">Back To Top</a></p>
                <p>&copy;Cwi2022 &middot;<a href="Default.aspx">Home</a>&middot;<a href="#">About</a></p>
            </div>
        </footer>

         <!--Footer end-->
    </form>
</body>
</html>
