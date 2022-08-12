<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Regusers.aspx.cs" Inherits="Regusers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Our Active Users</title>

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
      
            <div class ="navbar navbar-default navbar-fixed-top " role ="navigation"  >
            <div class ="container ">
                <div class ="navbar-header">
                    <button type="button" class ="navbar-toggle " data-toggle="collapse" data-target=".navbar-collapse">
                        <span class ="sr-only">Toggle navigation</span>
                        <span class ="icon-bar"></span>
                        <span class ="icon-bar"></span>
                        <span class ="icon-bar"></span>

                    </button>
                    <a class ="navbar-brand" href ="Default.aspx" ><span ><img src="icons/safeIcons.png" alt="MyEShoppoing" height ="30" /></span>MyEShopping </a>

                </div>
                <div class ="navbar-collapse collapse">
                    <ul class ="nav navbar-nav navbar-right">
                        <li ><a href ="Default.aspx">Home</a> </li>
                         <li ><a href="About.aspx">About</a> </li>
                        <li ><a href ="#">Contact US</a> </li>
                       <%-- <li ><a href ="#">Blog-</a> </li>--%>
                        <li class ="drodown">
                            <a href ="#" class ="dropdown-toggle" data-toggle="dropdown">Products<b class ="caret"></b></a>
                            <ul class ="dropdown-menu ">
                                <li class ="dropdown-header ">Men</li>
                                <li role="separator" class ="divider "></li> 
                                <li> <a href ="#">Shirts</a></li>
                                <li> <a href ="#">Pants</a></li>
                                <li> <a href ="#">Denims</a></li>
                                <li role="separator" class ="divider "></li>
                                <li class ="dropdown-header ">Women</li>
                                <li role="separator" class ="divider "></li>
                                <li> <a href ="#">Top</a></li>
                                <li> <a href ="#">Leggings</a></li>
                                <li> <a href ="#">Denims</a></li>
                            </ul>

                        </li>
                        <li ><a href ="SignUp.aspx">SignUp</a> </li>
                        <li ><a href ="SignIn.aspx">SignIn</a> </li>
                        <li class="active"><a href="Regusers.aspx">Registered Users</a> </li>
                    </ul>
                </div>
            </div>
        </div>
            </div>

            <div class="center-page">
            <asp:GridView id="gdData" runat="server" class="table table-bordered  table-responsive table-hover" AutoGenerateColumns="false" HorizontalAlign="Center" Height="150px" Width="300px" >
                
                <Columns>
                    <asp:Boundfield DataField="Username" HeaderText="User Name"  />
                    <asp:Boundfield DataField="Email" HeaderText="Email"   />
                    <asp:Boundfield DataField="City" HeaderText="City"   />

                </Columns>
            </asp:GridView>
        </div>

        <footer class="footer-pos">
            <div class="container">
                <p class="pull-right"><a href="#">Back To Top</a></p>
                <p>&copy;Cwi2022 &middot;<a href="Default.aspx">Home</a>&middot;<a href="#">About</a></p>
            </div>
        </footer>
    </form>
</body>
</html>
