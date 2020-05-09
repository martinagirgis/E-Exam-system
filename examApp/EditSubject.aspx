﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditSubject.aspx.cs" Inherits="examApp.EditSubject" %>

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
                    <p class="p" id="p7">Edit Subject</p>
                    <br />


                    <div class="secd" dir="rtl" id="ad7a">
                        <asp:GridView CssClass="ma" ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Subject_ID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Width="576px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" >
                            <AlternatingRowStyle BackColor="#F7F7F7"></AlternatingRowStyle>
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" HeaderText="تعديل" SelectText="تعديل"></asp:CommandField>
                                <asp:BoundField DataField="Subject_ID" HeaderText="رقم" ReadOnly="True" InsertVisible="False" SortExpression="Subject_ID"></asp:BoundField>
                                <asp:BoundField DataField="Name_Ar" HeaderText="المادة" SortExpression="Name_Ar"></asp:BoundField>
                                <%--<asp:BoundField DataField="Name_Er" HeaderText="Name of subject" SortExpression="Name_Er"></asp:BoundField>--%>
                                <asp:BoundField DataField="Name" HeaderText="استاذ" SortExpression="Name"></asp:BoundField>
                                <asp:BoundField DataField="Expr1" HeaderText="القسم" SortExpression="Expr1"></asp:BoundField>
                                <%--<asp:BoundField DataField="Name_En" HeaderText="Name of department" SortExpression="Name_En"></asp:BoundField>--%>
                                <asp:BoundField DataField="Expr2" HeaderText="المستوى" SortExpression="Expr2"></asp:BoundField>
                                <%--<asp:BoundField DataField="Expr3" HeaderText="Name of level" SortExpression="Expr3"></asp:BoundField>--%>
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
                        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:Exam_System_DBConnectionString %>' SelectCommand="SELECT Tbl_Subject.Subject_ID, Tbl_Subject.Name_Ar, Tbl_Subject.Name_Er, Tbl_Prof.Name, Tbl_department.Name_Ar AS Expr1, Tbl_department.Name_En, Tbl_Level.Name_Ar AS Expr2, Tbl_Level.Name_Er AS Expr3 FROM Tbl_Prof INNER JOIN Tbl_Level INNER JOIN Tbl_department ON Tbl_Level.Level_ID = Tbl_department.Level_ID INNER JOIN Tbl_Subject ON Tbl_department.Department_ID = Tbl_Subject.Department_ID ON Tbl_Prof.Prof_ID = Tbl_Subject.Prof_ID"></asp:SqlDataSource>
                    </div>


                    <div class=""  id="ad7e">
                        <asp:GridView CssClass="ma" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Subject_ID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            <AlternatingRowStyle BackColor="#F7F7F7"></AlternatingRowStyle>
                            <Columns>
                                <asp:CommandField ShowSelectButton="True"></asp:CommandField>
                                <asp:BoundField DataField="Subject_ID" HeaderText="ID" ReadOnly="True" InsertVisible="False" SortExpression="Subject_ID"></asp:BoundField>
                                <%--<asp:BoundField DataField="Name_Ar" HeaderText="Name of subject" SortExpression="Name_Ar"></asp:BoundField>--%>
                                <asp:BoundField DataField="Name_Er" HeaderText="subject" SortExpression="Name_Er"></asp:BoundField>
                                <asp:BoundField DataField="Name" HeaderText="Prof" SortExpression="Name"></asp:BoundField>
                                <%--<asp:BoundField DataField="Expr1" HeaderText="Name of department" SortExpression="Expr1"></asp:BoundField>--%>
                                <asp:BoundField DataField="Name_En" HeaderText="department" SortExpression="Name_En"></asp:BoundField>
                                <%--<asp:BoundField DataField="Expr2" HeaderText="Name of level" SortExpression="Expr2"></asp:BoundField>--%>
                                <asp:BoundField DataField="Expr3" HeaderText="level" SortExpression="Expr3"></asp:BoundField>
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
                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:Exam_System_DBConnectionString %>' SelectCommand="SELECT Tbl_Subject.Subject_ID, Tbl_Subject.Name_Ar, Tbl_Subject.Name_Er, Tbl_Prof.Name, Tbl_department.Name_Ar AS Expr1, Tbl_department.Name_En, Tbl_Level.Name_Ar AS Expr2, Tbl_Level.Name_Er AS Expr3 FROM Tbl_Prof INNER JOIN Tbl_Level INNER JOIN Tbl_department ON Tbl_Level.Level_ID = Tbl_department.Level_ID INNER JOIN Tbl_Subject ON Tbl_department.Department_ID = Tbl_Subject.Department_ID ON Tbl_Prof.Prof_ID = Tbl_Subject.Prof_ID"></asp:SqlDataSource>
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
