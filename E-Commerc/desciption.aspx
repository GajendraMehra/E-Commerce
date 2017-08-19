<%@ Page Language="C#" AutoEventWireup="true" CodeFile="desciption.aspx.cs" Inherits="desciption" MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="descead" ContentPlaceHolderID="head" runat="server">
    <link href="https://fonts.googleapis.com/css?family=IM+Fell+Double+Pica+SC" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Enriqueta" rel="stylesheet" />
     <link href="css/index.css" rel="stylesheet">
    
</asp:Content>
<asp:Content ID="desc" ContentPlaceHolderID="contentPlaceholder1" runat="server">
    <div class="col-md-12 ">
        <div class="row">
        <div class="panel panel-primary">
            <div class="panel-heading text-capitalize text-center desig spechead">
                Product Specifications
            </div>
            <div class="panel-body">
                <asp:Repeater ID="Repeater1" runat="server">
                    <HeaderTemplate>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <div class="row ">
                            <div class=" col-md-4 thumbnail" style="box-shadow: 0px 0px 3px rgb(150, 150, 150);">
                                <div>
                                    <img src='<%# Eval("image")%>' height="400px" />

                                </div>
                                <br />
                                <h4 class="text-center"><%# Eval("product_name") %> </h4>
                                <br />
                                
                            </div>
                            <div class="col-md-8">
                                <div class="col-md-3 text-right desig">Category</div>
                                <div class="col-md-9 value"><%# Eval("cat_name")%></div>
                                <div class="col-md-3 text-right desig">Sub-Category</div>
                                <div class="col-md-9 value"><%# Eval("subcat_name")%></div>
                                <div class="col-md-3 text-right desig">price</div>
                                <div class="col-md-9 value"><%# Eval("sale")%></div>
                                <div class="col-md-3 text-right desig">Size</div>
                                <div class="col-md-9 value"><%# Eval("size")%></div>
                                <div class="col-md-3 text-right desig">About</div>
                                <div class="col-md-9 value test">
                                    <span style="display: block; width: 150px; word-wrap: break-word;"><%# Eval("descript")%></span>
                                </div>

                            </div>
                    </ItemTemplate>
                </asp:Repeater>
                
            </div>
              <asp:Button ImageUrl="~/img/banner/banner4.jpg" Width="100px" Height="50px" Text="Buy" runat="server" OnClick="Unnamed1_Click"></asp:Button>

        </div>
            <//div>
        
    </div>
       
   
</asp:Content>
