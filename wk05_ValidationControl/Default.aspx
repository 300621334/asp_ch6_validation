<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Name:&nbsp;
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rqdName" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="Please enter a name" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
&nbsp;....<br />
        User Name:
        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rqdUsername" runat="server" ControlToValidate="txtUserName" Display="Dynamic" ErrorMessage="Please type a user name" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
&nbsp;....
        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtUserName" Display="None" ErrorMessage="User Name Already Exists" ForeColor="#FF6600" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
        <br />
        Password: <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rqdPassword" runat="server" ControlToValidate="txtPassword" Display="Dynamic" ErrorMessage="Please enter a password" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
&nbsp;....<br />
        Confirm Password:
        <asp:TextBox ID="txtConfirm" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rqdConfirm" runat="server" ControlToValidate="txtConfirm" Display="Dynamic" ErrorMessage="Please confirm password" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirm" ErrorMessage="Passwords don't match" ForeColor="Red"></asp:CompareValidator>
&nbsp;....<br />
        Age:
        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtAge" Display="None" ErrorMessage="Age should be 18" ForeColor="#33CC33" Operator="GreaterThanEqual" Type="Integer" ValueToCompare="18"></asp:CompareValidator>
&nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge" Display="None" ErrorMessage="Out of range" MaximumValue="30" MinimumValue="18"></asp:RangeValidator>
&nbsp;<asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="txtAge" Display="None" ErrorMessage="Did not enter a number" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
        ....<br />
        Email:
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        Phone:
        <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPhone" ErrorMessage="RegularExpressionValidator" ValidationExpression="^\(\d{3}\)\-\d{3}\-\d{4}$"></asp:RegularExpressionValidator>
        <br />
        <br />
        Double click CustomValidator&nbsp; -
        <br />
        <br />
        ^\(\d{3}\)\-\d{3}\-\d{4}$<br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <br />
        <br />
        <br />
        <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
    
    </div>
    </form>
</body>
</html>
