<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cust_home.aspx.cs" Inherits="Èrrôr_MART.cust_home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/StyleSheet.css" />
    <style>
        body{
            background-image:url('image/body-bg.jpg');
            background-repeat:no-repeat;
            background-size:cover;
        }
        .sec{
    justify-content:center;
    align-items:center;
}
.det{
    width: 45vw;
    height: 66vh;
    background: rgba( 155, 155, 155, 0.25 );
    box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
    backdrop-filter: blur( 4px );
    -webkit-backdrop-filter: blur( 4px );
    border-radius: 10px;
    border: 1px solid rgba( 255, 255, 255, 0.18 );
}
#v_order,#c_pwd,#e_pro,#btn_v_prod,#btn_logout,#viewcart{
        display: block;
        color: black;
        text-align: center;
        padding: 14px 16px;
        text-decoration: none;
        background-color: aliceblue;

}
#v_order:hover,#c_pwd:hover,#e_pro:hover,#btn_v_prod:hover,#btn_logout:hover,#viewcart:hover{
    background-color: #ff0000;
}
.con{
    justify-content:center;
    align-items:center;
}
.con h2{
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    /*padding-left:7vw;*/
    margin-top: 2.5vh;

}
#lbl_name{
    font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
    margin-top:2.5vh;
}
#limg:hover{
    background-color:red;
}
    </style>
    <meta name="viewport" content="width=device-width,initial-scale=1.0" />
</head>
<body>
    <form id="form1" runat="server">
        <ol>
        <li id="limg" class="nav-item"><img src="image/logo.png" height="50" width="130" /></li>
        
        <li><asp:Button ID="btn_v_prod" Text="View Product" runat="server" OnClick="btn_v_prod_Click" /></li>
        <li><asp:Button ID="v_order" Text="View Order" runat="server" OnClick="v_order_Click" /></li>
        <li><asp:Button ID="c_pwd" Text="Change Password" runat="server" OnClick="c_pwd_Click" /></li>
        <li><asp:Button ID="e_pro" Text="Edit Profile" runat="server" OnClick="e_pro_Click" /></li>
        <li><asp:Button ID="viewcart" Text="View Cart" runat="server" OnClick="viewcart_Click" /></li>
        <li style="float:right"><asp:Button CssClass="active" ID="btn_logout" runat="server" Text="Logout" OnClick="btn_logout_Click" /></li>
        </ol>
        <center>
        <div class="sec">
            <div class="det">
                <div class="con">
                    <h2>Customer Page</h2>
                    <asp:HiddenField id="hdn_name" runat="server" />
                    <asp:Label ID="lbl_name" runat="server" Text="Hello " ></asp:Label>
                    <asp:HiddenField ID="hdn_id" runat="server" />
                </div>
            </div>
         </div>
        </center>
    </form>
</body>
</html>
