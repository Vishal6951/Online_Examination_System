﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="myresult.aspx.cs" Inherits="Examination_System.myresult" %>
<asp:Content ID="Content1" ContentPlaceHolderID="heardcontentplaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontentplaceholder" runat="server">
    <br />
     <div class="card-header" style="color:white;">
        <h2>My Result</h2>
    </div>
    <asp:TextBox ID="getemail" runat="server" Visible ="false"></asp:TextBox><br />
    <asp:GridView ID="gridmyresult" runat="server" GridLines="Both" AllowPaging="True" AutoGenerateColumns="False" Class="table table-striped resulttableborder" OnPageIndexChanging="gridmyresult_PageIndexChanging" PageSize="8" style="color:white;" BorderStyle="Solid" BorderWidth="3px" BackColor="#00986F" BorderColor="White" HeaderStyle-BorderStyle="Solid">
        <Columns>
            <asp:BoundField DataField="exam_name" HeaderText="Exam Name" NullDisplayText="no exam name" />
            <asp:BoundField DataField="exam_date" DataFormatString="{0:M/d/yy}" HeaderText="Exam Date" NullDisplayText="There is some problem to find exam date" />
            <asp:BoundField DataField="totalquestion" HeaderText="Total Question" />
            <asp:BoundField DataField="result_status" HeaderText="Result" />
            <asp:BoundField DataField="exam_marks" HeaderText="Total Marks" />
            <asp:BoundField DataField="result_score" HeaderText="Your Score" />
        </Columns>
    </asp:GridView>
      <div>
        <div>
            <div>
                <asp:Panel ID="panel_myresultshow_warning" runat="server" Visible="false">
                    <br />
                    <div class="alert alert-danger text-center">
                        <asp:Label ID="lbl_myresultshowwarning" runat="server" />
                    </div>
                </asp:Panel>
            </div>
        </div>
    </div>
</asp:Content>
