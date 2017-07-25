<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Admin_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">


    <!-- Bootstrap Core CSS -->
    <link href="../css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../css/shop-homepage.css" rel="stylesheet">
    <style>
         body {
            background-image: url(../img/moon.jpeg);
            background-size: cover;
          //  background-repeat: no-repeat;
        }
         .ch{

         }
       
    </style>
    <script src="https://www.gstatic.com/firebasejs/4.1.3/firebase.js"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <div class="row ">
        <div class="col-md-6 col-md-offset-3 ch text-muted">
            <div class="form-group ">
                <label for="usr">Name:</label>
                <input type="text"  id="usr" runat="server" class="form-control"/>
            </div>
            <div class="form-group">
                <label for="pwd">Password:</label>
                <input type="password" id="pwd" runat="server"  class="form-control"/>
            </div>
            <asp:Button ID="Button1" runat="server" Text="Log In" OnClick="Button1_Click" /> 
        </div>
    </div>
    
    </div>
    </form>
</body>
</html>
