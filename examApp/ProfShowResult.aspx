<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfShowResult.aspx.cs" Inherits="examApp.ProfShowResult" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
	<title>Show Result</title>
  
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
     <script>
  function printpage() {

   var getpanel = document.getElementById("<%= Panel1.ClientID%>");
   var MainWindow = window.open('', '', 'height=500,width=800');
   MainWindow.document.write('<html><head><title>Print Page</title>');
   MainWindow.document.write('</head><body>');
   MainWindow.document.write(getpanel.innerHTML);
   MainWindow.document.write('</body></html>');
   MainWindow.document.close();
   setTimeout(function () {
    MainWindow.print();
   }, 500);
   return false;

         }
         function printpage1() {

   var getpanel = document.getElementById("<%= Panel2.ClientID%>");
   var MainWindow = window.open('', '', 'height=500,width=800');
   MainWindow.document.write('<html><head><title>Print Page</title>');
   MainWindow.document.write('</head><body>');
   MainWindow.document.write(getpanel.innerHTML);
   MainWindow.document.write('</body></html>');
   MainWindow.document.close();
   setTimeout(function () {
    MainWindow.print();
   }, 500);
   return false;

  }
 </script>
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
                    <p class="p" id="p5">Show Result</p>



                    <div class="secd" dir="rtl" id="pr5a">
                        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="mydropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged"></asp:DropDownList>
                        <br />
                        <br />
                        <asp:DropDownList ID="DropDownList4" runat="server" CssClass="mydropdownlist" AutoPostBack="True"></asp:DropDownList>
                        <br />
                        <br />

                        <asp:Panel ID="Panel1" runat="server">
                        <asp:GridView CssClass="ma" ID="GridView2" runat="server" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" AllowPaging="True">
                            <AlternatingRowStyle BackColor="#F7F7F7"></AlternatingRowStyle>
                            <Columns>
                                <asp:BoundField DataField="Name" HeaderText="اسم الطالب" SortExpression="Name"></asp:BoundField>
                                <asp:BoundField DataField="Result" HeaderText="الدرجة" SortExpression="Result"></asp:BoundField>
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
                            </asp:Panel>
        <asp:Button ID="Button2" runat="server" OnClientClick="return printpage();"  Text="طباعة الدرجات" />

                    </div>



                    <div class="" id="pr5e">
                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="mydropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged1"></asp:DropDownList>
                        <br />
                        <br />
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="mydropdownlist" AutoPostBack="True"></asp:DropDownList>
                        <br />
                        <br />

                        <asp:Panel ID="Panel2" runat="server">
                        <asp:GridView CssClass="ma" ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" AllowPaging="True">
                            <AlternatingRowStyle BackColor="#F7F7F7"></AlternatingRowStyle>
                            <Columns>
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"></asp:BoundField>
                                <asp:BoundField DataField="Result" HeaderText="Result" SortExpression="Result"></asp:BoundField>
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
                            </asp:Panel>
        <asp:Button ID="Button1" runat="server" OnClientClick="return printpage1();"  Text="Print result" />

                    </div>

                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:Exam_System_DBConnectionString %>' SelectCommand="SELECT Tbl_Student.Name,Tbl_Result.Result FROM Tbl_Student,Tbl_Result where Tbl_Student.Student_ID = Tbl_Result.Student_ID  and  Tbl_Result.Chapter_ID = @Chapter_ID">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="Chapter_ID"></asp:ControlParameter>
                        </SelectParameters>
                    </asp:SqlDataSource>

                    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:Exam_System_DBConnectionString %>' SelectCommand="SELECT Tbl_Student.Name,Tbl_Result.Result FROM Tbl_Student,Tbl_Result where Tbl_Student.Student_ID = Tbl_Result.Student_ID  and  Tbl_Result.Chapter_ID = @Chapter_ID">
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
