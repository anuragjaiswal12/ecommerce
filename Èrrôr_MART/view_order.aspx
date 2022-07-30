<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view_order.aspx.cs" Inherits="Èrrôr_MART.view_order" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
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
        <asp:GridView ID="gridview1" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="order_id" HeaderText="Order Id" />
                <asp:BoundField DataField="prod_name" HeaderText="Product Name" />
                <asp:TemplateField HeaderText="product Image">
                    <ItemTemplate>
                        <asp:Image ID="prod_img" runat="server" ImageUrl='<%#"data:Image/png;base64,"+Convert.ToBase64String((byte [] )Eval("prod_img")) %>' Height="150px" Width="150px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="cate_name" HeaderText="Category" />
                <asp:BoundField DataField="price" HeaderText="Price" />
                <asp:BoundField DataField="total" HeaderText="Total" /> 
                <asp:BoundField DataField="status" HeaderText="Status" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
