<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfAddQuestion.aspx.cs" Inherits="examApp.ProfAddQuestion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
	<title>Add Question</title>
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
        <div class="outer11">
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
                    <p class="p" id="p2">Add Question</p>


                    <div class="secd1" dir="rtl" id="pr2a">
                        <asp:DropDownList ID="DropDownList6" runat="server" CssClass="mydropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList6_SelectedIndexChanged" ></asp:DropDownList>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup2" ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList6" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <asp:DropDownList ID="DropDownList7" runat="server" CssClass="mydropdownlist"></asp:DropDownList>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup2" ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList7" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <asp:DropDownList ID="DropDownList8" runat="server" CssClass="mydropdownlist">
                            <asp:ListItem Selected="True">أختر مستوي السؤال</asp:ListItem>
                            <asp:ListItem Value="A">صعب</asp:ListItem>
                            <asp:ListItem Value="B">متوسط</asp:ListItem>
                            <asp:ListItem Value="C">سهل</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        <asp:DropDownList ID="DropDownList9" runat="server" CssClass="mydropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList9_SelectedIndexChanged" >
                            <asp:ListItem>اختر نوع السؤال</asp:ListItem>
                            <asp:ListItem Value="T/F">صح &amp; خطأ</asp:ListItem>
                            <asp:ListItem Value="MCQ">اختيارات</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        <asp:TextBox ID="TextBox9" runat="server" Visible="false" Width="387px" Font-Bold="True" Font-Size="" Height="44px" placeholder="اضف السؤال بالانجليزيه" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup2" ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox9" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <asp:TextBox ID="TextBox10" runat="server" Visible="false" Width="387px" Font-Bold="True" Font-Size="" Height="44px" placeholder="اضف السوال بالعربي" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup2" ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox10" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <asp:Panel ID="Panel4" runat="server" Visible="false" Direction="RightToLeft">
                            <p> قم بإدخال الاجابات بالانجليزي</p>
                            <asp:TextBox ID="TextBox11" runat="server" placeholder="ادخل الاجابة الاولى" Width="220px" Height="33" CssClass="p1" ></asp:TextBox>
                            <asp:TextBox ID="TextBox12" runat="server" placeholder="ادخل الاجابة الثانية" Width="220px" Height="33" CssClass="p1" ></asp:TextBox>
                            <asp:TextBox ID="TextBox13" runat="server" placeholder="ادخل الاجابة الثالثة" Width="220px" Height="33" CssClass="p1" ></asp:TextBox>
                            <asp:TextBox ID="TextBox14" runat="server" placeholder="ادخل الاجابة الرابعة" Width="220px" Height="33" CssClass="p1" ></asp:TextBox>
                            <br />
                            <p>قم بإدخال الاجابات بالعربي</p>
                            <asp:TextBox ID="TextBox15" runat="server" placeholder="ادخل الاجابة الاولى" Width="220px" Height="33" CssClass="p1" OnTextChanged="TextBox15_TextChanged" AutoPostBack="True"></asp:TextBox>
                            <asp:TextBox ID="TextBox16" runat="server" placeholder="ادخل الاجابة الثانية" Width="220px" Height="33" CssClass="p1" OnTextChanged="TextBox16_TextChanged" AutoPostBack="True"></asp:TextBox>
                            <asp:TextBox ID="TextBox17" runat="server" placeholder="ادخل الاجابة الثالثة" Width="220px" Height="33" CssClass="p1" OnTextChanged="TextBox17_TextChanged" AutoPostBack="True"></asp:TextBox>
                            <asp:TextBox ID="TextBox18" runat="server" placeholder="ادخل الاجابة الرابعة" Width="220px" Height="33" CssClass="p1" OnTextChanged="TextBox18_TextChanged" AutoPostBack="True"></asp:TextBox>
                        </asp:Panel>
                        <br />
                        <asp:Panel ID="Panel5" runat="server" Visible="false" Direction="RightToLeft">
                            <asp:DropDownList ID="DropDownList10" runat="server" CssClass="mydropdownlist">

                                <asp:ListItem Selected="True">أختر الاجابة الصحيحة</asp:ListItem>
                            </asp:DropDownList>
                        </asp:Panel>
                        <asp:Panel ID="Panel6" runat="server" Visible="false" Direction="RightToLeft">
                            <p>أختر الاجابة الصحيحة</p>
                            <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                                <asp:ListItem>صح</asp:ListItem>
                                <asp:ListItem>خطأ</asp:ListItem>
                            </asp:RadioButtonList>
                        </asp:Panel>
                        <asp:Button ID="Button2" ValidationGroup="masterGroup2" runat="server" Text="حفظ" CssClass="btn" OnClick="Button2_Click" />
                    </div>



                    <div class="" id="pr2e">
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="mydropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup1" ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="mydropdownlist"></asp:DropDownList>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup1" ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList3" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <asp:DropDownList ID="DropDownList5" runat="server" CssClass="mydropdownlist">
                            <asp:ListItem Selected="True">Selct level</asp:ListItem>
                            <asp:ListItem Value="A">A</asp:ListItem>
                            <asp:ListItem Value="B">B</asp:ListItem>
                            <asp:ListItem Value="C">C</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="mydropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                            <asp:ListItem>select type of question</asp:ListItem>
                            <asp:ListItem Value="T/F">True &amp; false</asp:ListItem>
                            <asp:ListItem Value="MCQ">Chose</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        <asp:TextBox ID="queEn" runat="server" Visible="false" Width="387px" Font-Bold="True" Font-Size="" Height="44px" placeholder="Add Question in English" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup1" ID="RequiredFieldValidator7" runat="server" ControlToValidate="queEn" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <asp:TextBox ID="queAr" runat="server" Visible="false" Width="387px" Font-Bold="True" Font-Size="" Height="44px" placeholder="Add Question in Arbic" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup1" ID="RequiredFieldValidator8" runat="server" ControlToValidate="queAr" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <asp:Panel ID="Panel1" runat="server" Visible="false">
                            <p>Enter the answers in english</p>
                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Anwser one" Width="220px" Height="33" CssClass="p1" OnTextChanged="TextBox1_TextChanged" AutoPostBack="True"></asp:TextBox>
                            <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Anwser two" Width="220px" Height="33" CssClass="p1" AutoPostBack="True" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                            <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter Anwser three" Width="220px" Height="33" CssClass="p1" AutoPostBack="True" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                            <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter Anwser four" Width="220px" Height="33" CssClass="p1" AutoPostBack="True" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
                            <br />
                            <p>Enter the answers in arbic</p>
                            <asp:TextBox ID="TextBox5" runat="server" placeholder="Enter Anwser one" Width="220px" Height="33" CssClass="p1"></asp:TextBox>
                            <asp:TextBox ID="TextBox6" runat="server" placeholder="Enter Anwser two" Width="220px" Height="33" CssClass="p1" OnTextChanged="TextBox6_TextChanged"></asp:TextBox>
                            <asp:TextBox ID="TextBox7" runat="server" placeholder="Enter Anwser three" Width="220px" Height="33" CssClass="p1"></asp:TextBox>
                            <asp:TextBox ID="TextBox8" runat="server" placeholder="Enter Anwser four" Width="220px" Height="33" CssClass="p1"></asp:TextBox>
                        </asp:Panel>
                        <br />
                        <asp:Panel ID="Panel2" runat="server" Visible="false">
                            <asp:DropDownList ID="DropDownList4" runat="server" CssClass="mydropdownlist">

                                <asp:ListItem Selected="True">select correct answer</asp:ListItem>
                            </asp:DropDownList>
                        </asp:Panel>
                        <asp:Panel ID="Panel3" runat="server" Visible="false">
                            <p>select correct answer</p>
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                <asp:ListItem>True</asp:ListItem>
                                <asp:ListItem>False</asp:ListItem>
                            </asp:RadioButtonList>
                        </asp:Panel>
                        <asp:Button ID="Button1" ValidationGroup="masterGroup1" runat="server" Text="save" CssClass="btn" OnClick="Button1_Click" />
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
