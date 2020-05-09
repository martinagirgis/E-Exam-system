<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfExamStructure.aspx.cs" Inherits="examApp.ProfExamStructure" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
	<title>Exam Structure</title>
	<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Open+Sans" />
	<link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="css/StyleSheet.css" />
    <link rel="stylesheet" type="text/css" href="css/navstyle.css" />
    <link rel="stylesheet" type="text/css" href="css/StyleEditprof.css" />
    <style type="text/css">
        .auto-style2 {
            width: 98%;
            margin: auto;
        }
        .auto-style3 {
            width: 259px;
        }
        .auto-style5 {
            width: 259px;
            height: 46px;
        }
        .auto-style6 {
            width: 171px;
            height: 46px;
        }
        .auto-style8 {
            width: 171px;
        }
        .auto-style9 {
            width: 248px;
        }
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
                    <p class="p cen" id="p6">Exam Structure</p>




                    <div class="secd" dir="rtl" id="pr6a">
                        <asp:DropDownList ID="DropDownList12" runat="server" CssClass="mydropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList12_SelectedIndexChanged"></asp:DropDownList>
                        <br />
                        <br />
                        <asp:DropDownList ID="DropDownList13" runat="server" CssClass="mydropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList13_SelectedIndexChanged"></asp:DropDownList>
                        <br />
                        <br />
                        <div class="cen">

                            <table class="auto-style2">
                                <tr>
                                    <td class="auto-style5">
                                        <p class="p1">عدد الاسئلة الكلي</p>
                                    </td>
                                    <td class="auto-style6">
                                        <asp:DropDownList ID="DropDownList14" runat="server" Width="100px" Height="30px" CssClass="dropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList14_SelectedIndexChanged"></asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">
                                        <p class="p1">عدد اسئلة الاختيارات</p>
                                    </td>
                                    <td class="auto-style8">
                                        <asp:DropDownList ID="DropDownList15" runat="server" Width="100px" Height="30px" CssClass="dropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList15_SelectedIndexChanged"></asp:DropDownList>
                                    </td>
                                    <td class="auto-style9">
                                        <p class="p1">عدد اسئلة صح و خطأ</p>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList16" runat="server" Width="100px" Height="30px" CssClass="dropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList16_SelectedIndexChanged"></asp:DropDownList>
                                    </td>
                                </tr>

                            </table>
                            <table class="cen">
                                <tr>
                                    <td>
                                        <p class="p1">( عدد الاسئلة الاختيارات ( صعب</p>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList17" runat="server" Width="70px" Height="30px" CssClass="dropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList17_SelectedIndexChanged"></asp:DropDownList>
                                    </td>
                                    <td>
                                        <p class="p1">( عدد الاسئلة الاختيارات ( متوسط</p>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList18" runat="server" Width="70px" Height="30px" CssClass="dropdownlist" AutoPostBack="True" Enabled="False" OnSelectedIndexChanged="DropDownList18_SelectedIndexChanged"></asp:DropDownList>
                                    </td>
                                    <td>
                                        <p class="p1">( عدد الاسئلة الاختيارات ( سهل</p>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList19" runat="server" Width="70px" Height="30px" CssClass="dropdownlist" Enabled="False"></asp:DropDownList>
                                    </td>
                                </tr>
                            </table>
                            <table class="cen">
                                <tr>
                                    <td>
                                        <p class="p1">( عدد الاسئلة صح و خطأ ( صعب</p>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList20" runat="server" Width="70px" Height="30px" CssClass="dropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList20_SelectedIndexChanged"></asp:DropDownList>
                                    </td>
                                    <td>
                                        <p class="p1">( عدد الاسئلة صح و خطأ ( متوسط:</p>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList21" runat="server" Width="70px" Height="30px" CssClass="dropdownlist" AutoPostBack="True" Enabled="False" OnSelectedIndexChanged="DropDownList21_SelectedIndexChanged"></asp:DropDownList>
                                    </td>
                                    <td>
                                        <p class="p1">( عدد الاسئلة صح و خطأ ( سهل</p>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList22" runat="server" Width="70px" Height="30px" CssClass="dropdownlist" Enabled="False"></asp:DropDownList>
                                    </td>
                                </tr>
                            </table>
                            <asp:Button ID="Button1" runat="server" Text="save" CssClass="btn" OnClick="Button1_Click" />
                        </div>
                        </div>



                        <div class="" id="pr6e">
                            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="mydropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"></asp:DropDownList>
                            <br />
                            <br />
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="mydropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                            <br />
                            <br />
                            <div class="cen">

                                <table class="auto-style2">
                                    <tr>
                                        <td class="auto-style5">
                                            <p class="p1">Number of all question :</p>
                                        </td>
                                        <td class="auto-style6">
                                            <asp:DropDownList ID="DropDownList3" runat="server" Width="100px" Height="30px" CssClass="dropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged"></asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3">
                                            <p class="p1">Number of MCQ question :</p>
                                        </td>
                                        <td class="auto-style8">
                                            <asp:DropDownList ID="DropDownList4" runat="server" Width="100px" Height="30px" CssClass="dropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged"></asp:DropDownList>
                                        </td>
                                        <td class="auto-style9">
                                            <p class="p1">Number of T/F question :</p>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList5" runat="server" Width="100px" Height="30px" CssClass="dropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged"></asp:DropDownList>
                                        </td>
                                    </tr>

                                </table>
                                <table class="cen">
                                    <tr>
                                        <td>
                                            <p class="p1">Num of ques A (MCQ):</p>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList6" runat="server" Width="70px" Height="30px" CssClass="dropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList6_SelectedIndexChanged"></asp:DropDownList>
                                        </td>
                                        <td>
                                            <p class="p1">Num of ques B (MCQ):</p>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList7" runat="server" Width="70px" Height="30px" CssClass="dropdownlist" AutoPostBack="True" Enabled="False" OnSelectedIndexChanged="DropDownList7_SelectedIndexChanged"></asp:DropDownList>
                                        </td>
                                        <td>
                                            <p class="p1">Num of ques C(MCQ):</p>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList8" runat="server" Width="70px" Height="30px" CssClass="dropdownlist" Enabled="False"></asp:DropDownList>
                                        </td>
                                    </tr>
                                </table>
                                <table class="cen">
                                    <tr>
                                        <td>
                                            <p class="p1">Num of ques A (T/F):</p>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList9" runat="server" Width="70px" Height="30px" CssClass="dropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList9_SelectedIndexChanged"></asp:DropDownList>
                                        </td>
                                        <td>
                                            <p class="p1">Num of ques B (T/F):</p>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList10" runat="server" Width="70px" Height="30px" CssClass="dropdownlist" AutoPostBack="True" Enabled="False" OnSelectedIndexChanged="DropDownList10_SelectedIndexChanged"></asp:DropDownList>
                                        </td>
                                        <td>
                                            <p class="p1">Num of ques C(T/F):</p>
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="DropDownList11" runat="server" Width="70px" Height="30px" CssClass="dropdownlist" Enabled="False"></asp:DropDownList>
                                        </td>
                                    </tr>
                                </table>
                                <asp:Button ID="Button4" runat="server" Text="save" CssClass="btn" OnClick="Button4_Click" />
                            </div>
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
