<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="sad" ContentPlaceHolderID="head" runat="server">
    <style>
        .ch {
            border: 1px solid red;
        }

        .ch2 {
            border: 1px solid green;
        }

            .imag:hover {
                transform: scale(1.05,1.05);
                transition-duration: 0.5s;
                opacity: 0.85;
            }

        .image:not(:hover) {
            transform: scale(1);
            transition-duration: 1.5s;
        }
    </style>
  
</asp:Content>
<asp:Content ID="fsd" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    



        <div class="">
            <asp:Repeater ID="rpt" runat="server">
                <HeaderTemplate>

                </HeaderTemplate>
                <ItemTemplate>
                      <div class="col-sm-3 col-lg-3 col-md-3">
               
                    
                         <div class="sub_container im">
                             <div class="row"><div class="col-md-10 col-md-offset-1 ">
                <div class="imag">   <a href="desciption.aspx?id=<%#Eval("pid") %>"><img src='<%# Eval("image")%>' height="100%" width="100%" alt="Image of product" /></a></div>
                      </div></div>
                             </br>
                             
                    <div class="caption text-center">
                       
                        <span class="text-uppercase h4"><a href="#"><%#Eval("product_name") %></a>
                        </span></br></br>
                        <span class="h4 ">  <span class="fa fa-inr"></span>       <del > <%# Eval("real")%></></del> </span><span class="h4"><span class="fa fa-inr">  </span>   <%# Eval("sale")%></span>
                    </br>    <span class=" h4 badge "><%#Eval("discount")%>&#37 </span><span class="h4">&nbsp Discount</span>
                        

                       
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

    

</asp:Content>
