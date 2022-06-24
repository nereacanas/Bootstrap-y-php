<!--
=========================================================
* Material Dashboard 2 - v3.0.0
=========================================================

* Product Page: https://www.creative-tim.com/product/material-dashboard
* Copyright 2021 Creative Tim (https://www.creative-tim.com)
* Licensed under MIT (https://www.creative-tim.com/license)
* Coded by Creative Tim

=========================================================

* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
-->
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="apple-touch-icon" sizes="76x76" href=<?php echo base_url()."assets/img/apple-icon.png"; ?>>
  <link rel="icon" type="image/png" href="<?php echo base_url()."assets/img/favicon.png"; ?>">
  <title>
    Administración
  </title>
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700" />
  <!-- Nucleo Icons -->
  <link href="<?php echo base_url()."assets/css/nucleo-icons.css"; ?>" rel="stylesheet" />
  <link href="<?php echo base_url()."assets/css/nucleo-svg.css"; ?>" rel="stylesheet" />
  <!-- Font Awesome Icons -->
  <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
  <!-- Material Icons -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Round" rel="stylesheet">
  <!-- CSS Files -->
  <link id="pagestyle" href="<?php echo base_url()."assets/css/material-dashboard.css?v=3.0.0"; ?>" rel="stylesheet" />
</head>

<body class="g-sidenav-show  bg-gray-200">
  <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
    <!-- Navbar -->
    <div class="container-fluid py-4">
      <div class="row">
        <center>
            <h1>Iniciar sesión</h1>
            <form action="<?php echo base_url()."index.php/Admin/checklogin"; ?>" method="post" style="padding: 5em;">
                <input type="text" placeholder="Usuario" required="" id="user_admin" name="user_admin" /> <p>
                <input type="password" minlenght="6" placeholder="Contraseña" required="" id="pass_admin" name="pass_admin" style="margin-top: 1em;" /> <p>
                <input type="submit" value="Acceder" style="margin-top: 1em;" />
            </form>
        </center>
      </div>
    </div>
  </main>
</body>

</html>