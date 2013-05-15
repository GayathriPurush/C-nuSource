<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Second.aspx.cs" Inherits="Second" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">

    <title></title>
    <script src="ValidateSecond.js" type="text/javascript"></script>
    <style type="text/css">
        .style1
        {
            width: 95%;
            height: 221px;
        }
        .style3
        {
            width: 289px;
            height: 42px;
        }
        .style4
        {
            height: 42px;
        }
        .style5
        {
            width: 289px;
            height: 40px;
        }
        .style6
        {
            height: 40px;
        }
        .style7
        {
            width: 289px;
            height: 45px;
        }
        .style8
        {
            height: 45px;
        }
        .style9
        {
            height: 23px;
        }
        .style11
        {
            height: 23px;
            width: 288px;
        }
        .style16
        {
            width: 288px;
            height: 25px;
        }
        .style17
        {
            height: 25px;
        }
        .style21
        {
            width: 287px;
        }
        .style22
        {
            width: 290px;
        }
        .style23
        {
            width: 293px;
        }
        .style24
        {
            width: 305px;
        }
        .style25
        {
            width: 100%;
        }
        .style26
        {
            width: 288px;
            height: 44px;
        }
        .style27
        {
            height: 44px;
        }
        .style28
        {
            width: 287px;
            height: 68px;
        }
        .style29
        {
            height: 68px;
        }
        .style30
        {
            width: 288px;
        }
        .style31
        {
            width: 289px;
        }
        .style32
        {
            width: 291px;
        }
        .style34
        {
            width: 788px;
            height: 230px;
            z-index: 1;
            left: 150px;
            top: 16px;
            position: absolute;
        }
    </style>
