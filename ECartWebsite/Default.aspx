<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My EcartWebsite</title>

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
                        <a class="navbar-brand" href="Default.aspx"><span><img src="icons/safeicons.png" alt="EcartWebsite" height="30" /></span>MyEcartSite </a>

                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href="Default.aspx">Home</a> </li>
                            <li ><a href="#">About</a> </li>
                            <li ><a href="#">Contact</a> </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Shop<b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li class="dropdown-header">Men</li>
                                    <li role="separator" class ="divider"></li>
                                    <li><a href="#">Shirts</a></li>
                                    <li><a href="#">Pants</a></li>
                                    <li><a href="#">Denims</a></li>

                                    <li role="separator" class ="divider"></li>

                                    <li class="dropdown-header">Women</li>
                                    <li role="separator" class ="divider"></li>
                                    <li><a href="#">Top</a></li>
                                    <li><a href="#">Leggings</a></li>
                                    <li><a href="#">Denims</a></li>

                                </ul>
                            
                            </li>
                           <li ><a href="Signup.aspx">Registration</a> </li>
                            <li><a href="Signin.aspx">SignIN</a> </li>
                            <li ><a href="Regusers.aspx">Registered Users</a> </li>

                        </ul>
                    </div>
                </div>



            </div>
            
            <!--image slider1 -->
            <div class="container">
                <h2>Carousel Example</h2>
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="imageslider/4.jpg" alt="Los Angeles" style="width: 100%; height:300px;"/>
                            <div class="carousel-caption">
                                <h3>Mobile Shopping</h3>
                                <p>Buy all new moto a12 5g!</p>
                            </div>
                        </div>

                        <div class="item">
                            <img src="imageslider/6.jpg" alt="Chicago" style="width: 100%;height:300px;" />
                            <div class="carousel-caption">
                                <h3>Shop All Clothing</h3>
                                <p>Purchase the all Clothing upto 70% discount!</p>
                            </div>
                        </div>

                        <div class="item">
                            <img src="imageslider/3.png" alt="New york" style="width: 100%;height:300px;" />
                            <div class="carousel-caption" >
                                <h3>Shop Smartphones Now</h3>
                                <p>Get upto 30% discount on all the latest Smartphones!</p>
                            </div>
                        </div>
                    </div>

                    <!-- Left and right controls -->
                    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
            <!--image slider end-->




        </div>

        <hr />
        <!--Middle contents start-->
        <div class="container center">
            <div class="row">
                <div class ="col-lg-4">
                    <img class="img-circle" src="Mobile/iphone11.jpeg" alt="iphone" width="140" height="140" />
                    <h2>Mobiles</h2>
                    <p>Shoot 4K videos, beautiful portraits, and sweeping landscapes with the all-new dual-camera system. Capture your best low-light photos with Night mode. See true-to-life color in your photos, videos, and games on the 6.1-inch (15.5 cm diagonal) Liquid Retina display. Experience unprecedented performance with A13 Bionic for gaming, augmented reality (AR), and photography. Do more and charge less with all-day battery life. And worry less with water resistance up to 2 meters for 30 minutes.</p>
                    <p><a class="btn btn-default" href="#" role="button">View More &raquo;</a></p>
                </div>


                <div class ="col-lg-4">
                    <img class="img-circle" src="Images/Shoes.jpeg" alt="Shoes" width="140" height="140" />
                    <h2>Shoes</h2>
                    <p>
                        Lightweight & Breathable :
                        Exclusive design and durable materials every step feels light and breezy. Breathable, free-moving fabrics which adjust according to your foot and creates an astoundingly easy-going experience.

                        Non Slip & Shockproof :
                        Great engineering strikes a balance in style, made in the potent design and latest fashion trends. Made for long-term wear, with extra emphasis on providing cushion to the feet, removing heel strain.

                        Comfort Sole & Flexible Walk :
                        The outsoles are made by an air cushion, doubling the effect of shock absorption. Besides, these shoes perform excellent in durability and are also slip resistant. It provides push cushioning comfort for foot pain relief and helps relieve pressure while conforming to your every step
                    </p>
                    <p><a class="btn btn-default" href="#" role="button">View More &raquo;</a></p>
                </div>

                <div class ="col-lg-4">
                    <img class="img-circle" src="Images/tshirt.jpeg" alt="tshirt" width="140" height="140" />
                    <h2>tshirt</h2>
                    <p>Durable stitch and Quality finish. These T-shirts are stitched for higher durability using the best technology in the industry. After stitching, these products are finished and Quality checked for Size and any kinds of defects before packing. This assures the best of Quality and Value for money.</p>
                    <p><a class="btn btn-default" href="#" role="button">View More &raquo;</a></p>
                </div>

            </div>
        </div>
        <!--Middle content end-->

         <!--Footer Start-->
        <footer>
            <div class="container">
                <p class="pull-right"><a href="#">Back To Top</a></p>
                <p>&copy;Cwi2022 &middot;<a href="Default.aspx">Home</a>&middot;<a href="#">About</a></p>
            </div>
        </footer>

         <!--Footer end-->


    </form>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.js">
    </script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
