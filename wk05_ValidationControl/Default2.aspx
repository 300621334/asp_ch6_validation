<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

    <p>By adding ValidationGroup="gp_name" to button & to Validation ctrl(s), 2 buttons act seperate from ea other<br />
        So a btn is linked to certain ctrls vis  Validation ctrls , NOT directly<br />
        SO u have to have validation ctrls for grouping to work<br />
        Any un-grouped ctrls will be PostBack by un-assigned btn if any<br /><br />
        Page.IsValid returns result for sumbitted gp ONLY. ANd for un-submitted gp(s) we have to use " Page.Validate" method, which can receive
as a parameter the name of the validation group to be validated.

    </p>
        <br />


        Group 1:
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required gp1" ValidationGroup="gp1"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" ValidationGroup="gp1" />
        <br /><br /><br /><br />
        


        Group 2:
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter gp2" ValidationGroup="gp2"></asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="Button2" runat="server" Text="Button" ValidationGroup="gp2" />
        <br /><br /><br /><br />
        
        <asp:Button OnClick="Button3_Click" ID="Button3" runat="server" Text="chk Page.Validate('gp2')" />
    
    </div>
    </form>
</body>
</html>
