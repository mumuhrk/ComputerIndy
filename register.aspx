<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="register.aspx.vb" Inherits="ComputerIndy.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login Page - Dashboard Admin Template</title>
    <!--

    Template 2108 Dashboard

	http://www.tooplate.com/view/2108-dashboard

    -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600">
    <!-- https://fonts.google.com/specimen/Open+Sans -->
    <link rel="stylesheet" href="css/fontawesome.min.css">
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="css/tooplate.css">
</head>
    <title></title>


<body class="bg03">

    <form id="form1" runat="server">

     <div class="container">
        <div class="row tm-mt-big">
            <div class="col-12 mx-auto tm-login-col">
                <div class="bg-white tm-block">
                    <div class="row">
                        <div class="col-12 text-center">
                            <i class="fas fa-3x fa-tachometer-alt tm-site-icon text-center"></i>
                            <h2 class="tm-block-title mt-3">Register</h2>
                            <div class="row">
                    </div>
                    <div class="row mt-2">
                        <div class="col-12">
                                <div class="input-group">
                                    <label for="username" class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">Username</label>
                                    <asp:TextBox ID="TextBox1" runat="server" class="form-control form-control-lg"></asp:TextBox>
                                </div>
                                <div class="input-group mt-3">
                                    <label for="password" class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">Password</label>
                                    
                                    <asp:TextBox ID="TextBox2" TextMode="Password" runat="server" CssClass="form-control form-control-lg"></asp:TextBox>
                                </div>
                            <div class="input-group mt-3">
                                    <label for="ชื่อจริงนามสกุล" class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">ชื่อจริง นามสกุล</label>
                                    
                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control form-control-lg"></asp:TextBox>
                                </div>
                            <div class="input-group mt-3">
                                    <label for="เบอร์โทร" class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">เบอร์โทร</label>
                                    
                                    <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control form-control-lg"></asp:TextBox>
                                </div>
                            <div class="input-group mt-3">
                                    <label for="ที่อยู่" class="col-xl-4 col-lg-4 col-md-4 col-sm-5 col-form-label">ที่อยู่</label>
                                    
                                    <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control form-control-lg"></asp:TextBox>
                                </div>
                                
                                    <p><center><td>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="Button1" runat="server" Text="สมัครสมาชิก" CssClass="btn btn-inline-light btn-lg px-5" />
                                                                                &nbsp;&nbsp;

                                               
                                               </td>
                                        </center></div>
                        <br />
                        <br />
                        <br />
                        <center>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; กลับไปหน้า Login : <a href="Login.aspx">Click me </a></center></div>
                        </div>
                    </div>
                    </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class="row tm-mt-big">
            <div class="col-12 font-weight-light text-center">
                <p class="d-inline-block tm-bg-black text-white py-2 px-4">
                   โปรเจคเว็บแจ้งซ่อมคอมพิวเตอร์ มทร.ล้านนา ตาก ปวส.เทคนิคคอมพิวเตอร์ โดย นาย สุจินดา ใจปินตา และ นาย โสภณวิชญ์ หมื่นถา 2566 
                </p>
            </div>
        </footer>

    </form>
</body>
</html>