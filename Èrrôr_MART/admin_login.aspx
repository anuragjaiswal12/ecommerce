<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_login.aspx.cs" Inherits="Èrrôr_MART.admin_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    
    <style>
body {
    margin: 0;
    padding: 0;
}

section {
    width: 100vw;
    height: 100vh;
    background-image: url('image/bg_img.jpg');
    display: flex;
    justify-content: center;
    align-items: center;
}

.login {
    position: absolute;
    left: 0;
    right: 0;
    top: 0;
    bottom: 0;
    width: 100vw;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
}

.container {
    width: 45vw;
    height: 66vh;
    background: rgba( 155, 155, 155, 0.25 );
    box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
    backdrop-filter: blur( 4px );
    -webkit-backdrop-filter: blur( 4px );
    border-radius: 10px;
    border: 1px solid rgba( 255, 255, 255, 0.18 );
}



.container img {
    width: 3.5vw;
    height: 7vh;
    padding-left: 0vh;
}

.content h2 {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    /*padding-left:7vw;*/
    margin-top: 2.5vh;
}

.content input[type=text],#pwd {
    height: 30px;
    border: 0;
    margin-top: 2.5vh;
    border-radius: 20px;
}

.content input[type=submit] {
    color: white;
    margin-top: 2vh;
    padding-bottom: 10px;
    padding-top: 10px;
    padding-left: 15px;
    padding-right: 15px;
    border-radius: 6px;
    border: 1px solid;
    background-color: black;
}

.content input[placeholder] {
    font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
    padding-left: 1vw;
    font-size: 13px;
}
    </style>
     <meta name="viewport" content="width=device-width,initial-scale=1.0" />
</head>
<body>
    <form id="form1" runat="server">
        <section>
            
        </section>
        <div class="login">
            <div class="container">
                
                <div class="content">
                    <center>
                    <h2>Admin Login</h2>
                    <asp:TextBox ID="user" runat="server" placeholder="Username"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter username!!" ValidationGroup="login" ControlToValidate="user"></asp:RequiredFieldValidator><br />
                    <asp:TextBox ID="pwd" TextMode="Password" runat="server" placeholder="Password"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter password!!" ValidationGroup="login" ControlToValidate="pwd"></asp:RequiredFieldValidator><br />
                    <asp:Button ID="Submit" runat="server" Text="Login" ValidationGroup="login" OnClick="Submit_Click"/>
                    <br />
                    <p>Don't want to login?<a href="index.aspx">Go Back</a></p>
                    </center>
                    
                    
                </div>
            </div>
        </div>
    </form>
</body>
</html>
