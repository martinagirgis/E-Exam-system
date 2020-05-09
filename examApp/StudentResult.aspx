<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentResult.aspx.cs" Inherits="examApp.StudentResult" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
	<title>Show result</title>
	<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Open+Sans">
	<link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="css/StyleSheet.css">
    <link rel="stylesheet" type="text/css" href="css/navstyle.css">
    <link rel="stylesheet" type="text/css" href="css/StyleEditprof.css">
     <style>
        .dirct{
            direction:rtl;
        }
    </style>
</head>
<body onload="myFunction()">
    <form id="form1" runat="server">
       <div class="outer">
            <div class="Head1 navbar-expand-lg" >
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"><image src="img/align.png" width="25px" height="25px"></image></span>
              </button>
                <div id="navbarNav" class="collapse navbar-collapse">
                <ul class="navbar-nav" id="dirc" style="width:100%;">
                    <%--<li id="H">
                        <asp:HyperLink ID="HyperLink5" runat="server">Home</asp:HyperLink></li>--%>
                    <li class="nav-item" id="">
                        <asp:HyperLink ID="HyperLink4" runat="server"  NavigateUrl="~/StudentChoseExam.aspx">Chose Exam</asp:HyperLink>
                    </li>
                   
                    <li class="nav-item" id="">
                        <asp:HyperLink ID="HyperLink2" runat="server"  NavigateUrl="~/StudentResult.aspx">Student Result</asp:HyperLink>
                    </li>
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
                     <p class="p" id="p3">Show Result</p>
                    <br /><br />
                    <div class="secd1 ma" dir="rtl" id="st2a">
                    <asp:GridView CssClass="ma" ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                        <Columns>
                            <asp:BoundField DataField="Name_Ar" HeaderText="المادة" SortExpression="Name_Ar"></asp:BoundField>
                            <%--<asp:BoundField DataField="Name_Er" HeaderText="Name_Er" SortExpression="Name_Er"></asp:BoundField>--%>
                            <asp:BoundField DataField="Name_Ar1" HeaderText="الفصل" SortExpression="Name_Ar1"></asp:BoundField>
                            <%--<asp:BoundField DataField="Name_En" HeaderText="Name_En" SortExpression="Name_En"></asp:BoundField>--%>
                            <asp:BoundField DataField="Result" HeaderText="الدرجة" SortExpression="Result"></asp:BoundField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:Exam_System_DBConnectionString %>' SelectCommand="select Tbl_Subject.Name_Ar, Tbl_Subject.Name_Er, Tbl_chapter.Name_Ar , Tbl_chapter.Name_En, Tbl_Result.Result from Tbl_Subject , Tbl_chapter , Tbl_Result where Tbl_Subject.Subject_ID = Tbl_Result.Subject_ID and Tbl_chapter.Chapter_ID = Tbl_Result.Chapter_ID and Tbl_Result.Student_ID=@Student_ID">
                        <SelectParameters>
                            <asp:QueryStringParameter QueryStringField="id" Name="Student_ID"></asp:QueryStringParameter>
                        </SelectParameters>
                    </asp:SqlDataSource>
                    
                      
                    </div>


                    <div  class="ma" id="st2e">
                        <asp:GridView CssClass="ma" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                        <Columns>
                            <%--<asp:BoundField DataField="Name_Ar" HeaderText="Name_Ar" SortExpression="Name_Ar"></asp:BoundField>--%>
                            <asp:BoundField DataField="Name_Er" HeaderText="subject" SortExpression="Name_Er"></asp:BoundField>
                            <%--<asp:BoundField DataField="Name_Ar1" HeaderText="Name_Ar1" SortExpression="Name_Ar1"></asp:BoundField>--%>
                            <asp:BoundField DataField="Name_En" HeaderText="chapter" SortExpression="Name_En"></asp:BoundField>
                            <asp:BoundField DataField="Result" HeaderText="Result" SortExpression="Result"></asp:BoundField>
                        </Columns>
                    </asp:GridView>
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
    <script type="text/javascript" src="js/jsS.js"></script>
</body>
</html>
