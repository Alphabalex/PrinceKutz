<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <meta name="base_url" content="{{ url('/') }}">

        <?php $color = \App\AdminSetting::find(1)->color; ?>
        <style>
            :root{
                --primary_color : <?php echo $color ?>;
                --primary_color_hover : <?php echo $color.'cc' ?>;
            }
        </style>
        <!-- Title -->
        <?php $app_name = \App\AdminSetting::find(1)->app_name; ?>
        <title>{{$app_name}}</title>
        <!-- Favicon -->
        <?php $favicon = \App\AdminSetting::find(1)->favicon; ?>
        <link href="{{asset('storage/images/app/'.$favicon)}}" rel="icon" type="image/png">
        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
        <!-- CSS -->
        <link href="{{ asset('includes/css/nucleo.css')}}" rel="stylesheet">
        <link href="{{ asset('includes/css/all.min.css')}}" rel="stylesheet">
        <link href="{{ asset('includes/css/sweetalert2.scss')}}">
        <link href="{{ asset('includes/css/jquery.timepicker.css')}}" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.7/css/select2.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/fullcalendar/2.2.7/fullcalendar.min.css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
         <!-- Argon CSS -->
        {{-- <link href="{{ asset('includes/css/argon.css')}}" rel="stylesheet">
        <link href="{{ asset('includes/css/mystyle.css')}}" rel="stylesheet"> --}}
        <!-- styles -->
        <link rel="stylesheet" href="styles/vendor.css">
        <link rel="stylesheet" href="styles/main.css">

        <!-- scripts -->
        <script src="scripts/vendor/modernizr.js"></script>
    </head>
    <body>
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
                <li><a href="/">home</a></li>
                <li class="active"><a href="/booking">booking</a></li>
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
            </div>
        </div>
        </section>
        <!-- text -->
    <div id="about" class="section">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2">
                <div class="voffset90"></div>
                <p class="pretitle">Booking</p>
                <h1 class="title">Online Bookings OPEN!</h1>
                <p class="subtitle colored">Our online booking platform is now open. Your safety and health is important to us at PrinceKutz so we've taken full precautions during this Corona pandemic.</p>
                <div class="voffset90"></div>
                <!-- Booking -->
                <form id="create_appointment_form" method="post" enctype="multipart/form-data" action="{{url('/booking/store')}}"">
                    @csrf
                    <?php
                        $id = rand(100000,9999999);
                    ?>
                    {{-- Booking ID --}}
                    <div class="form-group">
                        <label class="form-control-label" for="booking_id">{{__('Booking id')}}</label>
                        <input type="text" name="booking_id" value="#{{$id}}" id="booking_id" class="form-control" placeholder="Booking id" readonly>
                    </div>
                    {{-- Name --}}
                    <div class="form-group">
                        <label class="form-control-label" for="name">{{__('Name')}}</label>
                        <input type="text" name="name"  id="name" class="form-control" placeholder="Name">
                        <div class="invalid-div"><span class="name"></span></div>
                    </div>
                    {{-- Email --}}
                    <div class="form-group">
                        <label class="form-control-label" for="email">{{__('Email')}}</label>
                        <input type="email" name="email"  id="email" class="form-control" placeholder="Email">
                        <div class="invalid-div"><span class="email"></span></div>
                    </div>
                    {{-- Phone --}}
                    <div class="form-group">
                        <label class="form-control-label" for="phone">{{__('Phone')}}</label>
                        <input type="phone" name="phone"  id="phone" class="form-control" placeholder="Phone">
                        <div class="invalid-div"><span class="phone"></span></div>
                    </div>
                    {{-- Address --}}
                    <div class="form-group">
                        <label class="form-control-label" for="address">{{__('Address')}}</label>
                        <textarea name="address" id="address" cols="30" rows="10" class="form-control" placeholder="address"></textarea>
                        <div class="invalid-div"><span class="address"></span></div>
                    </div>
                    {{-- Services --}}
                    <div class="form-group">
                        <label class="form-control-label">{{__('Services')}}</label>
                        <select class="form-control select2 service_class" multiple="multiple" name="service_id[]" id="select2" data-placeholder='{{ __("-- Select Service --")}}' placeholder='{{ __("-- Select Service --")}}'>
                            @foreach ($services as $service)
                                <option value={{$service->service_id}}>{{$service->name}}</option>
                            @endforeach
                        </select>
                        <div class="invalid-div"><span class="service_id"></span></div>
                    </div>
                    {{-- Date of appointment--}}
                    <div class="form-group">
                        <label class="form-control-label" for="date">{{__('Date')}}</label>
                        <input type="text" name="date"  id="date" class="form-control select_date" placeholder="{{__('-- Select Date --')}}">
                        <div class="invalid-div"><span class="date"></span></div>
                    </div>
                    {{-- Time of appointment--}}
                    <div class="form-group">
                        <label class="form-control-label" for="start_time">{{__('Time')}}</label>
                        <select class="form-control select2 start_time" name="start_time" id="start_time">
                            <option disabled selected> {{__('-- Select Time --')}} </option>
                        </select>
                        <div class="invalid-div"><span class="start_time"></span></div>
                    </div>
                    {{-- service price --}}
                    <div class="form-group">
                        <label class="form-control-label" for="price">{{__('Price')}}</label>
                        <input type="text" name="price" id="price" class="form-control" placeholder="{{__('Price')}}" readonly>
                        <div class="invalid-div"><span class="price"></span></div>
                    </div>

                    {{-- staffs --}}
                    <div class="form-group">
                        <label class="form-control-label">{{__('Employee')}}</label>
                        <select class="form-control select2 emp_id" name="emp_id" id="emp_id">
                            <option disabled selected> {{__('-- Select Employee --')}} </option>
                        </select>
                        <div class="invalid-div"><span class="emp_id"></span></div>
                    </div>
                    {{-- end --}}
                    <div class="voffset20"></div>
                    <button type="button" onclick="create_booking('create_appointment_form','booking/store')" id="create_btn" class="btn btn-default">{{ __('Book Appointment') }}</button>
                </form>
                <div class="voffset120"></div>
                </div>
                <div class="col-md-8 col-md-offset-2">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3582.993579419805!2d28.0442540151858!3d-26.099128266048552!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x1e9573be4f997341%3A0x4f48791b787c0ca1!2sPrince%20Kutz%20Hair%20Studio!5e0!3m2!1sen!2sng!4v1640972398216!5m2!1sen!2sng" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
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
                <li><a href="/">home</a></li>
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
            <script src="{{ asset('includes/js/jquery.min.js') }}"></script>
            <script src="{{ asset('includes/js/bootstrap.bundle.min.js') }}"></script>
            <script src="{{ asset('includes/js/argon.js') }}"></script>
            <script src="{{ asset('includes/js/jquery.scrollbar.min.js') }}"></script>
            <script src="{{ asset('includes/js/jquery-scrollLock.min.js') }}"></script>
            <script src="{{ asset('includes/js/sweetalert.all.js') }}"></script>
            <script src="{{ asset('includes/js/jquery.timepicker.js') }}"></script>
            <script src="//cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment.min.js"></script>
            <script src="//cdnjs.cloudflare.com/ajax/libs/fullcalendar/2.2.7/fullcalendar.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/promise-polyfill@8/dist/polyfill.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.7/js/select2.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
            <script src="{{ asset('includes/js/myjavascript.js') }}"></script>
            <script src="scripts/plugins/jquery.superslides.min.js"></script>
            <script src="scripts/plugins/owl.carousel.min.js"></script>
            <script src="scripts/plugins/jquery.inview.min.js"></script>
            <script src="scripts/plugins/jquery.numscroller-1.0.js"></script>
            <script src="scripts/plugins/jquery.countdown/jquery.plugin.min.js"></script>
            <script src="scripts/plugins/jquery.countdown/jquery.countdown.min.js"></script>

            <script src="scripts/main.js"></script>
            @stack('js')
    </body>
</html>
