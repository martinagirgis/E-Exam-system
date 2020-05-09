<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfEditQuestion.aspx.cs" Inherits="examApp.ProfEditQuestion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
	<title>Edit Question</title>
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
                   <p class="p" id="p4">Edit Question</p>


                   <div class="secd" dir="rtl" id="pr4a">
                       <asp:DropDownList ID="DropDownList3" runat="server" CssClass="mydropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged"></asp:DropDownList>
                       <br />
                       <br />
                       <asp:DropDownList ID="DropDownList4" runat="server" CssClass="mydropdownlist" AutoPostBack="True"></asp:DropDownList>
                       <br />
                       <br />
                       <asp:GridView CssClass="ma" ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Question_ID" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" AllowPaging="True" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                           <AlternatingRowStyle BackColor="#F7F7F7"></AlternatingRowStyle>
                           <Columns>
                               <asp:CommandField ShowSelectButton="True"></asp:CommandField>

                               <asp:BoundField DataField="Question_ID" HeaderText="رقم" ReadOnly="True" InsertVisible="False" SortExpression="Question_ID"></asp:BoundField>
                               <asp:BoundField DataField="Question_Ar" HeaderText="السؤال" SortExpression="Question_Ar"></asp:BoundField>
                               <asp:BoundField DataField="Answer_Ar" HeaderText="الاجابة" SortExpression="Answer_Ar"></asp:BoundField>
                               <asp:BoundField DataField="Question_Level" HeaderText="مستوى السؤال" SortExpression="Question_Level"></asp:BoundField>
                           </Columns>
                           <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C"></FooterStyle>

                           <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7"></HeaderStyle>

                           <PagerStyle HorizontalAlign="Right" BackColor="#E7E7FF" ForeColor="#4A3C8C"></PagerStyle>

                           <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C"></RowStyle>

                           <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7"></SelectedRowStyle>

                           <SortedAscendingCellStyle BackColor="#F4F4FD"></SortedAscendingCellStyle>

                           <SortedAscendingHeaderStyle BackColor="#5A4C9D"></SortedAscendingHeaderStyle>

                           <SortedDescendingCellStyle BackColor="#D8D8F0"></SortedDescendingCellStyle>

                           <SortedDescendingHeaderStyle BackColor="#3E3277"></SortedDescendingHeaderStyle>
                       </asp:GridView>
                   </div>


                   <div class="" id="pr4e">
                       <asp:DropDownList ID="DropDownList2" runat="server" CssClass="mydropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"></asp:DropDownList>
                       <br />
                       <br />
                       <asp:DropDownList ID="DropDownList1" runat="server" CssClass="mydropdownlist" AutoPostBack="True"></asp:DropDownList>
                       <br />
                       <br />
                       <asp:GridView CssClass="ma" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Question_ID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" AllowPaging="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                           <AlternatingRowStyle BackColor="#F7F7F7"></AlternatingRowStyle>
                           <Columns>
                               <asp:CommandField ShowSelectButton="True"></asp:CommandField>
                               <asp:BoundField DataField="Question_ID" HeaderText="ID" ReadOnly="True" InsertVisible="False" SortExpression="Question_ID"></asp:BoundField>
                               <%--<asp:BoundField DataField="Question_Ar" HeaderText="Question" SortExpression="Question_Ar"></asp:BoundField>--%>
                               <asp:BoundField DataField="Question_En" HeaderText="Question" SortExpression="Question_En"></asp:BoundField>
                               <%--<asp:BoundField DataField="Answer_Ar" HeaderText="Answer" SortExpression="Answer_Ar"></asp:BoundField>--%>
                               <asp:BoundField DataField="Answer_En" HeaderText="Answer" SortExpression="Answer_En"></asp:BoundField>
                               <asp:BoundField DataField="Question_Level" HeaderText="Question Level" SortExpression="Question_Level"></asp:BoundField>
                           </Columns>
                           <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C"></FooterStyle>

                           <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7"></HeaderStyle>

                           <PagerStyle HorizontalAlign="Right" BackColor="#E7E7FF" ForeColor="#4A3C8C"></PagerStyle>

                           <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C"></RowStyle>

                           <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7"></SelectedRowStyle>

                           <SortedAscendingCellStyle BackColor="#F4F4FD"></SortedAscendingCellStyle>

                           <SortedAscendingHeaderStyle BackColor="#5A4C9D"></SortedAscendingHeaderStyle>

                           <SortedDescendingCellStyle BackColor="#D8D8F0"></SortedDescendingCellStyle>

                           <SortedDescendingHeaderStyle BackColor="#3E3277"></SortedDescendingHeaderStyle>
                       </asp:GridView>
                   </div>
                   <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:Exam_System_DBConnectionString %>' SelectCommand="SELECT Tbl_Question.Question_ID,Tbl_Question.Question_Ar,Tbl_Question.Question_En ,Tbl_Answer.Answer_Ar,Tbl_Answer.Answer_En,Tbl_Question.Question_Level FROM Tbl_Question,Tbl_Answer where Tbl_Question.Question_ID = Tbl_Answer.Question_ID and Tbl_Answer.Correct_Answer = 1 and  Tbl_Question.Chapter_ID = @Chapter_ID">
                       <SelectParameters>
                           <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="Chapter_ID"></asp:ControlParameter>
                       </SelectParameters>
                   </asp:SqlDataSource>

                   <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:Exam_System_DBConnectionString %>' SelectCommand="SELECT Tbl_Question.Question_ID,Tbl_Question.Question_Ar,Tbl_Question.Question_En ,Tbl_Answer.Answer_Ar,Tbl_Answer.Answer_En,Tbl_Question.Question_Level FROM Tbl_Question,Tbl_Answer where Tbl_Question.Question_ID = Tbl_Answer.Question_ID and Tbl_Answer.Correct_Answer = 1 and  Tbl_Question.Chapter_ID = @Chapter_ID">
                       <SelectParameters>
                           <asp:ControlParameter ControlID="DropDownList4" PropertyName="SelectedValue" Name="Chapter_ID"></asp:ControlParameter>
                       </SelectParameters>
                   </asp:SqlDataSource>

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
