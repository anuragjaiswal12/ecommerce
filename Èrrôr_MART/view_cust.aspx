<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view_cust.aspx.cs" Inherits="Èrrôr_MART.view_cust" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <style>
        h2{
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    /*padding-left:7vw;*/
    margin-top: 2.5vh;
    justify-content:center;
    /*/margin-left:40vw;*/
    align-items:center;
}

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


    </style>
    <meta name="viewport" content="width=device-width,initial-scale=1.0" />

</head>
<body>
    <form id="form1" runat="server">
        
       <h2 style="text-align-last:center;">View Customer</h2>
                    <asp:GridView ID="gridview1" runat="server" AutoGenerateColumns="false" DataKeyNames="cust_id">
                        <Columns>
                            <asp:BoundField DataField="cust_id" HeaderText="Customer Id" />
                            <asp:BoundField DataField="name" HeaderText="Customer Name" />
                            <asp:BoundField DataField="user_name" HeaderText="Username" />
                            <asp:BoundField DataField="email" HeaderText="E-mail" />
                            <asp:BoundField DataField="phone" HeaderText="Phone" />
                            <asp:BoundField DataField="address" HeaderText="Address" />
                            <asp:BoundField DataField="city" HeaderText="City" />
                            </Columns>
                    </asp:GridView>
                
    </form>
</body>
</html>
