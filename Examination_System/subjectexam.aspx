<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="subjectexam.aspx.cs" Inherits="Examination_System.subjectexam" %>
<asp:Content ID="Content1" ContentPlaceHolderID="heardcontentplaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontentplaceholder" runat="server">
    <br />
    <h2 class="m-4" style="color:white;">All
        <asp:Label ID="lbl_subjectexam" runat="server"></asp:Label>
        Subject Exams</h2>
    <hr style="background-color: #00986f;" />
    <div class="row categorylist">
        <asp:Repeater ID="gridview_sujectexam" runat="server">
            <ItemTemplate>
                <div class="col-lg-4 mb-4">
                    <div class="card h-100 borderstyling">
                        <h3 class="card-header category-header">Exam name: <%# Eval("exam_name") %></h3>
                        <ul class="list-group list-group-flush">
                            <li class="list-group-item footer">Exam discription: <%# Eval("exam_description") %></li>
                            <li class="list-group-item footer">Pass Marks: <%# Eval("exampass_marks") %></li>
                            <li class="list-group-item footer">Total Marks: <%# Eval("exam_marks") %></li>
                            <li class="list-group-item footer">
                                <asp:HyperLink ID="hlink_gotexam" runat="server" CssClass="btn btn-primary" ForeColor="White" NavigateUrl='<%# "~/question.aspx?eid=" + Eval("exam_id")%>'>Take exam</asp:HyperLink>
                            </li>
                        </ul>
                    </div>
                </div>
            </ItemTemplate>

        </asp:Repeater>
        <div >
            <div >
                <div>
                    <asp:Panel ID="panel_examshow_warning" runat="server" Visible="false">
                        <br />
                        <div class="alert alert-danger text-center">
                            <asp:Label ID="lbl_examshowwarning" runat="server" />
                        </div>
                    </asp:Panel>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
