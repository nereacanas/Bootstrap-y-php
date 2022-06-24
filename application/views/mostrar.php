
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

    <title>RPV- Registrar usuario</title>

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
                <a class="navbar-brand" href="<?php echo base_url()."index.php"; ?>">
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

<section class="w3l-hero-headers-9" id="home">
    <div class="slide text-center header11" data-selector="header11">
        <div class="container">
            <section id="content">
                <form action="<?php echo base_url()."index.php/User/registrar"; ?>" method="post">
                    <h1>Información personal</h1>
                    <div>
                        <input type="text" placeholder="Usuario" readonly required="" id="username" name="username" value="<?php echo $this->session->userdata('username'); ?>" />
                    </div>
                    <div>
                        <input type="text" placeholder="Nombre" readonly required="" id="nombre" name="nombre" value="<?php echo $this->session->userdata('nombre'); ?>" />
                    </div>
                    <div>
                        <input type="text" placeholder="Primer apellido" readonly required="" id="apellido1" name="apellido1" value="<?php echo $this->session->userdata('apellido_uno'); ?>" />
                    </div>
                    <div>
                        <input type="text" placeholder="Segundo apellido" readonly required="" id="apellido2" name="apellido2" value="<?php echo $this->session->userdata('apellido_dos'); ?>" />
                    </div>
                    <div>
                        <input type="text" placeholder="Edad" required="" readonly id="edad" name="edad" value="<?php echo $this->session->userdata('edad'); ?>" />
                    </div>
                    <div>
                        <input type="text" placeholder="Teléfono" required="" readonly id="telefono" name="telefono" value="<?php echo $this->session->userdata('telefono'); ?>" />
                    </div>
                    <div>
                        <input type="text" placeholder="Email" required="" readonly id="email" name="email" value="<?php echo $this->session->userdata('email'); ?>" />
                    </div>
                    <div>
                        <a href="<?php echo base_url()."index.php/User/perfil"; ?>">Volver atrás</a>
                    </div>
                </form><!-- form -->
            </section><!-- content -->
        </div><!-- container -->
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
