<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newuser2.aspx.cs" Inherits="newuser2" %>
<%@ Register Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" tagPrefix="ajax" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <script src="Validation.js" type="text/javascript"></script>
    <script src="CityState.js" type="text/javascript"></script>
    <style type="text/css">
        .style1
        {
            width: 40%;
            height: 554px;
            z-index: 1;
            left: 566px;
            top: 36px;
            position: absolute;
        }
        .style2
        {
            margin-left: 80px;
        }
        .style3
        {
            width: 424px;
        }
        .style4
        {
            margin-left: 80px;
        }
        .style5
        {
            width: 275px;
            margin-left: 80px;
        }
        }
        .style6
        {
            width: 275px;
            margin-left: 80px;
            height: 5px;
        }
        .style7
        {
            width: 424px;
            height: 5px;
        }
        .style8
        {
            width: 499px;
            height: 549px;
        }
        </style>
        <script src="JS/jquery.js" type="text/javascript"></script>
<script src="JS/jquery.validate.js" type="text/javascript"></script>
<script type="text/javascript" src="JS/jquery.maskedinput.js"></script>
<script type="text/javascript" src="JS/mktSignup.js"></script>

<script src="Validation.js" type="text/javascript" ></script>
 <script src="CityState.js" type="text/javascript"></script>
 <link rel="stylesheet" type="text/css" media="screen" href="stylesheet.css" />
    <style type="text/css">
        
        
        .VeryPoorStrength
{
background: Red;
color:White;
font-weight:bold;
}
.WeakStrength
{
background: Gray;
color:White;
font-weight:bold;
}
.AverageStrength
{
background: orange;
color:black;
font-weight:bold;
}
.GoodStrength

{
background: blue;
color:White;
font-weight:bold;
}
.ExcellentStrength

{
background: Green;
color:White;
font-weight:bold;
}
.BarBorder
{
border-style: solid;
border-width: 1px;
width: 180px;
padding:2px;
}
        .style1
        {
            width: 40%;
            height: 528px;
            z-index: 1;
            left: 566px;
            top: 37px;
            position: absolute;
        }
        .style2
        {
            margin-left: 80px;
        }
        .style3
        {
            width: 424px;
        }
        .style4
        {
            margin-left: 80px;
        }
        .style5
        {
            width: 417px;
            margin-left: 80px;
        }
        }
        .style8
        {
            width: 501px;
            height: 605px;
        }
        </style>
   
</head>
<body>
    <form id="form1" runat="server">
    <div id="hh" runat="server">
        <table class="style1" bgcolor="#FFB435">
            <tr>
                <td class="style4" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="RegLable" runat="server" Text="REGISTER FREE" Font-Bold="True" Font-Size="Large"
                        ForeColor="#CC3300"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:Label ID="LblProf" runat="server" Text="Matrimony Profile For"></asp:Label>
                </td>
                <td class="style3">
                    <asp:DropDownList ID="DDl_ProfileFor" runat="server" Height="25px" Width="223px"
                        OnSelectedIndexChanged="DDl_ProfileFor_SelectedIndexChanged1" AutoPostBack="True">
                    </asp:DropDownList>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:Label ID="Lblname" runat="server" Text="Name"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="Txt_Name" runat="server" Width="217px">
                    </asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:Label ID="LblDof" runat="server" Text="Date Of Birth"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="Txt_DOB" runat="server" Height="25px" Text='<%# Bind("RenewalDate","{0:MM/dd/yyyy}")%>'>
                    </asp:TextBox>
                    <%-- <asp:Label ID="Label1" runat="server" Text="MM/DD/YYYY"></asp:Label>
                    <br />
                   <asp:CompareValidator id="dateValidator" runat="server"
  Type="Date" Operator="DataTypeCheck" ControlToValidate="Txt_DOB"
  ErrorMessage="Please enter a valid date.">
</asp:CompareValidator>--%>&nbsp;&nbsp;
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:Label ID="LblGender" runat="server" Text="Gender"></asp:Label>
                </td>
                <td class="style3">
                    <asp:RadioButton ID="Rbtn_Gender1" GroupName="Gender" runat="server" Text="Male" />
                    <asp:RadioButton ID="Rbtn_Gender2" GroupName="Gender" runat="server" Text="Female" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:Label ID="LblReli" runat="server" Text="Religion"></asp:Label>
                </td>
                <td class="style3">
                    <asp:DropDownList ID="DDL_Religion" runat="server" Height="25px" Width="249px" AutoPostBack="True"
                        OnSelectedIndexChanged="DDL_Religion_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:Label ID="LblMother" runat="server" Text="Mother Tongue"></asp:Label>
                </td>
                <td class="style3">
                    <asp:DropDownList ID="DDL_MotherTongue" runat="server" Height="25px" Width="249px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:Label ID="LblCaste" runat="server" Text="Caste?Division"></asp:Label>
                </td>
                <td class="style3">
                    <asp:DropDownList ID="DDL_Caste" runat="server" Height="25px" Width="249px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:Label ID="LblCountry" runat="server" Text="Country Living in"></asp:Label>
                </td>
                <td class="style3">
                    <asp:DropDownList ID="DDL_Country" runat="server" Height="25px" Width="249px" AutoPostBack="True"
                        OnSelectedIndexChanged="DDL_Country_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:Label ID="LblMobile" runat="server" Text="Mobile No"></asp:Label>
                </td>
                <td class="style3">
                    <asp:DropDownList ID="DDL_MobileCode" runat="server">
                    </asp:DropDownList>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="Txt_Phoneno" runat="server" Width="152px"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:Label ID="LblMail" runat="server" Text="E-Mail"></asp:Label>
                </td>
                <td class="style3">
                    <asp:TextBox ID="Txt_Mail" runat="server" Height="25px" Width="249px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:Label ID="LblPwd" runat="server" Text="Login Password"></asp:Label>
                </td><asp:ScriptManager ID="ScriptManager2" runat="server">
        </asp:ScriptManager>
                <td class="style3">
                    <asp:TextBox ID="Txt_Pwd" runat="server" Height="25px" Width="250px" TextMode="Password"
                        name="Txt_Pwd"></asp:TextBox>
                    <br />
                     <asp:Label ID="lblhelp" runat="server"/>
                       


                         <ajax:PasswordStrength ID="pwdStrength" TargetControlID="Txt_Pwd" StrengthIndicatorType="Text" PrefixText="Strength:" HelpStatusLabelID="lblhelp" PreferredPasswordLength="8"
MinimumNumericCharacters="1" MinimumSymbolCharacters="1" TextStrengthDescriptions="Very Poor;Weak;Average;Good;Excellent" TextStrengthDescriptionStyles="VeryPoorStrength;WeakStrength;
AverageStrength;GoodStrength;ExcellentStrength" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="style6">
                </td>
                <td class="style7">
                    <asp:Button ID="Btn_Submit" runat="server" Text="Submit" OnClick="Btn_Submit_Click"
                        OnClientClick="return validate_fields()" />
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;
                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
    </div>
    <div style="z-index: 1; left: 28px; top: 38px; position: absolute; height: 550px;
        width: 498px">
        <img alt="" class="style8" src="Images/side.jpg" />
    </div>
    </form>
</body>
</html>
