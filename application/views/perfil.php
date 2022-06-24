<!--
   Author: W3layouts
   Author URL: http://w3layouts.com
-->
<!doctype html>
<html lang="es">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>RPV- Contacto</title>

    <!-- Template CSS -->
    <link rel="stylesheet" href="<?php echo base_url()."assets/css/style-starter.css"; ?>">
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans&display=swap" rel="stylesheet">
</head>
<body id="home">
<section class=" w3l-header-4 header-sticky">
    <!--header-->
    <header id="site-header" class="fixed-top">
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-dark stroke">
                <a class="navbar-brand" href="<?php echo base_url()."inicio.php"; ?>">
                    <span class="fa fa-cutlery"></span> RPV
                </a>
                <!-- if logo is image enable this
            <a class="navbar-brand" href="#index.html">
                <img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
            </a> -->
                <button class="navbar-toggler  collapsed bg-gradient" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon fa icon-expand fa-bars"></span>
                    <span class="navbar-toggler-icon fa icon-close fa-times"></span>

                </button>

                <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item @@about__active">
                            <a class="nav-link" href="<?php echo base_url()."index.php/Receipe/recetas"; ?>">Recetas</a>
                        </li>
                        <li class="nav-item @@about__active">
                            <a class="nav-link" href="<?php echo base_url()."index.php/User/perfil"; ?>">Mi perfil</a>
                        </li>
                        <li class="nav-item @@services__active">
                            <a class="nav-link" href="<?php echo base_url()."index.php/User/logout"; ?>">Cerrar sesión</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </header>
    <!--/header-->
</section>

<script src="<?php echo base_url()."assets/js/jquery-3.3.1.min.js"; ?>"></script> <!-- Common jquery plugin -->
<!--bootstrap working-->
<script src="<?php echo base_url()."assets/js/bootstrap.min.js"; ?>"></script>
<!-- //bootstrap working-->
<!--/MENU-JS-->
<script>
    $(window).on("scroll", function () {
        var scroll = $(window).scrollTop();

        if (scroll >= 80) {
            $("#site-header").addClass("nav-fixed");
        } else {
            $("#site-header").removeClass("nav-fixed");
        }
    });

    //Main navigation Active Class Add Remove
    $(".navbar-toggler").on("click", function () {
        $("header").toggleClass("active");
    });
    $(document).on("ready", function () {
        if ($(window).width() > 991) {
            $("header").removeClass("active");
        }
        $(window).on("resize", function () {
            if ($(window).width() > 991) {
                $("header").removeClass("active");
            }
        });
    });
</script>
<!--//MENU-JS-->
<!-- disable body scroll which navbar is in active -->
<script>
    $(function () {
        $('.navbar-toggler').click(function () {
            $('body').toggleClass('noscroll');
        })
    });
</script>
<!-- disable body scroll which navbar is in active -->


<!-- breadcrumbs -->
<section class="w3l-inner-banner-main">
    <div class="about-inner contact">
    </div>
</section>
<!-- breadcrumbs //-->

<section class="w3l-stats">
    <div class="main-w3 ">
        <div class="container">
            <div class="main-titles-head ">
                <h3 class="header-name ">
                    ¿Qué acción desea realizar?
                </h3>
            </div>
            <div class="row align-items-center">
                <div class="col-lg-6 main-cont-wthree-fea text-center">
                    <div class="row">
                        <div class="col-6 pr-2">
                            <div class="grids-speci1">
                            <a href="<?php echo base_url()."index.php/User/mostrar"; ?>"><p>Mostrar perfil</p></a>
                            </div>
                        </div>
                        <div class="col-6 pl-2">
                            <div class="grids-speci1">
                            <a href="<?php echo base_url()."index.php/User/actualizar"; ?>"><p>Actualizar perfil</p></a>
                            </div>
                        </div>
                        <div class="col-6 pr-2 mt-4">
                            <div class="grids-speci1">
                            <a href="<?php echo base_url()."index.php/User/modificar"; ?>"><p>Modificar contraseña</p></a>
                            </div>
                        </div>
                        <div class="col-6 pl-2 mt-4">
                            <div class="grids-speci1">
                            <a href="<?php echo base_url()."index.php/User/eliminar"; ?>"><p>Eliminar perfil</p></a>
                            </div>
                        </div>
                    </div>
                </div>
                <!--<div class="col-lg-6 title">
                    <h3 class="title-big">Bienvenidx!</h3>
                    <p class="mt-4 para">¿Qué acción desea realizar?</p>
                </div>-->
            </div>

        </div>
    </div>
</section>

<section class="w3l-footer-29-main w3l-copyright">
    <div class="container">
        <div class=" bottom-copies text-center">
            <p class="copy-footer-29">© Desarrollo web entorno servidor | Hecho por <a href="https://w3layouts.com">Nerea Canas Blázquez</a></p>
        </div>
    </div>
</section>

<!-- move top -->
<button onclick="topFunction()" id="movetop" title="Go to top">
    <span class="fa fa-long-arrow-up"></span>
</button>
<script>
    // When the user scrolls down 20px from the top of the document, show the button
    window.onscroll = function () {
        scrollFunction()
    };

    function scrollFunction() {
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
            document.getElementById("movetop").style.display = "block";
        } else {
            document.getElementById("movetop").style.display = "none";
        }
    }

    // When the user clicks on the button, scroll to the top of the document
    function topFunction() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
    }
</script>
<!-- /move top -->
</body>

</html>
