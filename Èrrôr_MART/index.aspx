<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Èrrôr_MART.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Èrrôr MART</title>
    <link rel="stylesheet" href="css/StyleSheet.css" />
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
        function login() {
            let res = confirm("Login to see your status!");
            if (res) {
                window.location="cust_login.aspx"
            }
        }
    </script>
    <style>
  
.carousel-inner img {
    width: 100%;
    height: 40%;
  }


#gridview1{
    border-collapse:collapse;
    border:1px solid black;
    justify-content:center;
    align-items:center;
}
#gridview1 th{
    background-color:red;
}
#gridview1 tr:nth-child(2n+1){
    background-color:#808080;
}

.carousel-indicators li{
    background-color:blue;
}
#limg:hover{
    background-color:red;
}
hr{
    border-style:none;
    border-top-style:dashed;
    border-color:black;
    border-width:5px;
    width:20%;
}

  </style>
    <meta name="viewport" content="width=device-width,initial-scale=1.0" />
</head>
<body onload="login()">
    <form id="form1" runat="server">
        <ol>
        <li id="limg" class="nav-item"><a href="index.aspx"<img src="image/logo.png" height="50" width="130" /></a></li>
        <li><a href="index.aspx">Home</a></li>
        <li><a href="Aboutus.aspx">About</a></li>
        <li><a href="contact.aspx">Contact Us</a></li>
        <li><a href="cust_reg.aspx">Registration</a></li>
        <li><a href="cust_login.aspx">Login</a></li>

        <li style="float:right"><a class="active" href="admin_login.aspx">Admin Login</a></li>
        </ol>
      

        <div class="container mt-3">

<div id="myCarousel" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators" style="background:transparent;">

    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ul>
  
  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
        <a href="view_prod_g.aspx?cate=1">
      <img src="image/laptop.jpg" alt="Laptop" width="1100" height="500" />
        </a>
    </div>
    <div class="carousel-item">
        <a href="view_prod_g.aspx?cate=2">
      <img src="image/mobile.jpg" alt="Mobile" width="1100" height="500" />
        </a>
    </div>
    <div class="carousel-item">
        <a href="view_prod_g.aspx?cate=3">
      <img src="image/tv.jpg" alt="T.V." width="1100" height="500" />
        </a>
    </div>
  </div>
  
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#myCarousel" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
</div>
<div id="menu" style="justify-content:center;align-items:center;">
    <hr />
        <asp:GridView ID="gridview1" runat="server" AutoGenerateColumns="false" DataKeyNames="prod_id">
        <Columns>
            <asp:BoundField DataField="prod_id" HeaderText="Product Id" />
            <asp:BoundField DataField="prod_name" HeaderText="Prudct Name" />
            <asp:BoundField DataField="prod_disc" HeaderText="Discription" />
            <asp:BoundField DataField="price" HeaderText="Price" />
            <asp:TemplateField HeaderText="Product Image" >
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%#"data:Image/png;base64,"+Convert.ToBase64String((byte [] )Eval("prod_img"))%>'   Height="100px" Width="100px" />
                </ItemTemplate>             
            </asp:TemplateField>          
        </Columns>
    </asp:GridView>
</div>    
    </form>
</body>
</html>
