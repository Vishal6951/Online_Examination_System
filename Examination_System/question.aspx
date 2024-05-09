<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="question.aspx.cs" Inherits="Examination_System.question" %>

<asp:Content ID="Content1" ContentPlaceHolderID="heardcontentplaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontentplaceholder" runat="server">
    <h2 class="m-4" style="color: white;">Answer all the questions</h2>
    <hr style="background-color: #00986f;" />
    <asp:TextBox ID="getstringuser" runat="server" Visible="false"></asp:TextBox>
    <div class="questionlist">
        <asp:GridView Style="color: white;" ID="gridview_examquestion" runat="server" AutoGenerateColumns="False" GridLines="none">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <div class="question-container">
                            <asp:Label ID="Label1" runat="server" Text="Question: "></asp:Label>

                            <asp:Label ID="lblQuestionLabel" runat="server" Text='<%# Container.DataItemIndex + 1%>'></asp:Label>
                            <!-- Numeric question labeling -->
                            <asp:Label ID="lblid" runat="server" Text='<%# Eval("question_id") %>' Visible="false"></asp:Label>

                            <asp:Label ID="lbl_question" runat="server" Text='<%# Eval("question_name") %>'></asp:Label>
                        </div>
                        <div class="options-container">
                            <asp:Panel ID="radioPanel" runat="server" CssClass="radio-panel">
                                <br />
                                <asp:RadioButton GroupName='<%# "group_" + Container.DataItemIndex %>' Text='<%# "A. " + Eval("option_one") %>' ID="option_one" runat="server" />
                                <br />
                                <asp:RadioButton GroupName='<%# "group_" + Container.DataItemIndex %>' Text='<%# "B. " + Eval("option_two") %>' ID="option_two" runat="server" />
                                <br />
                                <asp:RadioButton GroupName='<%# "group_" + Container.DataItemIndex %>' Text='<%# "C. " + Eval("option_three") %>' ID="option_three" runat="server" />
                                <br />
                                <asp:RadioButton GroupName='<%# "group_" + Container.DataItemIndex %>' Text='<%# "D. " + Eval("option_four") %>' ID="option_four" runat="server" />
                            </asp:Panel>
                        </div>
                        <hr />
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
        </asp:GridView>
        <asp:Button ID="btn_submit" runat="server" Text="Submit" CssClass="btn btn-success" OnClick="btn_submit_Click" />
    </div>
    <div>
        <div>
            <div>
                <asp:Panel ID="panel_questshow_warning" runat="server" Visible="false">
                    <br />
                    <div class="alert alert-danger text-center">
                        <asp:Label ID="lbl_questshowwarning" runat="server" />
                    </div>
                </asp:Panel>
            </div>
        </div>
    </div>
   

</asp:Content>
