<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="c_pwd.aspx.cs" Inherits="Èrrôr_MART.c_pwd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style runat="server" media="screen">
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

.social {
    padding-left: 2.5vw;
    padding-top: 4vh;
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
    margin-left: 4vw;
}

.content input[type=password] {
    height: 28px;
    border: 0;
    width:60vh;
    justify-content:center;
    margin-top: 1.5vh;
    margin-bottom:1.5vh;
    align-items:center;
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
.content{
    position:relative;
    margin-left:4vw;
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
                    <h2>Change Password</h2>
                    <asp:Label ID="lbl_o_pwd" Text="Old Password" runat="server"></asp:Label><br />
                    <asp:TextBox ID="txt_o_pwd" TextMode="Password" placeholder="Old Password" runat="server"></asp:TextBox><br />
                    <asp:Label ID="lbl_n_pwd" Text="New Password" runat="server"></asp:Label><br />
                    <asp:TextBox ID="txt_n_pwd" TextMode="Password" placeholder="New Password" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_n_pwd" ErrorMessage="Can't be null!"></asp:RequiredFieldValidator><br />
                    <asp:Label ID="lbl_c_pwd" Text="Confirm Password" runat="server"></asp:Label><br />
                    <asp:TextBox ID="txt_c_pwd" TextMode="Password" placeholder="Confirm Password" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" Display="Dynamic" runat="server" ControlToValidate="txt_c_pwd" ErrorMessage="Can't be null!"></asp:RequiredFieldValidator><br />
                    <br />
                    <asp:Button ID="btn_c_pwd" runat="server" Text="Update Password" OnClick="btn_c_pwd_Click" /><br />
                    <asp:CompareValidator ID="CompareValidator1" Display="Dynamic" runat="server" ControlToValidate="txt_n_pwd" ControlToCompare="txt_c_pwd" ErrorMessage="Both password should be same!"></asp:CompareValidator>
                    <asp:Label ID="disp_m" runat="server"></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
