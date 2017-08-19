<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddPrice.aspx.cs" MasterPageFile="~/Admin/AdminMaster.master" Inherits="Admin_AddPrice" %>

<asp:Content ID="ddf" ContentPlaceHolderID="head" runat="server">
 
    
</asp:Content>
<asp:Content ID="dfsdd" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-9">
        <div class="panel panel-primary">
            <div class="panel-heading ">
                Add Products

            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-md-2">
                        <label>Category</label>
                    </div>

                    <div class="col-md-10">
                        <asp:DropDownList ID="cat_dropdown" runat="server" AutoPostBack="true" OnSelectedIndexChanged="cat_dropdown_SelectedIndexChanged" class="form-control">
                            
                        </asp:DropDownList>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Field is required" CssClass="text-danger" ControlToValidate="cat_dropdown"></asp:RequiredFieldValidator>

                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-2">
                        <label>
                            Sub Category
                        </label>
                    </div>
                    <div class="col-md-10">
                        <asp:DropDownList ID="subcatdropdown" CssClass="form-control" AutoPostBack="true" runat="server">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Field is required" CssClass="text-danger" ControlToValidate="subcatdropdown"></asp:RequiredFieldValidator>
                    </div>

                </div>
                <br />
                <div class="row">
                    <div class="col-md-2">
                        <label>Product Name</label>
                    </div>
                    <div class="col-md-6">
                        <input type="text" class="form-control"  id="p_name" runat="server" />
                        
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Field is required" CssClass="text-danger" ControlToValidate="p_name"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-2">
                        <label>Sale Price</label>
                    </div>
                    <div class="col-md-2">
                        <input type="number" id="P_sale" runat="server" class="form-control" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Field is required" CssClass="text-danger" ControlToValidate="p_sale"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <br />

                <div class="row">
                    <div class="col-md-2">
                        <label>
                            Real Price 
                        </label>
                    </div>
                    <div class="col-md-2">
                        <input type="number" id="p_real" runat="server" class="form-control" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Field is required" CssClass="text-danger" ControlToValidate="p_real"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-2">
                        <label>
                            Description
                        </label>
                    </div>
                    <div class="col-md-8">
                        
                        <asp:TextBox id="p_des" runat="server" MaxLength="500"
      MinLines="1" 
      MaxLines="5" class="form-control"></asp:TextBox>
                        
                       <%-- <input type="text" class="form-control" maxlength="600" id="p_des" runat="server" rows="10" cols="20"/>--%>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Field is required" CssClass="text-danger" ControlToValidate="p_des"></asp:RequiredFieldValidator>
        h
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-2">
                        <label>
                            Product Size 
                        </label>
                    </div>
                    <div class="col-md-2">
                        <input type="text" id="p_size" runat="server" class="form-control" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Field is required" CssClass="text-danger" ControlToValidate="p_size"></asp:RequiredFieldValidator>
                    </div>


                </div>
                <br />
                <div class="row">
                    <div class="col-md-2">
                        <label>
                            Image : 
                        </label>
                    </div>
                    <div class="col-md-2">
                        <asp:FileUpload ID="img_upload" runat="server"></asp:FileUpload>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Field is required" CssClass="text-danger" ControlToValidate="img_upload"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <br />
                <div class="row text-right">
                    <div class="col-md-12">
                        <asp:Button runat="server" ID="save" CssClass="btn btn-primary" Text="Button" OnClick="save_Click" OnClientClick="return f()" ></asp:Button>
                    </div>
                </div>
                <asp:Label runat="server" ID="label1" Text="status"></asp:Label>

            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12 container fluid">
            <div class="panel panel-primary">
                <asp:Repeater ID="repeat_details" runat="server">
                    <HeaderTemplate>

                        <table class="table table-bordered ">
                            <thead>
                                <tr class=" text-uppercase text-capitalize ">
                                    <th class="text-center">category id
                                    </th>

                                    <th class="text-center">Sub Category id
                                    </th>
                                    <th class="text-center">Product id
                                    </th>
                                    <th class="text-center">Product Name
                                    </th>
                                    <th class="text-center">Description
                                    </th>
                                    <th class="text-center">Size
                                    </th>
                                    <th class="text-center">Sale Price
                                    </th>
                                    <th class="text-center">Real Price
                                    </th>
                                    <th class="text-center">Image
                                    </th>
                                </tr>

                            </thead>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tbody>
                            <tr class="text-center">
                                <td>
                                    <asp:Label ID="rep_id" runat="server" Text='<%# Eval("cat_id") %>'></asp:Label></td>

                                <td>
                                    <asp:Label ID="rep_subid" runat="server" Text='<%# Eval("subcat_id") %>'></asp:Label></td>
                                <td>
                                    <asp:Label ID="rep_pid" runat="server" Text='<%# Eval("pid") %>'></asp:Label></td>
                                <td>
                                    <asp:Label ID="rep_pname" runat="server" Text='<%# Eval("product_name") %>'></asp:Label></td>



                                <td>
                                    <asp:Label ID="rep_des" runat="server" Text='<%# Eval("descript") %>'></asp:Label></td>
                                <td>
                                    <asp:Label ID="rep_size" runat="server" Text='<%# Eval("size") %>'></asp:Label></td>
                                <td>
                                    <asp:Label ID="rep_sale" runat="server" Text='<%# Eval("sale") %>'></asp:Label></td>
                                <td>
                                    <asp:Label ID="rep_real" runat="server" Text='<%# Eval("real") %>'></asp:Label></td>
                                <td>
                                    <asp:Label ID="rep_image" runat="server" Text='<%# Eval("image") %>'></asp:Label></td>

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
</asp:Content>

