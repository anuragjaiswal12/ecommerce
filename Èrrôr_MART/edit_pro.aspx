<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="edit_pro.aspx.cs" Inherits="Èrrôr_MART.edit_pro" %>

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

.content input[type=text] {
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
                    <h2>Edit Profile</h2>
                    <asp:Label ID="lbl_email" Text="E-Mail" runat="server"></asp:Label><br />
                    <asp:TextBox ID="txt_email" placeholder="E-Mail" runat="server"></asp:TextBox><br />
                    <asp:Label ID="lbl_phn" Text="Phone No." runat="server"></asp:Label><br />
                    <asp:TextBox ID="txt_phn" placeholder="Phone No." runat="server"></asp:TextBox><br />
                    <asp:Label ID="lbl_add" Text="Address" runat="server"></asp:Label><br />
                    <asp:TextBox ID="txt_add" placeholder="Address" runat="server"></asp:TextBox><br />
                    <asp:Label ID="lbl_city" Text="City" runat="server"></asp:Label><br />
                    <asp:TextBox ID="txt_city" placeholder="City" runat="server"></asp:TextBox><br />
                    <asp:Button ID="btn_update" runat="server" Text="Update profile" OnClick="btn_update_Click" />
                    <br /><asp:Label ID="disp_m" runat="server"></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
