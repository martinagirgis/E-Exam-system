<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProfEditChapters.aspx.cs" Inherits="examApp.ProfEditChapters" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
	<title>Edit Chapters</title>
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
                    <p class="p" id="p3">Edit Chapters</p>
                    <div class="secd" dir="rtl" id="pr3a">
                        <asp:GridView ID="GridView2" CssClass="ma" runat="server" AutoGenerateColumns="False" DataKeyNames="Chapter_ID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" OnLoad="GridView1_Load">
                            <AlternatingRowStyle BackColor="#F7F7F7"></AlternatingRowStyle>
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" SelectText="اختر"></asp:CommandField>
                                <asp:BoundField DataField="Chapter_ID" HeaderText="رقم" ReadOnly="True" InsertVisible="False" SortExpression="Chapter_ID"></asp:BoundField>
                                <asp:BoundField DataField="Name_Ar" HeaderText="اسم الفصل" SortExpression="Name_Ar"></asp:BoundField>
                                <%--<asp:BoundField DataField="Name_En" HeaderText="Chapter Name" SortExpression="Name_En"></asp:BoundField>--%>
                                <asp:BoundField DataField="Name_Ar1" HeaderText="اسم المادة" SortExpression="Name_Ar1"></asp:BoundField>
                                <%--<asp:BoundField DataField="Name_Er" HeaderText="Subject Name" SortExpression="Name_Er"></asp:BoundField>--%>
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
                    <div class="" id="pr3e">
                        <asp:GridView ID="GridView1" CssClass="ma" runat="server" AutoGenerateColumns="False" DataKeyNames="Chapter_ID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnLoad="GridView1_Load">
                            <AlternatingRowStyle BackColor="#F7F7F7"></AlternatingRowStyle>
                            <Columns>
                                <asp:CommandField ShowSelectButton="True"></asp:CommandField>
                                <asp:BoundField DataField="Chapter_ID" HeaderText="ID" ReadOnly="True" InsertVisible="False" SortExpression="Chapter_ID"></asp:BoundField>
                                <%--<asp:BoundField DataField="Name_Ar" HeaderText="Chapter Name" SortExpression="Name_Ar"></asp:BoundField>--%>
                                <asp:BoundField DataField="Name_En" HeaderText="Chapter Name" SortExpression="Name_En"></asp:BoundField>
                                <%--<asp:BoundField DataField="Name_Ar1" HeaderText="Subject Name" SortExpression="Name_Ar1"></asp:BoundField>--%>
                                <asp:BoundField DataField="Name_Er" HeaderText="Subject Name" SortExpression="Name_Er"></asp:BoundField>
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
                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:Exam_System_DBConnectionString %>' SelectCommand="SELECT Tbl_chapter.Chapter_ID,Tbl_chapter.Name_Ar,Tbl_chapter.Name_En,Tbl_Subject.Name_Ar,Tbl_Subject.Name_Er FROM Tbl_chapter,Tbl_Subject where Tbl_chapter.Subject_ID = Tbl_Subject.Subject_ID and Tbl_Subject.Prof_ID =@Prof_ID">
                        <SelectParameters>
                            <asp:QueryStringParameter QueryStringField="id" Name="Prof_ID"></asp:QueryStringParameter>
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
