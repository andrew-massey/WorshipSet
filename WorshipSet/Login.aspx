<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WorshipSet.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>WorshipSet - Login</title>
    <style type="text/css">
        body
        {
            font-family:Arial;
            color:white;
        }

</style>
</head>
<body runat="server" bgcolor="green">
    <asp:Label runat="server" Font-Size="XX-Large">Welcome to WorshipSet!</asp:Label>
   
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Table runat="server" CellSpacing="20">
            <asp:TableRow >
            <asp:TableCell>
                <asp:Label runat="server">User Name: </asp:Label> 
            </asp:TableCell>
            <asp:TableCell>
                 <asp:TextBox runat="server" ID="userText"></asp:TextBox>
            </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
            <asp:TableCell>
                <asp:Label runat="server">Password: </asp:Label> 
            </asp:TableCell>
            <asp:TableCell>
                 <asp:TextBox runat="server" TextMode="Password" ID="passText"></asp:TextBox>
            </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Button runat="server" Text="Log In" OnClick="LogInUser"/>
                </asp:TableCell>
                <asp:TableCell />
                <asp:TableCell>

                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>
</html>
