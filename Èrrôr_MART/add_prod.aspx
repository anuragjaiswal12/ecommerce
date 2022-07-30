<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_prod.aspx.cs" Inherits="Èrrôr_MART.add_prod" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
body {
    margin: 0;
    padding: 0;
}

section {
    width: 100vw;
    height: 100vh;
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
    width: 45vw;
    height: 100vh;
    background: rgba( 155, 155, 155, 0.25 );
    box-shadow: 0 8px 32px 0 rgba( 31, 38, 135, 0.37 );
    backdrop-filter: blur( 4px );
    -webkit-backdrop-filter: blur( 4px );
    border-radius: 10px;
    border: 1px solid rgba( 255, 255, 255, 0.18 );
}
.content{
    margin-top:1.8vh;
    margin-left:3vw;
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
    margin-top: 1.5vh;
    margin-bottom:1.5vh;
    align-items:center;
    border-radius: 20px;
}
#upload_prod_img{
    height: 28px;
    border: 0;
    width:60vh;
    justify-content:center;
    margin-top: 1.5vh;
    margin-bottom:1.5vh;
    align-items:center;
    border-radius: 20px;
}
#ddl_cate
{
    height: 28px;
    border: 0;
    width:60vh;
    justify-content:center;
    margin-top: 1.5vh;
    margin-bottom:1.5vh;
    align-items:center;
    border-radius: 20px;
}
.content{
    position:relative;
    margin-left:4vw;
    margin-top:1.5vh;
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
                    <h2>Add Product</h2>
                    <asp:Label ID="lbl_cust_id" runat="server" Text="Product Id"></asp:Label>
                    <br />
                    <asp:TextBox ID="txt_prod_id" runat="server" Enabled="False"></asp:TextBox>
                    <br />
                    <asp:Label ID="lbl_prod_name" runat="server" Text="Product Name:"></asp:Label>
                    <br />
                    <asp:TextBox ID="txt_prod_name" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label ID="lbl_disc" runat="server" Text="Discription:"></asp:Label>
                    <br />
                    <asp:TextBox ID="txt_disc" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label ID="lbl_price" runat="server" Text="Price:"></asp:Label>
                    <br />
                    <asp:TextBox ID="txt_price" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label ID="lbl_prod_img" runat="server" Text="Product Image:"></asp:Label><br />
                    <asp:FileUpload ID="upload_prod_img" runat="server" />
                    <br />
                    <asp:Label ID="lbl_cate" runat="server" Text="Category:"></asp:Label><br />
                    <asp:DropDownList ID="ddl_cate" runat="server">
                    </asp:DropDownList>
                    <br />
                    <asp:Button ID="btn_ins" runat="server" Text="Insert" OnClick="btn_ins_Click" /><br />
                    <asp:Label ID="disp_m" runat="server" ></asp:Label>
                </div>
            </div>
        </div>
        
    </form>
</body>
</html>
