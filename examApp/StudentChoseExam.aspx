<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentChoseExam.aspx.cs" Inherits="examApp.StudentChoseExam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="utf-8"/>
	<title>Chose Exam</title>
	<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Open+Sans">
	<link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="css/StyleSheet.css">
    <link rel="stylesheet" type="text/css" href="css/navstyle.css">
    <link rel="stylesheet" type="text/css" href="css/StyleEditprof.css">
     <style>
        .dirct{
            direction:rtl;
        }
    </style>
</head>
<body onload="myFunction()">
    <form id="form1" runat="server">
       <div class="outer">
           <div class="Head1 navbar-expand-lg" >
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"><image src="img/align.png" width="25px" height="25px"></image></span>
              </button>
                <div id="navbarNav" class="collapse navbar-collapse">
                <ul class="navbar-nav" id="dirc" style="width:100%;">
                    <%--<li id="H">
                        <asp:HyperLink ID="HyperLink5" runat="server">Home</asp:HyperLink></li>--%>
                    <li class="nav-item" id="">
                        <asp:HyperLink ID="HyperLink4" runat="server"  NavigateUrl="~/StudentChoseExam.aspx">Chose Exam</asp:HyperLink>
                    </li>
                   
                    <li class="nav-item" id="">
                        <asp:HyperLink ID="HyperLink2" runat="server"  NavigateUrl="~/StudentResult.aspx">Student Result</asp:HyperLink>
                    </li>
                     <li class="lan nav-item" id="ar">
                        <asp:HyperLink ID="a" runat="server">Arbic</asp:HyperLink>
                    </li>
                    <li class="lan nav-item" id="en">
                        <asp:HyperLink ID="e" runat="server">English</asp:HyperLink>
                    </li>
                </ul>
              </div>  
          <div class="inner-Right1">
              <div id="level" class="inner">
                  <p class="p" id="p1">Chose Exam</p>

                  <div class="secd" dir="rtl" id="st1a">
                      <asp:DropDownList ID="DropDownList3" runat="server" CssClass="mydropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged"></asp:DropDownList>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup1" ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList3" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                      <br />
                      <br />
                      <asp:DropDownList ID="DropDownList4" runat="server" CssClass="mydropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup1" ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList4" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                      <br />
                      <br />
                      <asp:DropDownList ID="DropDownList5" runat="server" CssClass="mydropdownlist">
                          <asp:ListItem Value="ar">عربي</asp:ListItem>
                          <asp:ListItem Value="en">انجليزي</asp:ListItem>

                      </asp:DropDownList>
                      <br />
                      <br />
                      <asp:Button ID="Button2" ValidationGroup="masterGroup1" runat="server" Text="ابدأ الامتحان" CssClass="btn" OnClick="Button2_Click" />

                  </div>

                  <div class="" id="st1e">
                      <asp:DropDownList ID="DropDownList2" runat="server" CssClass="mydropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"></asp:DropDownList>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup2" ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList2" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                      <br />
                      <br />
                      <asp:DropDownList ID="DropDownList1" runat="server" CssClass="mydropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup2" ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                      <br />
                      <br />
                      <asp:DropDownList ID="DropDownList6" runat="server" CssClass="mydropdownlist">
                          <asp:ListItem Value="ar">Arbic</asp:ListItem>
                          <asp:ListItem Value="en">English</asp:ListItem>

                      </asp:DropDownList>
                      <br />
                      <br />
                      <asp:Button ID="Button1" ValidationGroup="masterGroup2" runat="server" Text="start Exam" CssClass="btn" OnClick="Button1_Click"  />

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
    <script type="text/javascript" src="js/jsS.js"></script>
</body>
</html>
