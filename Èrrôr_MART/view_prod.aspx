<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view_prod.aspx.cs" Inherits="Èrrôr_MART.view_prod" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        h2{
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    /*padding-left:7vw;*/
    margin-top: 2.5vh;
    margin-left:40vw;
    align-items:center;
}
.grid{
    justify-content:center;
    align-items:center;
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
        <div class="grid">
        
                    <h2>View Product</h2>
                    <asp:GridView ID="gridview1" runat="server" AutoGenerateColumns="false" DataKeyNames="prod_id" OnRowCommand="gridview1_RowCommand">
                        <Columns>
                            <asp:BoundField DataField="prod_id" HeaderText="Product Id" />
                            <asp:BoundField DataField="prod_name" HeaderText="Product Name" />
                            <asp:BoundField DataField="prod_disc" HeaderText="Discription" />
                            <asp:BoundField DataField="price" HeaderText="Price" />
                            <asp:TemplateField HeaderText="product Image">
                            <ItemTemplate>
                            <asp:Image ID="prod_img" runat="server" ImageUrl='<%#"data:Image/png;base64,"+Convert.ToBase64String((byte [] )Eval("prod_img")) %>' Height="150px" Width="150px" />
                              </ItemTemplate>
                             </asp:TemplateField>
                            <asp:ButtonField ButtonType="Image" CommandName="remove" ImageUrl="~/image/remove.jpeg" ControlStyle-Height="75px" ControlStyle-Width="75px"/>
                        </Columns>
                    </asp:GridView>
        </div>
    </form>
</body>
</html>
