<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SECOND PAGE.aspx.cs" Inherits="SECOND_PAGE" MasterPageFile="~/MasterPage.master"%>
<asp:Content ID="secondhead" runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content ID="secondcontent" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
   <div class="col-md-10">

        <div class="row carousel-holder">

            <div class="col-md-12">
                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="item active">
                            <img class="slide-image" src="img/7e5a4b.jpg" alt="">
                        </div>
                        <div class="item">
                            <img class="slide-image" src="img/7e5a4b.jpg" alt="">
                        </div>
                        <div class="item">
                            <img class="slide-image" src="img/7e5a4b.jpg" alt="">
                        </div>
                    </div>
                    <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                    </a>
                    <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                    </a>
                </div>
            </div>

        </div>
       </div>
    
</asp:Content>
<asp:Content ID="mensection" ContentPlaceHolderID="contentPlaceholder2" runat="server">
<div>
    <asp:Repeater ID="Repeater1" runat="server"></asp:Repeater>
</div>
</asp:Content>