</head>
<body>


    <form id="form1" runat="server">
    <div style="height: 227px; width: 954px">
    
        <asp:Panel ID="Panel1" runat="server" 
            BorderColor="#FF6600" BorderStyle="Solid" BorderWidth="3px" 
            
            style="z-index: 1; left: 155px; top: 281px; position: absolute; height: 100px; width: 770px; margin-top: 0px;" 
            BackColor="#FFB435">
            <table class="style25">
                <tr>
                    <td class="style32">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style32">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label16" runat="server" Text="Regional Sites"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td>
                        <asp:DropDownList ID="DDL_RegSites" runat="server" Height="25px" Width="249px">
                            <asp:ListItem>select</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style32">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        <asp:Panel ID="Panel2" runat="server" 
            BorderColor="#FF6600" BorderStyle="Solid" BorderWidth="3px" 
            
            style="z-index: 1; left: 150px; top: 416px; position: absolute; height: 571px; width: 781px" 
            BackColor="#FFB435">
            <table class="style1">
                <tr>
                    <td class="style3">
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="Personal Details" Font-Bold="True" 
                            Font-Size="Larger" ForeColor="#CC3300"></asp:Label>
                    </td>
                    <td class="style4">
                        </td>
                </tr>
                <tr>
                    <td class="style31">
                        <br />
                        <asp:Label ID="lblMartial" runat="server" Text="Martial Sites"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Lbl_Child" runat="server" Text="No-Of-Children"></asp:Label>
                        <br />
                    </td>
                    <td>
                        
                            <asp:RadioButton ID="Rbtn_MartialStatus1" runat="server" 
                                GroupName="MartialStatus" Text="Unmarried" AutoPostBack="True" 
                                 />
                        &nbsp;
                        <asp:RadioButton ID="Rbtn_MartialStatus2" runat="server" 
                            Text="Married" GroupName="MartialStatus" 
                                 />
                            &nbsp;&nbsp;&nbsp;<asp:RadioButton ID="Rbtn_MartialStatus3" runat="server" 
                                GroupName="MartialStatus" Text="Divorced" 
                                 />
                            &nbsp;&nbsp;<asp:RadioButton ID="Rbtn_MartialStatus4" runat="server" 
                                GroupName="MartialStatus" Text="Awaiting Divorce" 
                                 />
                            <br />
                            <br />
                            <asp:DropDownList ID="DDL_NoOfChild" runat="server" >
                                
                                <asp:ListItem Value="0">--Select--</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>none</asp:ListItem>
                            </asp:DropDownList>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="Rbtn_ChildLiving1" runat="server" 
                                Text="Children Living with Me" GroupName="ChildOption" />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton 
                                ID="Rbt_childLiving2" runat="server" 
                            Text="Childern Not Living With Me" GroupName="ChildOption" />
                        
                            </td>
                </tr>
                <tr>
                    <td class="style5">
                        <br />
                        <asp:Label ID="LblCaste" runat="server" Text="Caste"></asp:Label>
                    </td>
                    <td class="style6" ID=" ">
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="Lbl_CasteName" runat="server"></asp:Label>
                        <br />
                        <br />
                        <asp:RadioButton ID="Rbtn_Caste1" runat="server" 
                            Text="Willing to marry from the same community" Groupname="Caste" />
                        <br />
                        <asp:RadioButton ID="Rbtn_Caste" runat="server" 
                            Text="Willing to marry from other communities also	" Groupname="Caste" />
                        <br />
                        
                    </td>
                </tr>
                <tr>
                    <td class="style31">
                        <br />
                        <asp:Label ID="lSubCaste" runat="server" Text="Sub Caste"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <asp:TextBox ID="Txt_Caste" runat="server" AutoPostBack="True" 
                            EnableViewState="False" Width="244px"></asp:TextBox>
                        <br />
                        <asp:DropDownList ID="DDL_SubCaste" runat="server" Height="25px" 
                            Width="249px" AutoPostBack="True" EnableViewState="False">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style31">
                        <br />
                        <asp:Label ID="Lblgothram" runat="server" Text="Gothra(m)"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <asp:TextBox ID="Txt_Gothram" runat="server" Height="25px" Width="250px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style31">
                        <br />
                        <asp:Label ID="LblCountry" runat="server" Text="Country"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <asp:Label ID="Lbl_CountryName" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        <br />
                        <asp:Label ID="blState" runat="server" Text="Residing State"></asp:Label>
                    </td>

                   
                    <td class="style8">
                     <asp:ScriptManager ID="ScriptManager2" runat="server">
        </asp:ScriptManager>
                        <br />
                        <asp:DropDownList ID="DDL_State" runat="server" Height="25px" 
                            Width="249px" onselectedindexchanged="DDL_State_SelectedIndexChanged" AutoPostBack="True" 
                             >
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style31">
                    

                        <br />
                    

                    City
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate>
                <asp:DropDownList ID="DDL_City" runat="server" Width="167px" BackColor="White" 
                    style="z-index: 1; left: 299px; top: 530px; position: absolute; height: 30px; width: 236px">
                </asp:DropDownList>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="DDL_State" EventName="SelectedIndexChanged" />
            </Triggers>
        </asp:UpdatePanel>
                        <br />
                        <%--<asp:Label ID="LblCity" runat="server" Text="Residing City"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <asp:DropDownList ID="DDL_City" runat="server" Height="25px" 
                            Width="249px" >
                        </asp:DropDownList>--%>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" 
            BorderColor="#FF6600" BorderStyle="Solid" 
            
            
            style="z-index: 1; left: 152px; top: 1009px; position: absolute; height: 355px; width: 775px" 
            BackColor="#FFB435">
            <table class="style1">
                <tr>
                    <td class="style30">
                        <br />
                        <asp:Label ID="LblPhysical" runat="server" Text="Physical Attribute" 
                            Font-Bold="True" Font-Size="Larger" ForeColor="#CC3300"></asp:Label>
                        &nbsp;
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style30">
                        <br />
                        <asp:Label ID="LblHeight" runat="server" Text="Height*"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <br />
                        <asp:TextBox ID="Txt_Height" runat="server"></asp:TextBox>
                        <asp:Label ID="lbl_Height" runat="server" Text="[In Inches]"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style30">
                        <br />
                        <asp:Label ID="LblWeight" runat="server" Text="Weight"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <br />
                        <asp:TextBox ID="Txt_Weight" runat="server"></asp:TextBox>
                        <asp:Label ID="Lbl_Weight" runat="server" Text="[In Kg's]"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style30">
                        <br />
                        <asp:Label ID="LblBodytype" runat="server" Text="Body Type"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButton ID="Rbtn_BodyType1" runat="server" Text="Average" Groupname="BodyType" />
                        &nbsp;
                        <asp:RadioButton ID="Rbtn_BodyType2" runat="server" Groupname="BodyType" 
                            Text="Athletic" />
                        &nbsp;
                        <asp:RadioButton ID="Rbtn_BodyType3" runat="server" Text="Slim" Groupname="BodyType" />
                        &nbsp;
                        <asp:RadioButton ID="Rbtn_BodyType4" runat="server" Text="Heavy" Groupname="BodyType" />
                        <br />
                        
                    </td>
                </tr>
                <tr>
                    <td class="style26">
                        <br />
                        <asp:Label ID="LblComplextion" runat="server" Text="Complextion"></asp:Label>
                    </td>
                    <td class="style27">
                        <br />
                        
                        <asp:RadioButton ID="Rbtn_Complextion1" runat="server" Text="Fair" Groupname="Complextion" />
                        &nbsp;
                        <asp:RadioButton ID="Rbtn_Complextion2" runat="server" Text="Very Fair" Groupname="Complextion" />
                        &nbsp;<asp:RadioButton ID="Rbtn_Complextion3" runat="server" Text="Wheatish" Groupname="Complextion" />
                        &nbsp;<asp:RadioButton ID="Rbtn_Complextion4" runat="server" Text="wheatish-Brown" Groupname="Complextion" />
                        &nbsp;<asp:RadioButton ID="Rbtn_Complextion5" runat="server" Text="Dark" Groupname="Complextion" />
                        
                    </td>
                </tr>
                <tr>
                    <td class="style16">
                        <br />
                        <asp:Label ID="Label8" runat="server" Text="Physical Status"></asp:Label>
                    </td>
                    <td class="style17">
                        <br />
                        <asp:RadioButton ID="Rbtn_PhysicalStatus1" runat="server" Text="Normal" Groupname="PhysicalStatus" />
                        &nbsp;&nbsp;
                        <asp:RadioButton ID="Rbtn_PhysicalStatus2" runat="server" Groupname="PhysicalStatus"
                            Text="Physical-Status" />
                    </td>
                </tr>
                <tr>
                    <td class="style11">
                        &nbsp;</td>
                    <td class="style9">
                    </td>
                </tr>
            </table>
            <br />
        </asp:Panel>
        <asp:Panel ID="Panel4" runat="server" BorderColor="#FF6600" BorderStyle="Solid" 
            
            style="z-index: 1; left: 151px; top: 1413px; position: absolute; height: 350px; width: 777px" 
            BackColor="#FFB435">
            <table class="style1">
                <tr>
                    <td class="style21">
                        <br />
                        <asp:Label ID="LblEdu" runat="server" Text=" Education &amp; Occupation" 
                            Font-Bold="True" Font-Size="Large" ForeColor="#CC3300"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style21">
                        <br />
                        <asp:Label ID="LblEducation" runat="server" Text="Highest Education"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <asp:DropDownList ID="DDL_HighestEdu" runat="server" Height="25px" 
                            Width="250px" >
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style21">
                        <br />
                        <asp:Label ID="LblOcc" runat="server" Text="Occupation"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <asp:DropDownList ID="DDL_Occupation" runat="server" Height="25px" 
                            Width="249px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style28">
                        <asp:Label ID="Label12" runat="server" Text="Employed In"></asp:Label>
                    </td>
                    <td class="style29">
                        
                        <asp:RadioButton ID="Rbtn_EmpIn1" runat="server" Text="Goverment" Groupname="EmployedIn" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="Rbtn_EmpIn2" runat="server" Groupname="EmployedIn" 
                            Text="Private" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RadioButton ID="Rbtn_EmpIn3" runat="server" 
                            Groupname="EmployedIn" Text="Business" />
                        &nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="Rbtn_EmpIn4" runat="server" Groupname="EmployedIn" 
                            Text="Self-Employed" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="Rbtn_EmpIn5" runat="server" Text="Defence" Groupname="EmployedIn" />
                        
                    </td>
                </tr>
                <tr>
                    <td class="style21">
                        <br />
                        <br />
                        <br />
                        <br />
                        <br />
                        <asp:Label ID="LblIncome" runat="server" Text="Income"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <asp:RadioButton ID="Rbtn_IncomeType1" runat="server" Text="Monthly Income" Groupname="Income" />
