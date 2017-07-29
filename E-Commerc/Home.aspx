<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="sad" ContentPlaceHolderID="head" runat="server">
    <style>
        .ch{
            border:1px solid red;
            
        }
        .imag{
           border:1px solid red;
           height:200px;
          
            
            
        }
        .imag:hover{
            transform:scale(1.15,1.15);
            transition-duration:1.5s;

        }
    </style>
  
</asp:Content>
<asp:Content ID="fsd" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="col-md-9">

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

        <div class="row">
            <asp:Repeater ID="rpt" runat="server">
                <HeaderTemplate>

                </HeaderTemplate>
                <ItemTemplate>
                      <div class="col-sm-4 col-lg-4 col-md-4">
                <div class="thumbnail">
                    <div class="">
                    <img src='<%# Eval("image")%>'  alt="Image of product" class="imag ">
                        </div>
                    <div class="caption">
                        <h4 class="ch"=><%# Eval("real")%></h4>
                        <h4><a href="#"><%#Eval("product_name") %></a>
                        </h4>
                        <p><%# Eval("descript")%></p>
                    </div>
                    <div class="ratings">
                        <p>.....<asp:Button runat="server" Text="Read More" CssClass="btn btn-primary pull-right"></asp:Button></p>
                        <p>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                        </p>
                    </div>
                </div>
            </div>

                </ItemTemplate>

                <FooterTemplate>

                </FooterTemplate>        

            </asp:Repeater>

          
       

<%--            <div class="col-sm-4 col-lg-4 col-md-4">
                <h4><a href="#">Like this template?</a>
                </h4>
                <p>If you like this template, then check out <a target="_blank" href="http://maxoffsky.com/code-blog/laravel-shop-tutorial-1-building-a-review-system/">this tutorial</a> on how to build a working review system for your online store!</p>
                <a class="btn btn-primary" target="_blank" href="http://maxoffsky.com/code-blog/laravel-shop-tutorial-1-building-a-review-system/">View Tutorial</a>
            </div>--%>

        </div>
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>

    </div>

</asp:Content>
