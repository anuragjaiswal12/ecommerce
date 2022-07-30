<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="set_s.aspx.cs" Inherits="Èrrôr_MART.set_s" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        center{
            margin-top:10vh;
        }
        #btn_set{
            background-color:black;
            color:red;
            margin-top: 2vh;
            padding-bottom: 10px;
            padding-top: 10px;
            padding-left: 15px;
            padding-right: 15px;
            border-radius: 6px;
            border: 1px solid;
        }
        #lbl_cust_name,#lbl_prod_name,#lbl_ttl{
            color:black;
            font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin-left:1vw;
            margin-top: 2.5vh;
            height:4vh;

        }
        #ddl_status{
            height:4vh;
            border-radius:20px;
            width:6vw;
            margin-top:2.5vh;
            margin-left:1vw;
        }
        #cust_name,#prod_name,ttl,#lbl_status{
            color:black;
            font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
            margin-top:2.5vh;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <center>
                <asp:Image ID="prod_img" runat="server" AlternateText="Product Image" Height="150px" Width="150px" /><br />
                <asp:Label ID="cust_name" runat="server" Text="Customer Name:"></asp:Label>
                <asp:Label ID="lbl_cust_name" runat="server"></asp:Label><br />
                <asp:Label ID="prod_name" runat="server" Text="Product Name:"></asp:Label>
                <asp:Label ID="lbl_prod_name" runat="server"></asp:Label><br />   
                <asp:Label ID="ttl" runat="server" Text="Total:"></asp:Label>
                <asp:Label ID="lbl_ttl" runat="server"></asp:Label><br />
                <asp:Label ID="lbl_status" runat="server" Text="Status:"></asp:Label>
                <asp:DropDownList ID="ddl_status" runat="server" AutoPostBack="true"></asp:DropDownList><br />
                <asp:Button ID="btn_set" Text="Update Status" runat="server" OnClick="btn_set_Click" />
            </center>
        </div>
    </form>
</body>
</html>
