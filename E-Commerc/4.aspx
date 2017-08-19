<%@ Page Language="C#" AutoEventWireup="true" CodeFile="4.aspx.cs" Inherits="men" MasterPageFile="~/MasterPage.master" %>
<asp:Content ID="headcat1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="content1" ContentPlaceHolderID="contentPlaceholder1" runat="server">
    <div class="col-md-10">
        <div class="jumbotron">
            <h1>
                <asp:Label ID="topwell" runat="server" Text=""></asp:Label></h1>
            <p>Bootstrap is the most popular HTML, CSS, and JS framework for developing responsive, mobile-first projects on the web.</p>
        </div>
        <p>This is some text.</p>
        <p>This is another text.</p>
    </div>




</asp:Content>
<asp:Content ID="content2" ContentPlaceHolderID="contentPlaceholder2" runat="server">
     <asp:Repeater ID="rptmencat" runat="server">
                <HeaderTemplate>
                    <div class="row">
                </HeaderTemplate>
                <ItemTemplate>
                    
                      <div class="col-sm-3 col-lg-3 col-md-3 ch">
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
                    
                        <p>.....<asp:Button runat="server" Text="Read More" CssClass="btn btn-primary pull-right"></asp:Button></p>
                       
                    </div>
                </div>
            

                </ItemTemplate>

                <FooterTemplate>
                    </div>
                </FooterTemplate>        

            </asp:Repeater>
</asp:Content>