<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" MasterPageFile="~/MasterPage.master" Inherits="SignUp" %>

<asp:Content ID="signuphead" ContentPlaceHolderID="head" runat="server">
   <script type="text/javascript">
       function validatedata()
       {
           //var first = document.getElementById("fname").valu;
         
           alert("eNTER FIELDS");
           //return false;
           
       }
    </script>
   
</asp:Content>
<asp:Content ID="signupcontent" ContentPlaceHolderID="contentPlaceholder1" runat="server">
    <div class="row ">
        <div class="col-md-10 ">
            <div class="panel panel-primary">
                <div class="panel-heading text-center spechead desig">
                    User Sign Up
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-2">

                            <label>First Name</label>
                        </div>
                        <div class="col-md-10">
                            <input type="text" class="form-control" autocomplete="off" id="fname" runat="server">
                        </div>
                         
                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2">
                            <label>Last Name</label>
                        </div>
                        <div class="col-md-10">
                            <input type="text" class="form-control" autocomplete="off" id="lname" runat="server">
                        </div>
                        <br />

                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2">
                            <label>Email</label>
                        </div>
                        <div class="col-md-10">
                            <input type="text" class="form-control" autocomplete="off" id="email" runat="server">
                        </div>
                        <br />

                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2">
                            <label>Password</label>
                        </div>
                        <div class="col-md-10">
                            <input type="text" class="form-control" autocomplete="off" id="password" runat="server">
                        </div>


                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2">
                            <label>Address</label>
                        </div>
                        <div class="col-md-10">
                            <input type="text" class="form-control" autocomplete="off" id="address" runat="server">
                        </div>
                        <br />

                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2">
                            <label>City</label>
                        </div>
                        <div class="col-md-10">
                            <input type="text" class="form-control" autocomplete="off" id="city" runat="server">
                        </div>
                        <br />

                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2">
                            <label>State</label>
                        </div>
                        <div class="col-md-10">
                            <input type="text" class="form-control" autocomplete="off" id="State" runat="server">
                        </div>
                        <br />

                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2">
                            <label>Pin Code</label>
                        </div>
                        <div class="col-md-10">
                            <input type="text" class="form-control" autocomplete="off" id="pin" runat="server">
                        </div>
                        <br />

                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-2">
                            <label>Phone no.</label>
                        </div>
                        <div class="col-md-10">
                            <input type="text" class="form-control" autocomplete="off" id="pno" runat="server">
                        </div>


                    </div>
                    <br />
                    <div class="row">
                        <div class="col-md-12">

                            <asp:Button runat="server" ID="va" OnClientClick="return validatedata();" CssClass="btn-primary btn-lg pull-right" Text="Sign Up" OnClick="Unnamed1_Click"></asp:Button>

                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
   <script src="js/jquery.js"></script>
    <script>
        $(document).ready(function () {
            $("#va).click(function(){
            }
        )
        });
    </script>
</asp:Content>
