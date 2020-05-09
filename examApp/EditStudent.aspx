<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditStudent.aspx.cs" Inherits="examApp.EditStudent" %>

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
    <form id="form1" runat="server">
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
                <div id="level" class="inner">
                    <p class="p" id="p9">Edit Student</p>
                    <br />


                    <div class="secd" dir="rtl" id="ad9a">
                        <asp:GridView CssClass="ma" ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Student_ID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" AllowPaging="True" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                            <AlternatingRowStyle BackColor="#DCDCDC"></AlternatingRowStyle>
                            <Columns>
                                <asp:CommandField ShowSelectButton="True"></asp:CommandField>
                                <asp:BoundField DataField="Student_ID" HeaderText="رقم" ReadOnly="True" InsertVisible="False" SortExpression="Student_ID"></asp:BoundField>
                                <asp:BoundField DataField="Name" HeaderText="الاسم" SortExpression="Name"></asp:BoundField>
                                <asp:BoundField DataField="Password" HeaderText="الرقم السري" SortExpression="Password"></asp:BoundField>
                                <asp:BoundField DataField="Email" HeaderText="البريد الالكتروني" SortExpression="Email"></asp:BoundField>
                                <asp:BoundField DataField="Expr1" HeaderText="القسم" SortExpression="Expr1"></asp:BoundField>
                                <%--<asp:BoundField DataField="Name_En" HeaderText="Department" SortExpression="Name_En"></asp:BoundField>--%>
                                <asp:BoundField DataField="Expr2" HeaderText="المستوى" SortExpression="Expr2"></asp:BoundField>
                                <%--<asp:BoundField DataField="Expr3" HeaderText="Level" SortExpression="Expr3"></asp:BoundField>--%>
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" ForeColor="Black"></FooterStyle>

                            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White"></HeaderStyle>

                            <PagerStyle HorizontalAlign="Center" BackColor="#999999" ForeColor="Black"></PagerStyle>

                            <RowStyle BackColor="#EEEEEE" ForeColor="Black"></RowStyle>

                            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                            <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

                            <SortedAscendingHeaderStyle BackColor="#0000A9"></SortedAscendingHeaderStyle>

                            <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

                            <SortedDescendingHeaderStyle BackColor="#000065"></SortedDescendingHeaderStyle>
                    </asp:GridView>
                        </div>


                    <div class="ma" id="ad9e">
                        <asp:GridView CssClass="ma" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Student_ID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True">
                            <AlternatingRowStyle BackColor="#DCDCDC"></AlternatingRowStyle>
                            <Columns>
                                <asp:CommandField ShowSelectButton="True"></asp:CommandField>
                                <asp:BoundField DataField="Student_ID" HeaderText="Student_ID" ReadOnly="True" InsertVisible="False" SortExpression="Student_ID"></asp:BoundField>
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name"></asp:BoundField>
                                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password"></asp:BoundField>
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
                                <%--<asp:BoundField DataField="Expr1" HeaderText="Department" SortExpression="Expr1"></asp:BoundField>--%>
                                <asp:BoundField DataField="Name_En" HeaderText="Department" SortExpression="Name_En"></asp:BoundField>
                                <%--<asp:BoundField DataField="Expr2" HeaderText="Level" SortExpression="Expr2"></asp:BoundField>--%>
                                <asp:BoundField DataField="Expr3" HeaderText="Level" SortExpression="Expr3"></asp:BoundField>
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" ForeColor="Black"></FooterStyle>

                            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White"></HeaderStyle>

                            <PagerStyle HorizontalAlign="Center" BackColor="#999999" ForeColor="Black"></PagerStyle>

                            <RowStyle BackColor="#EEEEEE" ForeColor="Black"></RowStyle>

                            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                            <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

                            <SortedAscendingHeaderStyle BackColor="#0000A9"></SortedAscendingHeaderStyle>

                            <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

                            <SortedDescendingHeaderStyle BackColor="#000065"></SortedDescendingHeaderStyle>
                    </asp:GridView>
                        </div>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:Exam_System_DBConnectionString %>' SelectCommand="SELECT Tbl_Student.Student_ID, Tbl_Student.Name, Tbl_Student.Password, Tbl_Student.Email, Tbl_department.Name_Ar AS Expr1, Tbl_department.Name_En, Tbl_Level.Name_Ar AS Expr2, Tbl_Level.Name_Er AS Expr3 FROM Tbl_department INNER JOIN Tbl_Level ON Tbl_department.Level_ID = Tbl_Level.Level_ID INNER JOIN Tbl_Student ON Tbl_department.Department_ID = Tbl_Student.Department_ID"></asp:SqlDataSource>
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
