<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewcart.aspx.cs" Inherits="Èrrôr_MART.viewcart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
body {
    margin: 0;
    padding: 0;
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
        <div>
            <asp:GridView ID="gridview1" AutoGenerateColumns="false" runat="server" OnRowCommand="gridview1_RowCommand">
                <Columns>
                    <asp:BoundField DataField="prod_id" HeaderText="Product Id" />
                    <asp:BoundField DataField="prod_name" HeaderText="Product Name" />
                    <asp:BoundField DataField="prod_disc" HeaderText="Discription" />
                    <asp:BoundField DataField="price" HeaderText="Price" />
                    <asp:BoundField DataField="cate_name" HeaderText="Category" />
                    <asp:TemplateField HeaderText="Quantity">
                        <ItemTemplate>
                            <asp:TextBox ID="qty" runat="server" TextMode="Number" Text="1"></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Product Image">
                        <ItemTemplate>
                            <asp:Image ID="img_prod" runat="server" ImageUrl='<%#"data:Image/png;base64,"+Convert.ToBase64String((byte [])Eval("prod_img")) %>' Height="100px" Width="100px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:ButtonField CommandName="order" ButtonType="Image" ImageUrl="~/image/order.png" ControlStyle-Height="100px" ControlStyle-Width="150px"/>
                </Columns>

            </asp:GridView>

        </div>
        
    </form>
</body>
</html>
