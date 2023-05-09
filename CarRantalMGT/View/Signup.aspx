<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="CarRantalMGT.View.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="../../Assets/lib/css/bootstrap.min.css"/>
    <title></title>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-warning">
  <a class="navbar-brand" href="#">CarRent 1.0</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="#">Cars</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Panding Rents</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Logout</a>
      </li>
        
     
    </ul>
  </div>
</nav>

        <div class="container-fluid">
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-6">
                <div class="row mt-5">
                    <div class="col"></div>
                    <div class="col">
                        <h3 class="text-danger">Online Car Rental MGT</h3>
                        <img src="../../Assets/Img/download (1).jpg"/>
                    </div>
                    <div class="col"></div>
                </div>
 <form runat="server">
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="text" class="form-control" id="UserNameTb" aria-describedby="emailHelp" placeholder="Enter User Id" runat="server" required="required"/>
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="PasswordTb" placeholder="Password" runat="server" required="required"/>
  </div>
  <div class="form-check">
    <input type="radio" class="form-check-input" id="CustomerRadio" name="role" runat="server"/>
     <label class="form-check-label" >Customer</label>
      <br/>
    <input type="radio" class="form-check-input" id="AdminRadio" name="role" runat="server" />
     <label class="form-check-label" >Admin</label>
    
  </div>
                    <br/>
  <div class="form-group d-grid">
        <label id="InfoMsg" runat="server" class="text-danger"></label>
       <asp:Button type="submit" id="Loginbtn" class="btn btn-warning btn-block " Text="Login" runat="server" OnClick="Loginbtn_Click"  />
  </div>
  
</form>
            </div>
            <div class="col-md-3"></div>
        </div>
    </div>
</body>
</html>
