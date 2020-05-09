﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditDepartment.aspx.cs" Inherits="examApp.EditDepartment" %>

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
                    <ul class="navbar-nav" id="dirc" style="width: 100%">
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
                <div id="level" class="inner">
                    <p class="p" id="p6">Edit Department</p>

                    <div class="secd" dir="rtl" id="ad6a">
                        <asp:GridView CssClass="ma" ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" Width="90%" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" DataKeyNames="Department_ID" AllowPaging="True" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" HeaderText="تعديل" SelectText="تعديل"></asp:CommandField>
                                <asp:BoundField DataField="Department_ID" HeaderText="رقم" ReadOnly="True" InsertVisible="False" SortExpression="Department_ID"></asp:BoundField>
                                <asp:BoundField DataField="Name_Ar" HeaderText="القسم" SortExpression="Name_Ar"></asp:BoundField>
                                <%--<asp:BoundField DataField="Name_En" HeaderText="Name Dep" SortExpression="Name_En"></asp:BoundField>--%>
                                <asp:BoundField DataField="Name_Ar1" HeaderText="المستوي" SortExpression="Name_Ar1"></asp:BoundField>
                                <%--<asp:BoundField DataField="Name_Er" HeaderText="Name Level" SortExpression="Name_Er"></asp:BoundField>--%>
                            </Columns>
                            <FooterStyle BackColor="#C6C3C6" ForeColor="Black"></FooterStyle>

                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF"></HeaderStyle>

                            <PagerStyle HorizontalAlign="Right" BackColor="#C6C3C6" ForeColor="Black"></PagerStyle>

                            <RowStyle BackColor="#DEDFDE" ForeColor="Black"></RowStyle>

                            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                            <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

                            <SortedAscendingHeaderStyle BackColor="#594B9C"></SortedAscendingHeaderStyle>

                            <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

                            <SortedDescendingHeaderStyle BackColor="#33276A"></SortedDescendingHeaderStyle>
                        </asp:GridView>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:Exam_System_DBConnectionString %>' SelectCommand="SELECT Tbl_Department.Department_ID,Tbl_Department.Name_Ar,Tbl_department.Name_En,Tbl_Level.Name_Ar,Tbl_Level.Name_Er FROM Tbl_Department,Tbl_Level where Tbl_Department.Level_ID = Tbl_Level.Level_ID" UpdateCommand="UPDATE [Tbl_Department]SET [Name_Ar] = @Name_Ar, [Name_En] = @Name_En WHERE [Department_ID] = @Department_ID" InsertCommand="INSERT INTO [Tbl_Department] ([Name_Ar], [Name_En]) VALUES (@Name_Ar, @Name_En)" DeleteCommand="DELETE FROM [Tbl_Department] WHERE [Department_ID] = @Department_ID">
                            <DeleteParameters>
                                <asp:Parameter Name="Department_ID"></asp:Parameter>
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Name_Ar"></asp:Parameter>
                                <asp:Parameter Name="Name_En"></asp:Parameter>
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Name_Ar"></asp:Parameter>
                                <asp:Parameter Name="Name_En"></asp:Parameter>
                                <asp:Parameter Name="Department_ID"></asp:Parameter>
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </div>

                    <div class="" id="ad6e">
                        <asp:GridView CssClass="ma" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" Width="90%" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="Department_ID" AllowPaging="True">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" HeaderText="Update" SelectText="Update"></asp:CommandField>
                                <asp:BoundField DataField="Department_ID" HeaderText="Department_ID" ReadOnly="True" InsertVisible="False" SortExpression="Department_ID"></asp:BoundField>
                                <%--<asp:BoundField DataField="Name_Ar" HeaderText="Name Dep" SortExpression="Name_Ar"></asp:BoundField>--%>
                                <asp:BoundField DataField="Name_En" HeaderText="Name Dep" SortExpression="Name_En"></asp:BoundField>
                                <%--<asp:BoundField DataField="Name_Ar1" HeaderText="Name Level" SortExpression="Name_Ar1"></asp:BoundField>--%>
                                <asp:BoundField DataField="Name_Er" HeaderText="Name Level" SortExpression="Name_Er"></asp:BoundField>
                            </Columns>
                            <FooterStyle BackColor="#C6C3C6" ForeColor="Black"></FooterStyle>

                            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF"></HeaderStyle>

                            <PagerStyle HorizontalAlign="Right" BackColor="#C6C3C6" ForeColor="Black"></PagerStyle>

                            <RowStyle BackColor="#DEDFDE" ForeColor="Black"></RowStyle>

                            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                            <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

                            <SortedAscendingHeaderStyle BackColor="#594B9C"></SortedAscendingHeaderStyle>

                            <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

                            <SortedDescendingHeaderStyle BackColor="#33276A"></SortedDescendingHeaderStyle>
                        </asp:GridView>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:Exam_System_DBConnectionString %>' SelectCommand="SELECT Tbl_Department.Department_ID,Tbl_Department.Name_Ar,Tbl_department.Name_En,Tbl_Level.Name_Ar,Tbl_Level.Name_Er FROM Tbl_Department,Tbl_Level where Tbl_Department.Level_ID = Tbl_Level.Level_ID" UpdateCommand="UPDATE [Tbl_Department]SET [Name_Ar] = @Name_Ar, [Name_En] = @Name_En WHERE [Department_ID] = @Department_ID" InsertCommand="INSERT INTO [Tbl_Department] ([Name_Ar], [Name_En]) VALUES (@Name_Ar, @Name_En)" DeleteCommand="DELETE FROM [Tbl_Department] WHERE [Department_ID] = @Department_ID">
                            <DeleteParameters>
                                <asp:Parameter Name="Department_ID"></asp:Parameter>
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="Name_Ar"></asp:Parameter>
                                <asp:Parameter Name="Name_En"></asp:Parameter>
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Name_Ar"></asp:Parameter>
                                <asp:Parameter Name="Name_En"></asp:Parameter>
                                <asp:Parameter Name="Department_ID"></asp:Parameter>
                            </UpdateParameters>
                        </asp:SqlDataSource>
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
