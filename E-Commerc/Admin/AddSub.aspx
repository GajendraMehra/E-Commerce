<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddSub.aspx.cs" MasterPageFile="~/Admin/AdminMaster.master" Inherits="Admin_AddSub" %>

<asp:Content ID="dd" ContentPlaceHolderID="head" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="fsd" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-9">
    <div class="panel panel-primary">

        <div class="panel-heading">
            Add Sub Category
        </div>
        <div class="panel-content text-right">
            <br />

            <br />
            <div class="row">
                <div class="col-md-6 col-md-offset-3">

                    <asp:DropDownList ID="Dd_cat" runat="server" CssClass="form-control"></asp:DropDownList>
                    <br />
                    <input type="text" id="subcategory" runat="server" class="form-control" />
                    <br />
                    <asp:Button runat="server" Text="Add" ID="add" class="btn-primary btn btn-lg" OnClick="add_Click"></asp:Button>
                    <br />
                    <br />
                </div>

            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-primary">
                <asp:Repeater ID="repeat_cat" runat="server">
                    <HeaderTemplate>

                        <table class="table table-bordered ">
                            <thead>
                                <tr class=" text-uppercase text-capitalize ">
                                    <th class="text-center">Sub category id
                                    </th>
                                    <th class="text-center">Category id
                                    </th>
                                    <th class="text-center">Name
                                    </th>
                                </tr>

                            </thead>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tbody>
                            <tr class="text-center">
                                <td>
                                    <asp:Label ID="lbl_repid" runat="server" Text='<%# Eval("subcat_id") %>'></asp:Label></td>
                                <td>
                                    <asp:Label ID="lbl_repcat" runat="server" Text='<%# Eval("cat_id") %>'></asp:Label></td>
                                <td>
                                    <asp:Label ID="lbl_cat" runat="server" Text='<%# Eval("subcat_name") %>'></asp:Label></td>

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
