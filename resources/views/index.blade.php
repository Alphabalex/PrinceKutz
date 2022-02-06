<!doctype html>
<html lang="{{ app()->getLocale() }}">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <link rel="shortcut icon" type="image/png" href="{{asset('storage/images/app/'.$app->favicon)}}"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta name="csrf-token" content="{{ csrf_token() }}">
        <title>{{$app->app_name}}</title>
    <!-- styles -->
    <link rel="stylesheet" href="styles/vendor.css">
    <link rel="stylesheet" href="styles/main.css">

    <!-- scripts -->
    <script src="scripts/vendor/modernizr.js"></script>
  </head>
  <body>
    <!-- LOADER -->
    <div id="mask">
        <div class="loader-minimal"></div>
    </div>

    <header id="jHeader" class="invert">
      <nav class="navbar navbar-default" role="navigation">

        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <span class="sr-only">Menu</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/"><img src="{{asset('storage/images/app/'.$app->black_logo)}}" alt="logo"></a>
        </div>

        <div id="navbar-murdock" class="collapse navbar-collapse navbar-ex1-collapse">
          <ul class="nav navbar-nav navbar-right invert">
            <li class="active"><a href="#home">home</a></li>
            <li><a href="#about">about</a></li>
            <li><a href="#services">services</a></li>
            <li><a href="#portfolio">portfolio</a></li>
            <li><a href="#staff">staff</a></li>
            <li><a href="#contact">contact</a></li>
            <li><a href="/booking">booking</a></li>
          </ul>
        </div>

      </nav>
    </header>

    <!-- intro -->
    <section class="intro full-width jIntro" id="home">
      <div class="container-full">
        <div class="row row-no-gutter">
          <div class="col-md-12">
            <div class="slider-intro">
              <div id="slides">
                <div class="slides-container">
                    @foreach ($sliders as $slider)
                    <img src="{{asset('storage/images/banner/'.$slider->image)}}" alt="slider">
                    @endforeach
                </div>
              </div>
            </div>
          </div>
        </div>

        <div class="vcenter text-center text-overlay">
          <div id="owl-main-text" class="owl-carousel">
            <div class="item">
              <h1 class="primary-title invert">welcome to  <strong>PRINCE KUTZ Hair Studio</strong></h1>
            </div>
            <div class="item">
              <h1 class="primary-title invert">welcome to <strong>PRINCE KUTZ Hair Studio</strong></h1>
            </div>
            <div class="item">
              <h1 class="primary-title invert"><strong>Online Bookings OPEN!</strong></h1>
            </div>
          </div>
          <div class="voffset20"></div>
          <a href="/booking" class="btn btn-invert">Book Now!</a>
        </div>

      </div>
    </section>

    <!-- text -->
    <div id="about" class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-8 col-md-offset-2">
            <div class="voffset90"></div>
            <p class="pretitle">Introducing</p>
            <h1 class="title">PRINCE KUTZ Hair Studio</h1>
            <p class="subtitle colored">All our passionate barbers are professionally trained to execute their craft at their best to help you feel comfortable on the inside & out. We provide perfect male grooming service for your birthdays, weddings, interviews, musical video shoots and all beautiful events.</p>
            <ul class="list-horizontal-links">
              <li><a href="/booking">Book Now</a></li>
            </ul>
            <div class="voffset90"></div>
          </div>
        </div>
      </div>
    </div>


    <!-- tabs -->
    <div id="tab" class="container-full tabsmodule">
      <div class="row row-no-gutter">
        <div class="col-md-6">
          <div class="banner" id="bg-home-grid0">
            <!-- <div class="voffset720"></div> -->
          </div>
        </div>
        <div class="col-md-6">
          <div class="banner-tabs">
            <div class=""> <!-- vcenter -->
              <ul class="list-horizontal-links carousel-tabs">
                <li class="active"><a href="#">The PRINCE KUTZ Story</a></li>
              </ul>
              <div class="carusel-tabs-text">
                <div class="carousel-cell">
                  <h2 class="title invert">ADEBOWALE FOLAHAN</h2>
                  <p>Born In Lagos state Nigeria. During his time in high school, he trained on how to become a barber, which is what he later became while continuing his studies at Lagos state university. Due to his passion and love for the profession, he gradually became the first choice for many individuals which gave him the experience and opportunity to work in a few professional hair studio.</p>
                  <p>The quality of his cuts gave him the opportunity to work on some influential people in entertainment industry & in the society. Individuals like politicians, movie actors, music artists, soccer players. This includes the likes of Samuel Eto, Papa Ajasco, RMD, Wizkid, Davido, Patoranking ,Ice prince Zamani , Burna boy, Falz, Ycee , Ricky Rick, Anatii , R2bees, Belle9tz , Johmakini, Phyno ,Sauti soul, c4pedro, Mr Eazi, Kcee, etc.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>


    <!-- diagonal -->
    <div id="services" class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-8 col-md-offset-2">
            <div class="voffset110"></div>
            <h1 class="title">PK Services</h1>
            <p class="pretitle">PRECISION IS KEY</p>
            <p class="subtitle colored">We have the latest professional equipment for trending haircuts & classic fades. We are open 7 days a week including public holidays. Unable to come to us? Not to worry, we also offer MOBILE OUT OF STUDIO PACKAGES that allows us to bring the convenience of our services to your door step or office on request. satisfaction is our top priority.</p>
            <p class="subtitle colored">The team at PrinceKutz Hair Studio pride themselves in the quality service they give their customers. Above and beyond the quality of the service, the team also values the relationships they build with our customers.</p>
            <div class="voffset110"></div>
          </div>
        </div>
      </div>
    </div>

    <!-- services -->
    <div class="section features">
      <div class="container">
        <div class="row">
          @foreach ($services as $service)
          <div class="col-sm-4">
            <div class="horizontal-border fadeInUp">
              <div class="voffset40"></div>
              <img src="images/icon.png" alt="icon">
              <div class="voffset40"></div>
              <h4 class="titlefeat">{{$service->name}}</h4>
              <div class="voffset30"></div>
              <p class="textfeat">{{$service->description}}</p>
            </div>
          </div>
          @endforeach
        </div>
        <div class="voffset20"></div>
      </div>
    </div>

    <!-- about parallx -->
    <div class="banner full parallax-section" data-parallax-image="images/demo/home/parallax-about.jpg">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-md-offset-3">
            <div class="voffset20"></div>
            <h1 class="title colored invert">opening hours</h1>
            <div class="voffset10"></div>
            <div class="separator colored invert"></div>
            <p class="subtitle colored invert">Mon - Sat 10am - 7pm <br> Sundays 12pm - 6pm </p>
            <p class="subtitle colored invert">Mon to Sun - Bookings Only</p>
            <div class="voffset20"></div>
          </div>
        </div>
      </div>
    </div>


    <!-- work -->
    <div id="portfolio" class="section">
      <div class="container-fluid">

        <!-- filter gallery -->
        <div class="row">
          <div class="col-md-12">
            <ul class="filters">
              <li data-filter=".celeb" class="is-checked wow fadeInUp" data-wow-delay="0.5s">
                <span> Celebrity Clients </span>
              </li>
              <li data-filter=".publications" class="wow fadeInUp" data-wow-delay="0.8s">Gallery</li>
            </ul>
          </div>
        </div>
        <!-- gallery photos -->
        <div class="row">
          <div class="thumbnails work5">
            @include('celeb')
            @include('gallery')
          </div>
        </div>
      </div>
    </div>

    <!-- Achievements -->
    <section class="banner section inverse-color full full-width">
      <div class="container-fluid">
        <div class="row">
          <div class="col-md-12">
            <div class="voffset120"></div>
            <p class="pretitle invert">achievements</p>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            <ul class="counter">
              <li class="fadeInUp horizontal-border">
                <p class="number">
                  <span class="numscroller" data-min="1" data-max="5000" data-delay="5" data-increment="10">5000</span>
                </p>
                <p class="title-counter">Hair Cuts</p>
              </li>
              <li class="fadeInUp horizontal-border">
                <p class="number">
                  <span class="numscroller" data-min="1" data-max="3000" data-delay="2" data-increment="10">3000</span>
                </p>
                <p class="title-counter">Shaves</p>
              </li>
              <li class="fadeInUp horizontal-border">
                <p class="number">
                  <span class="numscroller" data-min="1" data-max="1000" data-delay="5" data-increment="5">1000</span>
                </p>
                <p class="title-counter">Dreadlocks</p>
              </li>
              <li class="fadeInUp horizontal-border">
                <p class="number">
                  <span class="numscroller" data-min="1" data-max="8500" data-delay="2" data-increment="10">8500</span>
                </p>
                <p class="title-counter">Satisfied clients</p>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </section>

    <!-- staff -->
    <div id="staff" class="section meet-the-team">
      <div class="container">

        <div class="row">
          <div class="col-md-7">
            <div class="voffset100"></div>
            <p class="pretitle left">Staff</p>
            <h1 class="title left-horizontal">PK Staff</h1>
          </div>
          <div class="col-md-5">
            <p class="subtitle left-horizontal">whatever style you prefer, we find that wearing them as often as possible provides the best fades.</p>
          </div>
        </div>
        <div class="row row-no-gutter">
            @foreach ($staffs as $staff)
            <div class="col-sm-3 fadeInUp">
                <div class="team-member">
                  <img src="{{asset('storage/images/employee/'.$staff->image)}}" alt="staff">
                  <div class="voffset30"></div>
                  <h4 class="name-member">{{$staff->name}}</h4>
                  <p class="position-member">{{$staff->position}}</p>
                  <a href="/booking" class="btn btn-default">Book</a>
                  <div class="voffset10"></div>
                </div>
            </div>
            <div class="col-sm-3 fadeInUp">
            </div>
            @endforeach
        </div>
        <div class="row">
          <div class="col-md-12">
            <div class="voffset20"></div>
          </div>
        </div>
      </div>
    </div>

    <!-- contact -->
    <div id="contact" class="section">
      <div class="container container-full">
        <div class="row row-no-gutter">
          <div class="col-md-6">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3582.993579419805!2d28.0442540151858!3d-26.099128266048552!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x1e9573be4f997341%3A0x4f48791b787c0ca1!2sPrince%20Kutz%20Hair%20Studio!5e0!3m2!1sen!2sng!4v1640972398216!5m2!1sen!2sng" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
          </div>
          <div class="col-md-6">
            <div class="contact-basic">
              <div class="voffset400"></div>
              <div class="vcenter text-center">
                <p class="pretitle">phone</p>
                <div class="voffset20">{{ $salon->phone }}</div>
                <p></p>
                <div class="voffset50"></div>
                <p class="pretitle">email</p>
                <div class="voffset20"></div>
                <p><a href="mailto:{{$salon->email}}" class="mailto">{{$salon->email}}</a></p>
              </div>
            </div>
            <div class="contact-form bg-cream">
              <div class="voffset400"></div>
              <div class="vcenter text-center">
                <p class="pretitle">contact</p>
                <div class="voffset40"></div>
                <form>
                  <div class="form-group inline">
                    <input type="text" class="form-control" id="inputName" placeholder="name">
                  </div>
                  <div class="form-group inline">
                    <input type="email" class="form-control" id="inputEmail" placeholder="email address">
                  </div>
                  <div class="form-group">
                    <textarea class="form-control" rows="3" id="inputMessage" placeholder="message"></textarea>
                  </div>
                  <div class="voffset20"></div>
                  <button type="submit" class="btn btn-arrow">Send message</button>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>


    <!-- contenct with us -->
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="voffset80"></div>
            <p class="pretitle">Connect with us</p>
            <ul class="social-links">
              <li><a href="{{$salon->facebook}}"><i class="fa fa-facebook"></i></a></li>
              <li><a href="{{$salon->instagram}}"><i class="fa fa-instagram"></i></a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <footer>
      <div class="container-fluid">
        <div class="voffset30"></div>
        <div class="row">
          <div class="col-md-3 col-sm-6">
            <div class="voffset30"></div>
            <img src="{{asset('storage/images/app/'.$app->black_logo)}}" alt="logo">
            <div class="voffset20"></div>
            <p>Our professional barbers are a cut above the rest.</p>
          </div>
          <div class="col-md-3 col-sm-6">
            <div class="voffset30"></div>
            <h5 class="title-small">Browse</h5>
            <div class="voffset20"></div>
            <ul class="list-menu">
              <li><a href="#home">home</a></li>
              <li><a href="#about">about</a></li>
              <li><a href="#services">services</a></li>
              <li><a href="#portfolio">portfolio</a></li>
              <li><a href="#staff">staff</a></li>
              <li><a href="#contact">contact</a></li>
              <li><a href="/booking">booking</a></li>
            </ul>
          </div>
          <div class="col-md-3 col-sm-6">
            <div class="voffset30"></div>
            <h5 class="title-small">Contact Us</h5>
            <div class="voffset20"></div>
            <p class="contact-link fa fa-envelope-o">{{$salon->email}}</p>
            <p class="contact-link fa fa-mobile">{{$salon->phone}}</p>
            <p class="contact-link fa fa-map-marker">{{$salon->address}}</p>
          </div>
          <div class="col-md-3 col-sm-6">
            <div class="voffset30"></div>
            <h5 class="title-small">Stay in touch</h5>
            <div class="voffset20"></div>
            <p class="info-newsletter">Sign up for Prince Kutz newsletter to stay up to date</p>
            <div class="voffset20"></div>
            <form action="" method="post" id="contactform" class="contact-form">
              <input type="email" id="email" name="email" placeholder="email" class="required email">
              <input type="submit" class="btn btn--alt" value=">">
            </form>
          </div>
        </div>
        <div class="voffset30"></div>
      </div>
      <div class="copyright">
        <div class="voffset40"></div>
        <p>{{$app->footer1}} <br>
        {{$app->footer2}}</p>
        <div class="voffset40"></div>
      </div>
    </footer>
    <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
    {{-- <script>
      (function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
      function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
      e=o.createElement(i);r=o.getElementsByTagName(i)[0];
      e.src='https://www.google-analytics.com/analytics.js';
      r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
      ga('create','UA-XXXXX-X');ga('send','pageview');
    </script> --}}
    <script src="scripts/plugins/jquery.min.js"></script>
    <script src="scripts/plugins/flickity.pkgd.min.js"></script>
    <script src="scripts/plugins/twitterFetcher_min.js"></script>
    <script src="scripts/plugins/jquery.parallax.min.js"></script>
    <script src="scripts/plugins/isotope.pkgd.min.js"></script>
    <script src="scripts/plugins/jquery.superslides.min.js"></script>
    <script src="scripts/plugins/owl.carousel.min.js"></script>
    <script src="scripts/plugins/jquery.inview.min.js"></script>
    <script src="scripts/plugins/jquery.numscroller-1.0.js"></script>
    <script src="scripts/plugins/jquery.countdown/jquery.plugin.min.js"></script>
    <script src="scripts/plugins/jquery.countdown/jquery.countdown.min.js"></script>

    <script src="scripts/main.js"></script>

    <script src="scripts/vendor/bootstrap.js"></script>
</body>
</html>
