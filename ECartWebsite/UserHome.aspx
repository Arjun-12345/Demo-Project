<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="UserHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
                        <a class="navbar-brand" href="Default.aspx"><span><img src="icons/safeIcons.png" alt="EcartWebsite" height="30" /></span>MyEcartSite </a>

                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href="Default.aspx">Home</a> </li>
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
                            <li>
                                <asp:Button ID="btnSignout" CssClass="btn btn-default navbar-btn" runat="server" Text="Logout" OnClick="btnSignout_Click" />
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <br />
        
        
        <div class="center" style="margin-top:50px">
            <asp:Label ID="lblMsg" runat="server" CssClass="text-success" ></asp:Label>
        </div>






        <hr />
        <footer class="footer-pos" >
            <div class="container">
                <p class="pull-right"><a href="#">Back To Top</a></p>
                <p>&copy;Cwi2022 &middot;<a href="Default.aspx">Home</a>&middot;<a href="#">About</a></p>
            </div>
        </footer>
    </form>
</body>
</html>
