<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfAddChapters.aspx.cs" Inherits="examApp.ProfAddChapters" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
	<title>Add Chapters</title>
	<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Open+Sans" />
	<link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="css/StyleSheet.css" />
    <link rel="stylesheet" type="text/css" href="css/navstyle.css" />
    <link rel="stylesheet" type="text/css" href="css/StyleEditprof.css" />
    <style>
         .dirct{
            direction:rtl;
        }
    </style>
</head>
<body onload="myFunction()">
    <form id="form1" runat="server">
        <div class="outer">
            <div class="Head1 navbar-expand-lg">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarAdd" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"><image id="immg" src="img/align.png" ></image></span>
                </button>
               <div id="navbarAdd" class="collapse navbar-collapse">
                <ul class="navbar-nav" id="dirc" style="width:100% ; color:white" >
                    <%--<li id="H">
                        <asp:HyperLink ID="HyperLink5" runat="server">Home</asp:HyperLink></li>--%>
                    <li class="nav-item" id="">
                        <asp:HyperLink ID="HyperLink4" runat="server" >Add Chapter</asp:HyperLink>
                    </li>
                    <li class="nav-item" id="">
                        <asp:HyperLink ID="HyperLink1" runat="server">Add Question</asp:HyperLink>
                    </li>
                    <li class="nav-item" id="">
                        <asp:HyperLink ID="HyperLink2" runat="server" >Edit Chapters</asp:HyperLink>
                    </li>
                    <li class="nav-item" id="">
                        <asp:HyperLink ID="HyperLink3" runat="server" >Edit Questionr</asp:HyperLink>
                    </li>
                    <li class="nav-item" id="">
                        <asp:HyperLink ID="HyperLink6" runat="server" >Show Result</asp:HyperLink>
                    </li>
                    <li class="nav-item" id="">
                        <asp:HyperLink ID="HyperLink7" runat="server" >Structure Exam</asp:HyperLink>
                    </li>
                    <li class="lan nav-item" id="ar" style="color:black">
                        <asp:HyperLink ID="a" runat="server">Arbic</asp:HyperLink>
                    </li>
                    <li class="lan nav-item" id="en" style="color:black">
                        <asp:HyperLink ID="e" runat="server">English</asp:HyperLink>
                    </li>
                </ul>
              </div>
            </div>

            <div class="inner-Right1">
                <div id="level" class="inner">
                    <p class="p" id="p1">Add Capter</p>

                    <div class="secd" dir="rtl" id="pr1a">
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="mydropdownlist"></asp:DropDownList>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup1" ID="RequiredFieldValidator10" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <asp:TextBox ID="LevelEn1" runat="server" Width="287px" Font-Bold="True" Font-Size="" Height="33px" placeholder="ضف اسم الفصل بالانجليزيأ"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup1" ID="RequiredFieldValidator1" runat="server" ControlToValidate="LevelEn1" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <asp:TextBox ID="LevelAr1" runat="server" Width="287px" Font-Bold="True" Font-Size="" Height="33px" placeholder="أضف اسم الفصل بالعربي"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup1" ID="RequiredFieldValidator2" runat="server" ControlToValidate="LevelAr1" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                        <br />
                        <asp:Button ID="Button2" ValidationGroup="masterGroup1" runat="server" Text="حفظ" CssClass="btn" OnClick="Button2_Click" />
                    </div>


                    <div class="" id="pr1e">
                        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="mydropdownlist"></asp:DropDownList>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup2" ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList3" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <asp:TextBox ID="LevelEn" runat="server" Width="287px" Font-Bold="True" Font-Size="" Height="33px" placeholder="Add Chapter in English"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup2" ID="RequiredFieldValidator4" runat="server" ControlToValidate="LevelEn" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <asp:TextBox ID="LevelAr" runat="server" Width="287px" Font-Bold="True" Font-Size="" Height="33px" placeholder="Add Chapter in Arbic"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup2" ID="RequiredFieldValidator5" runat="server" ControlToValidate="LevelAr" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                        <br />
                        <asp:Button ID="Button1" ValidationGroup="masterGroup2" runat="server" Text="save" CssClass="btn" OnClick="Button1_Click" />
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
    <script type="text/javascript" src="js/jsPr.js"></script>
</body>
</html>
