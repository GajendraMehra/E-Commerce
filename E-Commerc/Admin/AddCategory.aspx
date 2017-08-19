<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddCategory.aspx.cs" MasterPageFile="~/Admin/AdminMaster.master" Inherits="Admin_AddCategory" %>

<asp:Content ID="tdg" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>
<asp:Content ID="fdfds" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-9">
        <div class="panel panel-primary">
            <div class="panel-heading">
                Add Category
            </div>
            <div class="panel-body">
                <input type="text" id="category" runat="server" class="form-control" />
                <br />
                <div class="text-right">
                    <asp:Button ID="Button1" runat="server" Class="btn-primary btn-lg" Text="Add" OnClick="Button1_Click" OnClientClick=" return valid()" />
                </div>
                
            </div>


        </div>
        <div class="row">
            <div class="col-md-5 col-md-offset-2">
                <div class="panel panel-primary">
                    <asp:Repeater ID="repeat_cat" runat="server">
                        <HeaderTemplate>

                            <table class="table table-inverse">
                                <thead>
                                    <tr>
                                        <th>Category
                                        </th>
                                    </tr>

                                </thead>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tbody>
                                <tr>
                                    <td>
                                        <asp:Label ID="lbl_cat" runat="server" Text='<%# Eval("cat_name") %>'></asp:Label>
                                    </td>
                                </tr>
                            </tbody>
                        </ItemTemplate>
                        <FooterTemplate>
                            </table>
                        </FooterTemplate>

                    </asp:Repeater>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
