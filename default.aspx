<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="myForm.aspx.cs" Inherits="FormValidations.myForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
 ul{list-style-type:none;}
 li{padding:5px;}
 input,span{display:inline-block;width:200px;}
 .spacer{display:inline-block;widows:100px;}
 .required{display:inline-block;color:red;font-size:10px;}
 </style>

</head>

<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <ul>
 <li>
         <asp:Label ID="lblUserName" runat="server" Text="Username:"></asp:Label>
         <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>

 <asp:RequiredFieldValidator ID="rfvUserName" runat="server"
        ErrorMessage="*" ControlToValidate="txtUserName" Display="Dynamic"
        ValidationGroup="group1" CssClass="required" SetFocusOnError="True">
</asp:RequiredFieldValidator>

        <div class="spacer"></div>
<asp:CustomValidator ID="cvUserName" runat="server"
        ErrorMessage="Username is Not Unique"
        ControlToValidate="txtUserName" Display="Dynamic"
        OnServerValidate="vldUsername_ServerValidate"
        ValidationGroup="group1" CssClass=".required"></asp:CustomValidator>

 </li>
 <li>
    <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
       ErrorMessage="*" ControlToValidate="txtPassword" Display="Dynamic"
       ValidationGroup="group1" CssClass="required" SetFocusOnError="True">
</asp:RequiredFieldValidator>
    

</li>
            <li>
    <asp:Label ID="lblVerifyPassword" runat="server" Text="Verify Password:"></asp:Label>
        <asp:TextBox ID="txtVerifyPassword" runat="server" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
       ErrorMessage="*" ControlToValidate="txtVerifyPassword" Display="Dynamic"
       ValidationGroup="group1" CssClass="required" SetFocusOnError="True">
    </asp:RequiredFieldValidator>

    <asp:CompareValidator ID="compvPassword" runat="server" ErrorMessage="Password didn't match" ControlToCompare="txtPassword" ControlToValidate="txtVerifyPassword" CssClass=".required" Display="Dynamic" SetFocusOnError="True" ValidationGroup="group1"></asp:CompareValidator>

</li>
             <li>
     <asp:Label ID="lblAge" runat="server" Text="Age:"></asp:Label>
         <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
        ErrorMessage="*" ControlToValidate="txtAge" Display="Dynamic"
        ValidationGroup="group1" CssClass="required" SetFocusOnError="True">
</asp:RequiredFieldValidator>
                 <asp:CompareValidator ID="compAge" runat="server" ControlToValidate="txtAge" CssClass=".required" Display="Dynamic" ErrorMessage="Only Integer Value is allowed" Operator="DataTypeCheck" SetFocusOnError="True" Type="Integer" ValidationGroup="group1"></asp:CompareValidator>
   

 </li>
             <li>
     <asp:Label ID="lblGPA" runat="server" Text="GPA(%):"></asp:Label>
         <asp:TextBox ID="txtGPA" runat="server"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
        ErrorMessage="*" ControlToValidate="txtGPA" Display="Dynamic"
        ValidationGroup="group1" CssClass="required" SetFocusOnError="True">
</asp:RequiredFieldValidator>
                 <asp:RangeValidator ID="rvGPA" runat="server" ControlToValidate="txtGPA" CssClass=".required" Display="Dynamic" ErrorMessage="Range 0 to 100" MaximumValue="100" MinimumValue="0" SetFocusOnError="True" Type="Integer" ValidationGroup="group1"></asp:RangeValidator>

 </li>
             <li>
     <asp:Label ID="lblEmail" runat="server" Text="AlternateEmail:"></asp:Label>
         <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
        ErrorMessage="*" ControlToValidate="txtEmail" Display="Dynamic"
        ValidationGroup="group1" CssClass="required" SetFocusOnError="True">
</asp:RequiredFieldValidator>

                 <asp:RegularExpressionValidator ID="emailvalidator" runat="server" ControlToValidate="txtEmail" CssClass=".required" Display="Dynamic" ErrorMessage="Please enter valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="group1"></asp:RegularExpressionValidator>

 </li>
 </ul>
 <asp:Button ID="Submit" runat="server" OnClick="Button1_Click" Text="Submit"
ValidationGroup="group1" /> 
    </form>
</body>
</html>
