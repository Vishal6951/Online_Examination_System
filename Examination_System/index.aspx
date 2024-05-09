<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Examination_System.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="heardcontentplaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontentplaceholder" runat="server">
    <h2 class="my-4 category1" style="color: white;">Category</h2>
    <hr style="background-color: #00986f;" />
    <!-- Category Section -->
    <asp:TextBox ID="getemail" runat="server" Visible="false"></asp:TextBox>

    <div class="row categorylist">
        <asp:Repeater ID="gridview_categorylist" runat="server">
            <ItemTemplate>
                <div class="col-lg-3 mb-3">
                    <div class="card h-100 text-center borderstyling">
                        <h4 class="card-header category-header"><%# Eval("category_name") %></h4>
                        <div class="card-footer footer">
                            <asp:HyperLink ID="btn_category" runat="server" CssClass="btn btn-primary" ForeColor="White" NavigateUrl='<%# "~/categoryitem.aspx?cid=" +  Eval("category_id") %>'>Go to subjects</asp:HyperLink>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        <div class="col-md-12" style="margin-left:35%;">
            <div>
                <div class="card-header1">
                    <asp:Panel ID="panel_categoryshow_warning" runat="server" Visible="false">
                        <br />
                        <div class="alert alert-danger text-center">
                            <asp:Label ID="lbl_categoryshowwarning" runat="server" />
                        </div>
                    </asp:Panel>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
