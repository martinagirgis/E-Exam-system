<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="confirmStudent.aspx.cs" Inherits="examApp.confirmStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
          .auto-style1 {
              margin: auto;
          }
          .auto-style2 {
              width: 59%;
              margin: auto auto auto 0px;
          }
           .dirct{
            direction:rtl;
        }
    </style>
</head>
<body onload="myFunction()">
    <form id="form1" runat="server">
        <div>
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
               </div>

            <div class="inner-Right1">
                <div id="Aprof" class="inner">

                    <p id="p3">Confirm Student</p>
                    <div class="secd ma" dir="rtl" id="ad2a">
                        <asp:GridView CssClass="auto-style1 ma" ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Student_ID" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Width="299px">
                            <AlternatingRowStyle BackColor="#F7F7F7"></AlternatingRowStyle>
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" HeaderText="تأكيد" SelectText="تأكيد"></asp:CommandField>
                                <asp:BoundField DataField="Student_ID" HeaderText="رقم" ReadOnly="True" InsertVisible="False" SortExpression="Student_ID"></asp:BoundField>
                                <asp:BoundField DataField="Name" HeaderText="الاسم" SortExpression="Name"></asp:BoundField>

                                <asp:BoundField DataField="Password" HeaderText="الرقم السري" SortExpression="Password"></asp:BoundField>
                                <asp:BoundField DataField="Email" HeaderText="البريد الالكتروني" SortExpression="Email"></asp:BoundField>
                                <asp:BoundField DataField="Expr1" HeaderText="القسم" SortExpression="Expr1"></asp:BoundField>
                                <%--<asp:BoundField DataField="Name_En" HeaderText="Department" SortExpression="Name_En"></asp:BoundField>--%>
                                <asp:BoundField DataField="Expr2" HeaderText="المستوي" SortExpression="Expr2" />
                                <%--<asp:BoundField DataField="Expr3" HeaderText="Level" SortExpression="Expr3" />--%>
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
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Exam_System_DBConnectionString %>" SelectCommand="SELECT Tbl_Student.Student_ID, Tbl_Student.Name, Tbl_Student.Password, Tbl_Student.Email, Tbl_department.Name_Ar AS Expr1, Tbl_department.Name_En, Tbl_Level.Name_Ar AS Expr2, Tbl_Level.Name_Er AS Expr3 FROM Tbl_department INNER JOIN Tbl_Level ON Tbl_department.Level_ID = Tbl_Level.Level_ID INNER JOIN Tbl_Student ON Tbl_department.Department_ID = Tbl_Student.Department_ID and  Tbl_Student.Approval = '0'"></asp:SqlDataSource>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString='<%$ ConnectionStrings:Exam_System_DBConnectionString %>' SelectCommand="SELECT [Prof_ID], [Name], [Password], [Email] FROM [Tbl_Prof] WHERE ([Approval] = @Approval)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="0" Name="Approval" Type="String"></asp:Parameter>
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>


                    <div class="ma" id="ad2e">
                        <asp:GridView CssClass="auto-style2 ma" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Student_ID" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
                            <AlternatingRowStyle BackColor="#F7F7F7"></AlternatingRowStyle>
                            <Columns>
                                <asp:CommandField ShowSelectButton="True"></asp:CommandField>
                                <asp:BoundField DataField="Student_ID" HeaderText="Student_ID" ReadOnly="True" InsertVisible="False" SortExpression="Student_ID"></asp:BoundField>
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"></asp:BoundField>

                                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password"></asp:BoundField>
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
                                <%--<asp:BoundField DataField="Expr1" HeaderText="Department" SortExpression="Expr1"></asp:BoundField>--%>
                                <asp:BoundField DataField="Name_En" HeaderText="Department" SortExpression="Name_En"></asp:BoundField>
                                <%--<asp:BoundField DataField="Expr2" HeaderText="Level" SortExpression="Expr2" />--%>
                                <asp:BoundField DataField="Expr3" HeaderText="Level" SortExpression="Expr3" />
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
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Exam_System_DBConnectionString %>" SelectCommand="SELECT Tbl_Student.Student_ID, Tbl_Student.Name, Tbl_Student.Password, Tbl_Student.Email, Tbl_department.Name_Ar AS Expr1, Tbl_department.Name_En, Tbl_Level.Name_Ar AS Expr2, Tbl_Level.Name_Er AS Expr3 FROM Tbl_department INNER JOIN Tbl_Level ON Tbl_department.Level_ID = Tbl_Level.Level_ID INNER JOIN Tbl_Student ON Tbl_department.Department_ID = Tbl_Student.Department_ID and  Tbl_Student.Approval = '0'"></asp:SqlDataSource>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:Exam_System_DBConnectionString %>' SelectCommand="SELECT [Prof_ID], [Name], [Password], [Email] FROM [Tbl_Prof] WHERE ([Approval] = @Approval)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="0" Name="Approval" Type="String"></asp:Parameter>
                            </SelectParameters>
                        </asp:SqlDataSource>

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
    <script type="text/javascript" src="js/js2.js"></script>
</body>
</html>

