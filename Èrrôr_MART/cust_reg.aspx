<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cust_reg.aspx.cs" Inherits="Èrrôr_MART.cust_reg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
     <style runat="server" media="screen">
body {
    margin: 0;
    padding: 0;
}

section {
    width: 100vw;
    height: 140vh;
    background-image: url('image/reg_bg.jpeg');
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
   
    margin-top:2vh;
    width: 50vw;
    height: 122vh;
    background: rgba( 155, 155, 155, 0.25 );
    box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
    backdrop-filter: blur( 4px );
    -webkit-backdrop-filter: blur( 4px );
    border-radius: 10px;
    border: 1px solid rgba( 255, 255, 255, 0.18 );
}


.content h2 {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    /*padding-left:7vw;*/
    margin-top: 1.8vh;
    margin-left: 3vw;
}

.content input[type=text] {
    height: 28px;
    border: 0;
    width:60vh;
    justify-content:center;
    margin-top: 1vh;
    margin-bottom:1vh;
    align-items:center;
    border-radius: 20px;
}
.content{
    position:relative;
    margin-left:4vw;
    margin-top:10vh;
    
}
#txt_pwd,#txt_phone{
    height: 28px;
    border: 0;
    width:60vh;
    justify-content:center;
    margin-top: 1vh;
    margin-bottom:1vh;
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
                    <h2>Registration</h2>
                    <asp:Label ID="lbl_cust_id" runat="server" Text="Customer Id"></asp:Label><br />
                    <asp:TextBox ID="txt_cust_id" runat="server" placeholder="Customer Id" Enabled="false"></asp:TextBox>
                    <br />
                    <asp:Label ID="lbl_name" runat="server" Text="Name"></asp:Label><br />
                    <asp:TextBox ID="txt_name" runat="server" placeholder="Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter name!!" ControlToValidate="txt_name"></asp:RequiredFieldValidator><br />
                    <asp:Label ID="lbl_user" runat="server" Text="Username"></asp:Label><br />
                    <asp:TextBox ID="user" runat="server" placeholder="Username"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter Username!!" ControlToValidate="user"></asp:RequiredFieldValidator><br />
                    <asp:Label ID="lbl_email" runat="server" Text="E-mail"></asp:Label><br />
                    <asp:TextBox ID="txt_email" runat="server" placeholder="E-mail"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ErrorMessage="Please enter E-Mail!!" ControlToValidate="txt_email"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter valid E-Mail!!" Display="Dynamic" ControlToValidate="txt_email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br />
                    <asp:Label ID="lbl_phone" runat="server" Text="Phone"></asp:Label><br />
                    <asp:TextBox ID="txt_phone" TextMode="Number" runat="server" placeholder="Phone No."></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic" ErrorMessage="Please enter Phone No.!!" ControlToValidate="txt_phone"></asp:RequiredFieldValidator>
                    <br />
                    <asp:Label ID="lbl_add" runat="server" Text="Address"></asp:Label><br />
                    <asp:TextBox ID="txt_add" runat="server" placeholder="Address"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter Address!!" ControlToValidate="txt_add"></asp:RequiredFieldValidator><br />
                    <asp:Label ID="lbl_city" runat="server" Text="City"></asp:Label><br />
                    <asp:TextBox ID="txt_city" runat="server" placeholder="City"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Please enter City!!" ControlToValidate="txt_city"></asp:RequiredFieldValidator><br />
                    <asp:Label ID="lbl_pwd" runat="server" Text="Password"></asp:Label><br />
                    <asp:TextBox ID="txt_pwd" TextMode="Password" runat="server" placeholder="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please enter Password!!" ControlToValidate="txt_pwd"></asp:RequiredFieldValidator><br />
                    <asp:Button ID="signup" runat="server" Text="Sign Up" OnClick="signup_Click" />
                    <a href="index.aspx">GO Back!!</a>
                    <br />
                    <asp:Label ID="lbl_disp_m" runat="server" Text=""></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
