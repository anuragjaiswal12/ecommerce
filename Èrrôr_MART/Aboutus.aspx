
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Aboutus.aspx.cs" Inherits="Èrrôr_MART.Aboutus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/StyleSheet.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <style>
        body {
    background:white;
    min-height: 100vh;
}

.social-link {
    width: 30px;
    height: 30px;
    border: 1px solid white;
    display: flex;
    align-items: center;
    justify-content: center;
    color: white;
    border-radius: 50%;
    transition: all 0.3s;
    font-size: 0.9rem;
}

.social-link:hover, .social-link:focus {
    background: #ddd;
    text-decoration: none;
    color: #555;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <ol>
        <li id="limg" class="nav-item"><img src="image/logo.png" height="50" width="130" /></li>
        <li><a href="index.aspx">Home</a></li>
        <li><a href="Aboutus.aspx">About</a></li>
        
        <li><a href="cust_reg.aspx">Registration</a></li>
        <li><a href="cust_login.aspx">Login</a></li>

        <li style="float:right"><a class="active" href="admin_login.aspx">Admin Login</a></li>
        </ol>
        


<div class="container">
    <div class="row text-center" style="justify-content:center;align-items:center;margin-top:10%">

       
 
        <!-- Team item -->
        <div class="col-xl-3 col-sm-6 mb-5" id="error">
            <div class="bg-primary rounded shadow-sm py-5 px-4"><img src="image/anurag.jpg" alt="" width="100" class="img-fluid rounded-circle mb-3 img-thumbnail shadow-sm">
                <h5 class="mb-0" style="color:white;">Anurag Jaiswal</h5><span class="small text-uppercase" style="color:lightyellow;">CEO - Founder</span>
                <ul class="social mb-0 list-inline mt-3" style="justify-content:center;align-items:center;display:flex;">
                    <li class="list-inline-item"><a href="https://twitter.com/iamjaiswal_404" class="social-link"><i class="fa fa-twitter"></i></a></li>
                    <li class="list-inline-item"><a href="https://instagram.com/iamjaiswal_404" class="social-link"><i class="fa fa-instagram"></i></a></li>
                    <li class="list-inline-item"><a href="https://www.linkedin.com/in/anurag-jaiswal-30b22920b/" class="social-link"><i class="fa fa-linkedin"></i></a></li>
                </ul>
            </div>
        </div><!--End -->
            </div>
</div>
    </form>
    <script type="text/javascript" src="js/vanilla-tilt.babel.js"></script>
    <script type="text/javascript">
	VanillaTilt.init(document.querySelector("#error"), {
		max: 25,
		speed: 400
	});

	VanillaTilt.init(document.querySelectorAll("#error"));
</script>
</body>
</html>
