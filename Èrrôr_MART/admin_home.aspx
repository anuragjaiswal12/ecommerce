<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_home.aspx.cs" Inherits="Èrrôr_MART.admin_home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Home</title>
    <link rel="stylesheet" href="css/StyleSheet.css" />
    <style runat="server">
        body{
            background-image:url('image/bg_sam.jpg');
            background-repeat:no-repeat;
            background-size:cover;
        }
.btn{
    display:inline-block;
    color:black;
    text-align:center;
    text-decoration:none;
}
.dropdown{
    display:inline-block;
    color:black;
}
.dropdown-content{
    display:none;
    background-color:aqua; 
    position:absolute;
    min-width:160px;
    box-shadow:0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index:1;
}
.dropdown-content a{
    color:black;
    padding:12px 16px;
    text-decoration:none;
    display:block;
    text-align:left;
}
.dropdown-content a:hover{
    background-color:black;
}
.dropdown:hover .dropdown-content{
    display:block;
}
.sec{
    justify-content:center;
    align-items:center;
}
.det{
    margin-top:11vh;
    width: 45vw;
    height: 66vh;
    background: rgba( 155, 155, 155, 0.25 );
    box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
    backdrop-filter: blur( 4px );
    -webkit-backdrop-filter: blur( 4px );
    border-radius: 10px;
    border: 1px solid rgba( 255, 255, 255, 0.18 );
}
.con{
    justify-content:center;
    align-items:center;
}
.test{
    justify-content:center;
    align-items:center;
}
.con h2{
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    /*padding-left:7vw;*/
    margin-top: 2.5vh;
}
ul li{
    list-style:none;
}
ul li a{
    color:black;
    padding:12px 16px;
    text-decoration:none;
    display:block;
    text-align:left;
}
ul li a:hover.ttl{
    background-color:lawngreen;
}
#limg:hover{
    background-color:red;
}
.count{
    
}
#lbl_ttl_c{
    padding:4vw;
}
#lbl_ttl_b{
    padding:4vw;
}
#lbl_ttl_o{
    padding:4vw;
}
#btn_logout{
        display: block;
        color: black;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
        background-color: aliceblue;

}
#btn_logout:hover{
    background-color: #ff0000;
}

    </style>
    <meta name="viewport" content="width=device-width,initial-scale=1.0" />

</head>
<body>
    <form id="form1" runat="server">
        <ol>
        <li id="limg" class="nav-item"><img src="image/logo.png" height="50" width="130" /></li>
        
        <li class="dropdown"><a href="javascript:void(0)" class="btn">Product</a>
            <div class="dropdown-content">
                <a href="add_prod.aspx">Add Product</a>
                <a href="view_prod.aspx">View Product</a>
            </div>
        </li>
        <li><a href="view_cust.aspx">View Customer</a></li>
        <li><a href="view_booking.aspx">View Booking</a></li>

        <li style="float:right"><asp:Button CssClass="active" ID="btn_logout" runat="server" Text="Logout" OnClick="btn_logout_Click"/></li>
        </ol>
       <center>
        <div class="sec">
            <div class="det">
                <div class="con">
                    <h2>Admin Page</h2>
                    <ul style="justify-content:center;align-items:center;">
                        <li>
                            <a href="view_cust.aspx" class="ttl">
                                <h4>Total Customer</h4><br />
                                <center>
                                <asp:Label ID="lbl_ttl_c" runat="server"></asp:Label>
                                </center>
                            </a>
                        </li>
                        <li>
                            <a href="view_prod.aspx" class="ttl">
                                <h4>Total Product</h4><br />
                                <center>
                                <asp:Label ID="lbl_ttl_p" runat="server"></asp:Label>
                                </center>
                            </a>
                        </li>
                        <li>
                            <a href="view_booking.aspx" class="ttl">
                                <h4>Total Order</h4><br />
                                <center>
                                <asp:Label ID="lbl_ttl_o" runat="server"></asp:Label>
                                </center>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
         </div>
           </center>
    </form>
</body>
</html>
