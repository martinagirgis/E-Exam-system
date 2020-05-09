<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editProf.aspx.cs" Inherits="examApp.editProf" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
	<title>Edit Prof</title>
	<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Open+Sans">
	<link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="css/StyleSheet.css">
    <link rel="stylesheet" type="text/css" href="css/navstyle.css">
    <link rel="stylesheet" type="text/css" href="css/StyleEditprof.css">
</head>
<body>
    <form id="form1" runat="server">
        <div class="outer">
            <div class="inner-Right1">
                <div id="Home" class="inner">


                    <asp:Panel ID="Panel9" runat="server" Visible="False" >
                        <p>Edit Prof</p>
                        <div class="cen">

                            <table class="ma" dir="rtl">
                                <tr>
                                    <td>
                                        <p class="p1">تعديل بيانات الاستاذ</p>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox17" runat="server" CssClass="tx1" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup1" ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox17" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="p1">الرقم السري</p>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox18" runat="server" CssClass="tx1" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup1" ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox18" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="p1">البريد الالكترونيه</p>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox19" runat="server" CssClass="tx1" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup1" ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox19" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>

                            </table>
                        </div>
                        <br />

                        <asp:Button ID="Button25" runat="server" Text="رجوع" CssClass="btn" OnClick="Button25_Click" />
                        <asp:Button ID="Button26" ValidationGroup="masterGroup1" runat="server" Text="حفظ" CssClass="btn" OnClick="Button26_Click" />
                        <asp:Button ID="Button27" runat="server" Text="حذف" CssClass="btn" OnClick="Button27_Click" />

                    </asp:Panel>


                    <asp:Panel ID="Panel1" runat="server" Visible="False" >
                        <p>Edit Prof</p>
                        <div class="cen">

                            <table class="ma">
                                <tr>
                                    <td>
                                        <p class="p1">Name :</p>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox4" runat="server" CssClass="tx1" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup2" ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="p1">Password:</p>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox5" runat="server" CssClass="tx1" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup2" ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="p1">Email :</p>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox6" runat="server" CssClass="tx1" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup2" ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>

                            </table>
                        </div>
                        <br />

                        <asp:Button ID="Button1" runat="server" Text="cancel" CssClass="btn" OnClick="Button1_Click" />
                        <asp:Button ID="Button2" runat="server" ValidationGroup="masterGroup2" Text="save" CssClass="btn" OnClick="Button2_Click" />
                        <asp:Button ID="Button9" runat="server" Text="Delete" CssClass="btn" OnClick="Button9_Click"/>

                    </asp:Panel>


                    <asp:Panel ID="Panel7" runat="server" Visible="False" >
                        <p>تعديل القسم</p>
                        <div class="cen">

                            <table class="ma" dir="rtl">
                                <tr>
                                    <td>
                                        <p class="p1">المستوى </p>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList9" runat="server" CssClass="mydropdownlist"></asp:DropDownList>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup3" ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList9" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="p1">اسم القسم بالانجليزي</p>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox13" runat="server" CssClass="tx1" ></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup3" ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox13" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="p1">اسم القسم بالعربي</p>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox14" runat="server" CssClass="tx1" ></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup3" ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox14" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                               
                            </table>
                        </div>
                        <br />
                        <asp:Button ID="Button19" runat="server" Text="رجوع" CssClass="btn" OnClick="Button19_Click" />
                        <asp:Button ID="Button20" runat="server" ValidationGroup="masterGroup3" Text="حفظ" CssClass="btn" OnClick="Button20_Click"  />
                        <asp:Button ID="Button21" runat="server" Text="حذف" CssClass="btn" OnClick="Button21_Click" />                        
                    </asp:Panel>


                    <asp:Panel ID="Panel2" runat="server" Visible="False">
                        <p>Edit Department</p>
                        <div class="cen">

                            <table class="ma">
                                <tr>
                                    <td>
                                        <p class="p1">Level :</p>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="mydropdownlist"></asp:DropDownList>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup4" ID="RequiredFieldValidator9" runat="server" ControlToValidate="DropDownList1" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="p1">Name in english :</p>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="name_en_dep" runat="server" CssClass="tx1" ></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup4" ID="RequiredFieldValidator11" runat="server" ControlToValidate="name_en_dep" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="p1">Name in Arabic :</p>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="name_ar_dep" runat="server" CssClass="tx1" ></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup4" ID="RequiredFieldValidator12" runat="server" ControlToValidate="name_ar_dep" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                               
                            </table>
                        </div>
                        <br />
                        <asp:Button ID="Button3" runat="server" Text="cancel" CssClass="btn" OnClick="Button3_Click" />
                        <asp:Button ID="Button4" ValidationGroup="masterGroup4" runat="server" Text="save" CssClass="btn" OnClick="Button4_Click" />
                        <asp:Button ID="Button5" runat="server" Text="Delete" CssClass="btn" OnClick="Button5_Click" />                        
                    </asp:Panel>

                    <asp:Panel ID="Panel8" runat="server" Visible="False" >
                        <p>تعديل المواد</p>
                        <div class="cen">

                            <table class="ma"  dir="rtl">
                                <tr>
                                    <td>
                                        <p class="p1">الاستاذ</p>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList10" runat="server" CssClass="mydropdownlist"></asp:DropDownList>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup5" ID="RequiredFieldValidator13" runat="server" ControlToValidate="DropDownList10" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="p1">المستوى</p>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList11" runat="server" CssClass="mydropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList11_SelectedIndexChanged" ></asp:DropDownList>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup5" ID="RequiredFieldValidator14" runat="server" ControlToValidate="DropDownList11" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="p1">القسم</p>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList12" runat="server" CssClass="mydropdownlist"></asp:DropDownList>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup5" ID="RequiredFieldValidator15" runat="server" ControlToValidate="DropDownList12" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="p1">الاسم بالانجليزي</p>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox15" runat="server" CssClass="tx1"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup5" ID="RequiredFieldValidator16" runat="server" ControlToValidate="TextBox15" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="p1">الاسم بالعربي</p>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox16" runat="server" CssClass="tx1"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup5" ID="RequiredFieldValidator17" runat="server" ControlToValidate="TextBox16" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>

                            </table>
                        </div>
                        <br />
                        <asp:Button ID="Button22" runat="server" Text="رجوع" CssClass="btn" OnClick="Button22_Click" />
                        <asp:Button ID="Button23" runat="server" Text="حفظ" ValidationGroup="masterGroup5" CssClass="btn" OnClick="Button23_Click" />
                        <asp:Button ID="Button24" runat="server" Text="حذف" CssClass="btn" OnClick="Button24_Click" />
                    </asp:Panel>

                    <asp:Panel ID="Panel3" runat="server" Visible="False">
                        <p>Edit Subject</p>
                        <div class="cen">

                            <table class="ma">
                                <tr>
                                    <td>
                                        <p class="p1">Prof :</p>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList4" runat="server" CssClass="mydropdownlist"></asp:DropDownList>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup6" ID="RequiredFieldValidator18" runat="server" ControlToValidate="DropDownList4" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="p1">Level :</p>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="mydropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"></asp:DropDownList>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup6" ID="RequiredFieldValidator19" runat="server" ControlToValidate="DropDownList2" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="p1">Department :</p>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="mydropdownlist"></asp:DropDownList>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup6" ID="RequiredFieldValidator20" runat="server" ControlToValidate="DropDownList3" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="p1">Name in english :</p>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox1" runat="server" CssClass="tx1"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup6" ID="RequiredFieldValidator21" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="p1">Name in Arabic :</p>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox2" runat="server" CssClass="tx1"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup6" ID="RequiredFieldValidator22" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>

                            </table>
                        </div>
                        <br />
                        <asp:Button ID="Button6" runat="server" Text="cancel" CssClass="btn" OnClick="Button6_Click" />
                        <asp:Button ID="Button7" runat="server" Text="save" ValidationGroup="masterGroup6" CssClass="btn" OnClick="Button7_Click"  />
                        <asp:Button ID="Button8" runat="server" Text="Delete" CssClass="btn" OnClick="Button8_Click" />
                    </asp:Panel>



                    <asp:Panel ID="Panel10" runat="server" Visible="False" >
                        <p>تعديل بيانات الطالب</p>
                         <div class="cen">

                             <table class="ma" dir="rtl">
                                 <tr>
                                     <td>
                                         <p class="p1">الاسم</p>
                                     </td>
                                     <td>
                                         <asp:TextBox ID="TextBox20" runat="server" CssClass="tx1" ></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup7" ID="RequiredFieldValidator23" runat="server" ControlToValidate="TextBox20" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>
                                         <p class="p1">الرقم السري</p>
                                     </td>
                                     <td>
                                         <asp:TextBox ID="TextBox21" runat="server" CssClass="tx1"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup7" ID="RequiredFieldValidator24" runat="server" ControlToValidate="TextBox21" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>
                                         <p class="p1">البريد الالكتروني</p>
                                     </td>
                                     <td>
                                         <asp:TextBox ID="TextBox22" runat="server" CssClass="tx1"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup7" ID="RequiredFieldValidator25" runat="server" ControlToValidate="TextBox22" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>
                                         <p class="p1">المستوى</p>
                                     </td>
                                     <td>
                                         <asp:DropDownList ID="DropDownList13" runat="server" CssClass="mydropdownlist" AutoPostBack="True" OnSelectedIndexChanged="DropDownList13_SelectedIndexChanged"></asp:DropDownList>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup7" ID="RequiredFieldValidator26" runat="server" ControlToValidate="DropDownList13" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>
                                         <p class="p1">القسم</p>
                                     </td>
                                     <td>
                                         <asp:DropDownList ID="DropDownList14" runat="server" CssClass="mydropdownlist"></asp:DropDownList>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup7" ID="RequiredFieldValidator27" runat="server" ControlToValidate="DropDownList14" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                     </td>
                                 </tr>
                             </table>
                         </div>
                        <br />

                        <asp:Button ID="Button28" runat="server" Text="رجوع" CssClass="btn" OnClick="Button28_Click" />
                        <asp:Button ID="Button29" runat="server" Text="حفظ" ValidationGroup="masterGroup7" CssClass="btn" OnClick="Button29_Click" />
                        <asp:Button ID="Button30" runat="server" Text="حذف" CssClass="btn" OnClick="Button30_Click"/>

                    </asp:Panel>

                     <asp:Panel ID="Panel4" runat="server" Visible="False" >
                        <p>Edit Student</p>
                         <div class="cen">

                             <table class="ma">
                                 <tr>
                                     <td>
                                         <p class="p1">Name :</p>
                                     </td>
                                     <td>
                                         <asp:TextBox ID="TextBox3" runat="server" CssClass="tx1" ></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup8" ID="RequiredFieldValidator28" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>
                                         <p class="p1">Password:</p>
                                     </td>
                                     <td>
                                         <asp:TextBox ID="TextBox7" runat="server" CssClass="tx1"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup8" ID="RequiredFieldValidator29" runat="server" ControlToValidate="TextBox7" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>
                                         <p class="p1">Email :</p>
                                     </td>
                                     <td>
                                         <asp:TextBox ID="TextBox8" runat="server" CssClass="tx1"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup8" ID="RequiredFieldValidator30" runat="server" ControlToValidate="TextBox8" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>
                                         <p class="p1">Level :</p>
                                     </td>
                                     <td>
                                         <asp:DropDownList ID="DropDownList5" runat="server" CssClass="mydropdownlist" OnSelectedIndexChanged="DropDownList5_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup8" ID="RequiredFieldValidator31" runat="server" ControlToValidate="DropDownList5" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                     </td>
                                 </tr>
                                 <tr>
                                     <td>
                                         <p class="p1">Department :</p>
                                     </td>
                                     <td>
                                         <asp:DropDownList ID="DropDownList6" runat="server" CssClass="mydropdownlist"></asp:DropDownList>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup8" ID="RequiredFieldValidator32" runat="server" ControlToValidate="DropDownList6" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                     </td>
                                 </tr>
                             </table>
                         </div>
                        <br />

                        <asp:Button ID="Button10" runat="server" Text="cancel" CssClass="btn" OnClick="Button10_Click" />
                        <asp:Button ID="Button11" runat="server" ValidationGroup="masterGroup8"  Text="save" CssClass="btn" OnClick="Button11_Click"/>
                        <asp:Button ID="Button12" runat="server" Text="Delete" CssClass="btn" OnClick="Button12_Click"/>

                    </asp:Panel>





                    <asp:Panel ID="Panel11" runat="server" Visible="False">
                        <p>تعديل الفصل</p>
                        <div class="cen">

                            <table class="ma" dir="rtl">
                                <tr>
                                    <td>
                                        <p class="p1">المادة</p>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList15" runat="server" CssClass="mydropdownlist"></asp:DropDownList>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup9" ID="RequiredFieldValidator33" runat="server" ControlToValidate="DropDownList15" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="p1">الاسم باللغة الانجليزية</p>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox23" runat="server" CssClass="tx1" ></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup9" ID="RequiredFieldValidator34" runat="server" ControlToValidate="TextBox23" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="p1">الاسم باللغة العربية</p>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox24" runat="server" CssClass="tx1" ></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup9" ID="RequiredFieldValidator35" runat="server" ControlToValidate="TextBox24" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                               
                            </table>
                        </div>
                        <br />
                        <asp:Button ID="Button31" runat="server" Text="رجوع" CssClass="btn" OnClick="Button31_Click" />
                        <asp:Button ID="Button32" runat="server" Text="حفظ" ValidationGroup="masterGroup9" CssClass="btn" OnClick="Button32_Click" />
                        <asp:Button ID="Button33" runat="server" Text="حذف" CssClass="btn" OnClick="Button33_Click"/>                        
                    </asp:Panel>


                    <asp:Panel ID="Panel5" runat="server" Visible="False">
                        <p>Edit Chapter</p>
                        <div class="cen">

                            <table class="ma">
                                <tr>
                                    <td>
                                        <p class="p1">Subject :</p>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList7" runat="server" CssClass="mydropdownlist"></asp:DropDownList>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup10" ID="RequiredFieldValidator36" runat="server" ControlToValidate="DropDownList7" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="p1">Name in english :</p>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox9" runat="server" CssClass="tx1" ></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup10" ID="RequiredFieldValidator37" runat="server" ControlToValidate="TextBox9" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="p1">Name in Arabic :</p>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox10" runat="server" CssClass="tx1" ></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup10" ID="RequiredFieldValidator38" runat="server" ControlToValidate="TextBox10" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                               
                            </table>
                        </div>
                        <br />
                        <asp:Button ID="Button13" runat="server" Text="cancel" CssClass="btn" OnClick="Button13_Click"/>
                        <asp:Button ID="Button14" runat="server" Text="save" ValidationGroup="masterGroup10" CssClass="btn" OnClick="Button14_Click"/>
                        <asp:Button ID="Button15" runat="server" Text="Delete" CssClass="btn" OnClick="Button15_Click"/>                        
                    </asp:Panel>





                    <asp:Panel ID="Panel12" runat="server" Visible="False">
                        <p>Edit Question</p>
                        <div class="cen">

                            <table class="ma" dir="rtl">
                                <tr>
                                    <td>
                                        <p class="p1">Question level :</p>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList16" runat="server" CssClass="mydropdownlist">
                                            <asp:ListItem Selected="True">اختر مستوى السؤال</asp:ListItem>
                                            <asp:ListItem Value="A">صعب</asp:ListItem>
                                            <asp:ListItem Value="B">متوسط</asp:ListItem>
                                            <asp:ListItem Value="C">سهل</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="p1">السؤال باللغة الانجليزية</p>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox25" Width="387px" Height="44px" TextMode="MultiLine" runat="server" CssClass="tx1" ></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup11" ID="RequiredFieldValidator39" runat="server" ControlToValidate="TextBox25" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="p1">السؤال باللغة العربية</p>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox26" Width="387px" Height="44px" TextMode="MultiLine" runat="server" CssClass="tx1" ></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup11" ID="RequiredFieldValidator40" runat="server" ControlToValidate="TextBox26" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                               
                            </table>
                            <asp:GridView CssClass="ma" dir="rtl" ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Answer_ID" DataSourceID="SqlDataSource2">
                                <Columns>
                                    <asp:CommandField ShowEditButton="True" EditText="تعديل"></asp:CommandField>
                                    <asp:BoundField DataField="Answer_ID" HeaderText="رقم" ReadOnly="True" InsertVisible="False" SortExpression="Answer_ID"></asp:BoundField>
                                    <asp:BoundField DataField="Answer_Ar" HeaderText="الاجابات" SortExpression="Answer_Ar"></asp:BoundField>
                                    <%--<asp:BoundField DataField="Answer_En" HeaderText="Answer_En" SortExpression="Answer_En"></asp:BoundField>--%>
                                    <asp:BoundField DataField="Correct_Answer" HeaderText="الاجابة الصحيحة" SortExpression="Correct_Answer"></asp:BoundField>
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:Exam_System_DBConnectionString %>' DeleteCommand="DELETE FROM [Tbl_Answer] WHERE [Answer_ID] = @Answer_ID" InsertCommand="INSERT INTO [Tbl_Answer] ([Answer_Ar], [Answer_En], [Correct_Answer]) VALUES (@Answer_Ar, @Answer_En, @Correct_Answer)" SelectCommand="SELECT [Answer_ID], [Answer_Ar], [Correct_Answer] FROM [Tbl_Answer] WHERE ([Question_ID] = @Question_ID)" UpdateCommand="UPDATE [Tbl_Answer] SET [Answer_Ar] = @Answer_Ar, [Correct_Answer] = @Correct_Answer WHERE [Answer_ID] = @Answer_ID">
                                <DeleteParameters>
                                    <asp:Parameter Name="Answer_ID" Type="Int32"></asp:Parameter>
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="Answer_Ar" Type="String"></asp:Parameter>
                                    <%--<asp:Parameter Name="Answer_En" Type="String"></asp:Parameter>--%>
                                    <asp:Parameter Name="Answer_En"></asp:Parameter>
                                    <asp:Parameter Name="Correct_Answer" Type="String"></asp:Parameter>
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:QueryStringParameter QueryStringField="id" Name="Question_ID" Type="Int32"></asp:QueryStringParameter>

                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Answer_Ar" Type="String"></asp:Parameter>
                                    <%--<asp:Parameter Name="Answer_En" Type="String"></asp:Parameter>--%>
                                    <asp:Parameter Name="Correct_Answer" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Answer_ID" Type="Int32"></asp:Parameter>
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </div>
                       
                        <asp:Button ID="Button34" runat="server" Text="رجوع" CssClass="btn" OnClick="Button34_Click" />
                        <asp:Button ID="Button35" runat="server" Text="حفظ" ValidationGroup="masterGroup11" CssClass="btn" OnClick="Button35_Click" />
                        <asp:Button ID="Button36" runat="server" Text="حذف" CssClass="btn" OnClick="Button36_Click" />                        
                    </asp:Panel>




                    <asp:Panel ID="Panel6" runat="server" Visible="False">
                        <p>Edit Question</p>
                        <div class="cen">

                            <table class="ma">
                                <tr>
                                    <td>
                                        <p class="p1">Question level :</p>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList8" runat="server" CssClass="mydropdownlist">
                                            <asp:ListItem Selected="True">Selct level</asp:ListItem>
                                            <asp:ListItem Value="A">A</asp:ListItem>
                                            <asp:ListItem Value="B">B</asp:ListItem>
                                            <asp:ListItem Value="C">C</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="p1">Question in english :</p>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox11" Width="387px" Height="44px" TextMode="MultiLine" runat="server" CssClass="tx1" ></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup12" ID="RequiredFieldValidator41" runat="server" ControlToValidate="TextBox11" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <p class="p1">Question  in Arabic :</p>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="TextBox12" Width="387px" Height="44px" TextMode="MultiLine" runat="server" CssClass="tx1" ></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="masterGroup12" ID="RequiredFieldValidator42" runat="server" ControlToValidate="TextBox12" ErrorMessage="*" ForeColor="Maroon"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                               
                            </table>
                            <asp:GridView CssClass="ma" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Answer_ID" DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:CommandField ShowEditButton="True"></asp:CommandField>
                                    <asp:BoundField DataField="Answer_ID" HeaderText="Answer_ID" ReadOnly="True" InsertVisible="False" SortExpression="Answer_ID"></asp:BoundField>
                                    <asp:BoundField DataField="Answer_Ar" HeaderText="Answer_Ar" SortExpression="Answer_Ar"></asp:BoundField>
                                    <asp:BoundField DataField="Answer_En" HeaderText="Answer_En" SortExpression="Answer_En"></asp:BoundField>
                                    <asp:BoundField DataField="Correct_Answer" HeaderText="Correct_Answer" SortExpression="Correct_Answer"></asp:BoundField>
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:Exam_System_DBConnectionString %>' DeleteCommand="DELETE FROM [Tbl_Answer] WHERE [Answer_ID] = @Answer_ID" InsertCommand="INSERT INTO [Tbl_Answer] ([Answer_Ar], [Answer_En], [Correct_Answer]) VALUES (@Answer_Ar, @Answer_En, @Correct_Answer)" SelectCommand="SELECT [Answer_ID], [Answer_Ar], [Answer_En], [Correct_Answer] FROM [Tbl_Answer] WHERE ([Question_ID] = @Question_ID)" UpdateCommand="UPDATE [Tbl_Answer] SET [Answer_Ar] = @Answer_Ar, [Answer_En] = @Answer_En, [Correct_Answer] = @Correct_Answer WHERE [Answer_ID] = @Answer_ID">
                                <DeleteParameters>
                                    <asp:Parameter Name="Answer_ID" Type="Int32"></asp:Parameter>
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="Answer_Ar" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Answer_En" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Correct_Answer" Type="String"></asp:Parameter>
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:QueryStringParameter QueryStringField="id" Name="Question_ID" Type="Int32"></asp:QueryStringParameter>

                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Answer_Ar" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Answer_En" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Correct_Answer" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Answer_ID" Type="Int32"></asp:Parameter>
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </div>
                       
                        <asp:Button ID="Button16" runat="server" Text="cancel" CssClass="btn" OnClick="Button16_Click"/>
                        <asp:Button ID="Button17" runat="server" Text="save" ValidationGroup="masterGroup12" CssClass="btn" OnClick="Button17_Click"/>
                        <asp:Button ID="Button18" runat="server" Text="Delete" CssClass="btn" OnClick="Button18_Click"/>                        
                    </asp:Panel>
                </div>

            </div>
        </div>
    </form>
     <script type="text/javascript" src="js/jquery-3.3.1.slim.min.js"></script>
    <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="//code.jquery.com/jquery-2.2.4.min.js"></script>
    <script src="js/script.js"></script>
</body>
</html>
