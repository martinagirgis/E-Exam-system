﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddDepartment.aspx.cs" Inherits="examApp.AddDepartment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
	<title>Admin Home</title>
	<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Open+Sans">
	<link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

    <link rel="stylesheet" type="text/css" href="css/StyleSheet.css">
    <link rel="stylesheet" type="text/css" href="css/navstyle.css">
    <link rel="stylesheet" type="text/css" href="css/StyleEditprof.css">
    <style>
        .secd{
    display:none;
}
         .dirct{
            direction:rtl;
        }
    </style>
</head>
<body onload="myFunction()">
    <form id="form3" runat="server">
        <div class="outer">
             <div class="Head1 navbar-expand-lg">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarAdd" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                     <span class="navbar-toggler-icon">
                         <image id="immg" src="img/align.png"></image>
                     </span>
                 </button>
               <div id="navbarAdd" class="collapse navbar-collapse">
                <ul class="navbar-nav" id="dirc" style="width:100%">
                    <li class="nav-item" id="">
                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/confirmProf.aspx">Confirm Professor</asp:HyperLink>
                    </li>
                    <li class="nav-item" id="">
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/confirmStudent.aspx">Confirm Student</asp:HyperLink>
                    </li>
                    <li class="nav-item" id="">
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/AddLevel.aspx">Add level</asp:HyperLink></li>
                    <li class="nav-item" id="">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AddDepartment.aspx">Add Department</asp:HyperLink></li>
                    <li class="nav-item" id="">
                        <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/AddSubject.aspx">Add Subject</asp:HyperLink></li>
                    <%-- <li id="E"><asp:HyperLink ID="HyperLink7" runat="server">Edit Prof.</asp:HyperLink></li> --%>
                    <li class="nav-item" id="">
                        <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/EditDepartment.aspx">Edit Department</asp:HyperLink></li>
                    <li class="nav-item" id="">
                        <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/EditSubject.aspx">Edit Subject</asp:HyperLink></li>
                    <li class="nav-item" id="">
                        <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/EditProffesor.aspx">Edit Prof</asp:HyperLink></li>
                    <li class="nav-item" id="">
                        <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/EditStudent.aspx">Edit Student</asp:HyperLink></li>
                    <li class="lan nav-item" id="ar">
                        <asp:HyperLink ID="a" runat="server">Arbic</asp:HyperLink>
                    </li>
                    <li class="lan nav-item" id="en">
                        <asp:HyperLink ID="e" runat="server">English</asp:HyperLink>
                    </li>
                </ul>
            </div>

            <div class="inner-Right1">
                <div id="dep" class="inner">
                    <p class="p" id="p4">Add Department</p>
                    <br />
                    <br />
                        <div class="secd" dir="rtl" id="ad4a">
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="mydropdownlist" ></asp:DropDownList>
                            <asp:RequiredFieldValidator ValidationGroup="masterGroup" ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                            <br />
                            <br />
                            <asp:TextBox  ID="Dep_En1" runat="server" Width="287px" Font-Bold="True" Font-Size="" Height="33px" placeholder="أضف اسم القسم بالانجليزي"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="masterGroup" ID="RequiredFieldValidator2" runat="server" ControlToValidate="Dep_En1" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>

                            <br />
                            <br />
                            <asp:TextBox ID="Dep_Ar1" runat="server" Width="287px" Font-Bold="True" Font-Size="" Height="33px" placeholder="أضف اسم القسم بالعربي"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="masterGroup" ID="RequiredFieldValidator3" runat="server" ControlToValidate="Dep_Ar1" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                            <br />
                            <asp:Button ID="Button1" ValidationGroup="masterGroup" runat="server" Text="حفظ" CssClass="btn" OnClick="Button1_Click" />
                        </div>
                    
                        <div class="" id="ad4e">
                            <asp:DropDownList ID="DropDownList5" runat="server" CssClass="mydropdownlist"></asp:DropDownList>
                            <asp:RequiredFieldValidator ValidationGroup="masterGroup1" ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList5" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                            <br />
                            <br />
                            <asp:TextBox ID="Dep_En" runat="server" Width="287px" Font-Bold="True" Font-Size="" Height="33px" placeholder="Add Department in English"></asp:TextBox>
                            <asp:RequiredFieldValidator  ValidationGroup="masterGroup1" ID="RequiredFieldValidator1" runat="server" ControlToValidate="Dep_En" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                            <br />
                            <br />
                            <asp:TextBox ID="Dep_Ar" runat="server" Width="287px" Font-Bold="True" Font-Size="" Height="33px" placeholder="Add Department in Arabic"></asp:TextBox>
                            <asp:RequiredFieldValidator ValidationGroup="masterGroup1" ID="RequiredFieldValidator4" runat="server" ControlToValidate="Dep_Ar" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                            <br />
                            <asp:Button ID="Button2" ValidationGroup="masterGroup1" runat="server" Text="save" CssClass="btn" OnClick="Button2_Click" />
                                </div>
                        
                </div>

            </div>
        </div>
    </form>
     <script type="text/javascript" src="js/jquery-3.3.1.slim.min.js"></script>
    <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="js/bootnavbar.js"></script>
    <script type="text/javascript" src="js/js2.js"></script>
</body>
</html>
