<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<script>

</script>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <p>Client-side validation done e javaScript(quick but should be activated) & Server-side e C#,VB etc<br>

        ASP.NET validation ctrls do BOTH. InCase JS was disabled on browser then we can chk on serverSide(in onClick of btn) using Page object’s IsValid property, which only returns
True if all the validators. <br>

        For ASP validation to work in web.config we need to enter <b>appSettings</b>..UnobtrusiveValidationMode etc. See the web.config file.
    </p>
        <%--Name--%>
        <asp:Label Text="Name" runat="server" ID="name" /><br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
        <asp:RequiredFieldValidator Display="Dynamic" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name can't be empty!" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator><br />
        
        <%--password--%>
        <asp:Label Text="pass" runat="server" ID="pass" /><br />
        <asp:TextBox TextMode="Password" ID="TextBox2" runat="server"></asp:TextBox><br />
        <asp:RequiredFieldValidator SetFocusOnError="true" Display="Dynamic" ControlToValidate="TextBox2" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password cannot be empty" ForeColor="#FF3300"></asp:RequiredFieldValidator>  <br />

        <%--age--%>
        <asp:Label ID="Label1" runat="server" Text="Age-CompareValidator- operator='greatorThan' type='integer' ValueToCompare='15'"></asp:Label><br />
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
        <asp:CompareValidator ControlToValidate="TextBox3" ValueToCompare="15" Type="Integer" Operator="GreaterThan" ID="CompareValidator1" runat="server" ErrorMessage="Age should be greater than 15" ForeColor="#00CC00"></asp:CompareValidator><br />

        <%--DOB--%>
        <asp:Label ID="Label2" runat="server" Text="DOB like 1/1/1999 -CompareValidator- Operator='DataTypeCheck'"></asp:Label><br />
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br />
        <asp:CompareValidator ControlToValidate="TextBox4" Type="date" Operator="DataTypeCheck" SetFocusOnError="true" ID="CompareValidator2" runat="server" ErrorMessage="You didn't enter a date" ForeColor="#00CC00"></asp:CompareValidator><br />

        <%--email--%>
        <asp:Label ID="Label3" runat="server" Text="email-RegEx"></asp:Label><br />
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br />
        <asp:RegularExpressionValidator ValidationExpression="^\S+@\S+\.\S+$" ControlToValidate="TextBox5" ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegEx did not match" ForeColor="#0066FF" ></asp:RegularExpressionValidator><br />

        

        <%--Buttons: CausesValidation=false will stop client chk--%>
        <asp:Button OnClick="Button1_Click" ID="Button1" runat="server" Text="Button" /><br />
        <asp:Button CausesValidation="false" text="Cancel" OnClick="Button2_Click" ID="Button2" runat="server"  />


        <%--customValidation--%>
        <asp:Label ID="Label4" runat="server" Text="CustomValidator-has: OnServerValidate='' and OnClientValidate=''"></asp:Label><br />
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox><br />
        <asp:CustomValidator OnServerValidate="chkName" ControlToValidate="TextBox6" ID="CustomValidator1" runat="server" ErrorMessage="CustomValidator"></asp:CustomValidator><br />
        <asp:Button OnClick="Button3_Click" ID="Button3" runat="server" Text="chk CustomValidator for Mani" />

        <asp:ValidationSummary ShowMessageBox="false" ID="ValidationSummary1" runat="server" />
        <br />

        <br />
        <br />
        <br />
        <br />


    </div>
    </form>
</body>
</html>
