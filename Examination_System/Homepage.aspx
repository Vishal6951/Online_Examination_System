<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="Examination_System.Homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="heardcontentplaceholder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontentplaceholder" runat="server">

    <div class="lamp-container">
        <img src="assets/images/lamp.png" class="lamp" />
        <img src="assets/images/light.png" class="light" />
    </div>
    
    <div class="card-manage">
    <div class="card admin carddetail cardadmin">
        <div class="card-header">
           <center><b>In Admin section</b></center> 
        </div>
        <div class="card-body">
            <blockquote class="blockquote mb-4">
                <p>• An admin can create subjects type</p>
                <p>• An admin can add subject question with multiple object with answer</p>
                <p>• An admin can see a student result as well as profile</p>
                <p>• An admin can delete his/her profile</p>
            </blockquote>
        </div>
    </div>
    
    <div class="card student carddetail cardstudent">
        <div class="card-header">
          <center> <b> In Student Section</b></center>
        </div>
        <div class="card-body">
            <blockquote class="blockquote mb-4">
                <p>• A student can create his profile</p>
                <p>• A student can take part in exam</p>
                <p>• A student can see his progress report</p>
            </blockquote>
        </div>
    </div>
        </div>
    <script>
        $(document).ready(function () {
            let maxWidth = 0;
            $('.carddetail').each(function () {
                const width = $(this).width();
                if (width > maxWidth) { maxWidth = width }
            })

            $('.carddetail').width(maxWidth);
        });
    </script>
</asp:Content>