&nbsp;&nbsp;<asp:RadioButton ID="Rbtn_IncomeType2" runat="server" Text="Annual Income" 
                            Groupname="Income" />
                        &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<br />
                        <br />
&nbsp;
                        <asp:DropDownList ID="DDL_IncomeType" runat="server" Height="25px" 
                            Width="150px">
                        </asp:DropDownList>
                        &nbsp;&nbsp;
                        <asp:TextBox ID="Txt_Amount" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style21">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style21">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
        <img alt="" class="style34" src="Images/im.png" /><br />
        <asp:Panel ID="Panel5" runat="server" BorderColor="#FF6600" BorderStyle="Solid" 
            
            
            style="z-index: 1; left: 153px; top: 1788px; position: absolute; height: 230px; width: 773px" 
            BackColor="#FFB435">
            <table class="style1">
                <tr>
                    <td class="style22">
                        <br />
                        <asp:Label ID="LblHabits" runat="server" Text="Habits" Font-Bold="True" 
                            Font-Size="Large" ForeColor="#CC3300"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style22">
                        <br />
                        <asp:Label ID="LblFood" runat="server" Text="Food"></asp:Label>
                    </td>
                    <td>
                        <br />
                        
                        <asp:RadioButton ID="Rbtn_FoodType1" runat="server" Text="Non_vegetrian" Groupname="Food" />
                        &nbsp;
                        <asp:RadioButton ID="Rbtn_FoodType2" runat="server" Text="Vegetrain" Groupname="Food" />
                        &nbsp;
                        <asp:RadioButton ID="Rbtn_FoodType3" runat="server" Text="Eggtrian" Groupname="Food" />
                        
                    </td>
                </tr>
                <tr>
                    <td class="style22">
                        <br />
                        <asp:Label ID="LblSmoking" runat="server" Text="Smoking"></asp:Label>
                    </td>
                    <td>
                        <br />
                        
                        <asp:RadioButton ID="Rbtn_Smoking1" runat="server" Text="No" Groupname="Smoking" />
                        &nbsp;
                        <asp:RadioButton ID="Rbtn_Smoking2" runat="server" Text="Yes" Groupname="Smoking" />
                        &nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="Rbtn_Smoking3" runat="server" Text="Occesionally" Groupname="Smoking" />
                        
                    </td>
                </tr>
                <tr>
                    <td class="style22">
                        <br />
                        <asp:Label ID="LblDrink" runat="server" Text="Drinking"></asp:Label>
                    </td>
                    <td>
                        <br />
                         <asp:RadioButton ID="Rbtn_Drinking1" runat="server" Text="No" Groupname="Drinking" />
                        &nbsp;&nbsp;<asp:RadioButton ID="Rbtn_Drinking2" runat="server" Text="Yes" Groupname="Drinking" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="Rbtn_Drinking3" runat="server" Text="Occesionally" Groupname="Drinking" />
                    </td>
                </tr>
                <tr>
                    <td class="style22">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style22">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        <asp:Panel ID="Panel6" runat="server" BorderColor="#FF6600" BorderStyle="Solid" 
            
            
            style="z-index: 1; left: 152px; top: 2062px; position: absolute; height: 216px; width: 772px" 
            BackColor="#FFB435">
            <table class="style1">
                <tr>
                    <td class="style23">
                        <br />
                        <asp:Label ID="LblAstro" runat="server" Text="Astrological Information" 
                            Font-Bold="True" Font-Size="Large" ForeColor="#CC3300"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style23">
                        <br />
                        <asp:Label ID="LblChevvai" runat="server" Text="Chevvai Dosham"></asp:Label>
                    </td>
                    <td>
                    <asp:RadioButton ID="Rbtn_Chevvai1" runat="server" Text="No" Groupname="Chevvai" />
                        &nbsp;
                        <asp:RadioButton ID="Rbtn_Chevvai2" runat="server" Text="Yes" Groupname="Chevvai"  />
                        &nbsp;&nbsp;
                        <asp:RadioButton ID="Rbtn_Chevvai3" runat="server" Text="Dont Know" Groupname="Chevvai" />
                    
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style23">
                        <br />
                        <asp:Label ID="LblStar" runat="server" Text="Star"></asp:Label>
                    </td>
                    <div>
        
    
    </div>
                    <td>
                        <br />
                        <asp:DropDownList ID="DDL_Star" runat="server" Height="25px" Width="250px" 
                            AutoPostBack="True" onselectedindexchanged="DDL_Star_SelectedIndexChanged">
                        </asp:DropDownList>
                    </td></tr>
                    
                        <caption>
                            &nbsp;<asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <asp:DropDownList ID="DDL_Moon" runat="server" Width="167px" 
                                        style="z-index: 1; left: 310px; top: 180px; position: absolute; height: 22px; width: 208px">
                                    </asp:DropDownList>
                                </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="DDL_Star" 
                                        EventName="SelectedIndexChanged" />
                                </Triggers>
                            </asp:UpdatePanel>
                            </div>
                            <tr>
                                <td class="style23">
                                    <br />
                                    
                                    Raasi/Moon Sign</td>
                            </tr>
                            <tr>
                                <td class="style23">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                </caption>
            </table>
        </asp:Panel>
       
        <asp:Panel ID="Panel7" runat="server" BorderColor="#FF6600" BorderStyle="Solid" 
            
            
            style="z-index: 1; left: 148px; top: 2302px; position: absolute; height: 207px; width: 777px" 
            BackColor="#FFB435">
            <table class="style1">
                <tr>
                    <td class="style24">
                        <br />
                        <asp:Label ID="LblProfile" runat="server" Text="Family Profile" 
                            Font-Bold="True" Font-Size="Large" ForeColor="#CC3300"></asp:Label>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style24">
                        <br />
                        <asp:Label ID="Label14" runat="server" Text="Family Status"></asp:Label>
                    </td>
                    <td>
                        <br />
                       
                        <asp:RadioButton ID="Rbtn_FamilyStatus1" runat="server" Text="Middle Class" Groupname="FamilyStatus" />
                        &nbsp;
                        <asp:RadioButton ID="Rbtn_FamilyStatus2" runat="server" 
                            Text="Upper-Middle Class" Groupname="FamilyStatus" />
                        &nbsp;
                        <asp:RadioButton ID="Rbtn_FamilyStatus3" runat="server" Text="Rich" Groupname="FamilyStatus" />
                        &nbsp;
                        <asp:RadioButton ID="Rbtn_FamilyStatus4" runat="server" Text="Affluent" Groupname="FamilyStatus" />
                       
                    </td>
                </tr>
                <tr>
                    <td class="style24">
                        <br />
                        <asp:Label ID="Label15" runat="server" Text="Family Type"></asp:Label>
                    </td>
                    <td>
                        <br />
                        <asp:RadioButton ID="Rbtn_FamilyType1" runat="server" Text="Single" Groupname="FamilyType" />
                        &nbsp;
                        <asp:RadioButton ID="Rbtn_FamilyType2" runat="server" Text="Nuclear" Groupname="FamilyType" />
                    </td>
                </tr>
                <tr>
                    <td class="style24">
                        <br />
                        <asp:Label ID="LblFamilyvalues" runat="server" Text="Family Values"></asp:Label>
                    </td>
                    <td>
                        
                        <asp:RadioButton ID="Rbtn_FamilyValue1" runat="server" Text="Orthodox" Groupname="FamilyValues" />
                        &nbsp;&nbsp;
                        <asp:RadioButton ID="Rbtn_FamilyValue2" runat="server" Text="Traditional" Groupname="FamilyValues" />
                        &nbsp;&nbsp;
                        <asp:RadioButton ID="Rbtn_FamilyValue3" runat="server" Text="Moderate" Groupname="FamilyValues" />
                        &nbsp;&nbsp;
                        <asp:RadioButton ID="Rbtn_FamilyValue4" runat="server" Text="Literal" Groupname="FamilyValues" />
                        
                    </td>
                </tr>
                <tr>
                    <td class="style24">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
       
        <asp:Panel ID="Panel8" runat="server" BorderColor="#FF6600" BorderStyle="Solid" 
            
            
            style="z-index: 1; left: 144px; top: 2535px; position: absolute; height: 232px; width: 777px" 
            BackColor="#FFB435">
            <table class="style25">
                <tr>
                    <td>
                        <br />
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Italic="False" 
                            Font-Size="Large" ForeColor="#CC3300" Text="Description"></asp:Label>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Lbl_sample" runat="server" BorderStyle="None" 
                            style="z-index: 1; left: 151px; top: 60px; position: absolute; width: 612px" 
                            Text="Write about your unique characteristics, the most important things in your life like your aspirations, interests, things you like to do, places you like to visit, etc.,"></asp:Label>
                        <br />
                        <br />
                        &nbsp;
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="Txt_Desc" runat="server" Height="65px" MaxLength="50" 
                            Width="600px"></asp:TextBox>
                        <br />
                        &nbsp;<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Lbl_textCount" runat="server"></asp:Label>
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
            <br />
        </asp:Panel>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btn_Submit" runat="server" Text="Submit" 
            style="z-index: 1; left: 478px; top: 2851px; position: absolute" 
            onclick="btn_Submit_Click" 
             BackColor="#FFB435" />
       
    
    </div>
    <%--OnClientClick="Validate_Process();return false;"--%>
    <p>
        <asp:CheckBox ID="Cbox_Lisence" runat="server" 
            Text="I accept the Terms &amp; Conditions" ForeColor="#990099" 
            style="z-index: 1; left: 400px; top: 2801px; position: absolute" />
        </p>
    </form>

    




</body>
</html>
