<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication1.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <link href="css/bootstrap-5.1.3-dist/css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

        <div class="container d-flex justify-content-center align-items-center" style="height: 100vh;">

            <div>
                <h1 class="display-4 text-center mb-5">Register</h1>
                <div>
                    <asp:TextBox ID="Email" runat="server" TextMode="Email" Placeholder="Email" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Email" ErrorMessage="Required" CssClass="text-danger"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" ErrorMessage="Email address is not valid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="text-danger"></asp:RegularExpressionValidator>
                </div>
                <div>
                    <asp:TextBox ID="Password" runat="server" TextMode="Password" Placeholder="Passsword" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password" ErrorMessage="Required" CssClass="text-danger"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="Password" ErrorMessage="CustomValidator" OnServerValidate="CustomValidator1_ServerValidate" CssClass="text-danger"></asp:CustomValidator>
                </div>
                <div>
                    <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password" Placeholder="Confirm Password" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Required" CssClass="text-danger"></asp:RequiredFieldValidator>
                </div>
                <div>
                    <asp:TextBox ID="Age" runat="server" TextMode="Number" Placeholder="Age" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Age" ErrorMessage="Required" CssClass="text-danger"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="Age" ErrorMessage="Age between 13 and 99" MaximumValue="99" MinimumValue="13" CssClass="text-danger"></asp:RangeValidator>
                </div>
                <div>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="ConfirmPassword" ControlToValidate="Password" ErrorMessage="CompareValidator" CssClass="text-danger"></asp:CompareValidator>
                </div>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="text-danger" />
                <asp:Button ID="SignUp" runat="server" Text="Register" OnClick="SignUp_Click" CssClass="btn btn-primary w-100" />
            </div>
        </div>

    </form>
</body>
</html>
