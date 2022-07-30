<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view_prod_g.aspx.cs" Inherits="Èrrôr_MART.view_prod_g" %>

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
input[type=button]{
    
}
input[type=text]{
    width:15px;
    background-color:blue;
    color:black;
    border-radius:30px;
    text-align-last:center;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="gridview1" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="prod_id" HeaderText="Product Id" />
                    <asp:BoundField DataField="prod_name" HeaderText="Product Name" />
                    <asp:BoundField DataField="prod_disc" HeaderText="Discription" />
                    <asp:BoundField DataField="price" HeaderText="Price" />
                    <asp:BoundField DataField="cate_id" HeaderText="Category" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Image ID="img_prod" runat="server" ImageUrl='<%#"data:Image/png;base64,"+Convert.ToBase64String((byte [])Eval("prod_img")) %>' Height="100px" Width="100px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
