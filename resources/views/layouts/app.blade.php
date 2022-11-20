<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>CupidKnot</title>
  <meta content="" name="description">
  <meta content="" name="keywords">
  <meta name="csrf-token" content="{{ csrf_token() }}">

  <!-- Favicons -->
  <link href="{{ asset('front-assets/img/favicon.png') }}" rel="icon">
  <link href="{{ asset('front-assets/img/apple-touch-icon.png') }}" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Jost:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="{{asset('front-assets/vendor/aos/aos.css') }}" rel="stylesheet">
  <link href="{{asset('front-assets/vendor/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
  <link href="{{asset('front-assets/vendor/bootstrap-icons/bootstrap-icons.css') }}" rel="stylesheet">
  <link href="{{asset('front-assets/vendor/boxicons/css/boxicons.min.css') }}" rel="stylesheet">
  <link href="{{asset('front-assets/vendor/glightbox/css/glightbox.min.css') }}" rel="stylesheet">
  <link href="{{asset('front-assets/vendor/remixicon/remixicon.css') }}" rel="stylesheet">
  <link href="{{asset('front-assets/vendor/swiper/swiper-bundle.min.css') }}" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.13.2/themes/base/jquery-ui.min.css" integrity="sha512-ELV+xyi8IhEApPS/pSj66+Jiw+sOT1Mqkzlh8ExXihe4zfqbWkxPRi8wptXIO9g73FSlhmquFlUOuMSoXz5IRw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <!-- Template Main CSS File -->
  <link href="{{asset('front-assets/css/style.css') }}" rel="stylesheet">
  <style>
    label.error{
      color:red;
      font-size:12px;
    }
  </style>
  <!-- =======================================================
  * Template Name: Arsha - v4.9.1
  * Template URL: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top ">
    <div class="container d-flex align-items-center">

      <h1 class="logo me-auto"><a href="{{ route('home') }}">CupidKnot</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="{{ route('home') }}">Home</a></li>
          <!-- <li><a class="nav-link scrollto" href="#about">About</a></li>
          <li><a class="nav-link scrollto" href="#services">Services</a></li>
          <li><a class="nav-link   scrollto" href="#portfolio">Portfolio</a></li>
          <li><a class="nav-link scrollto" href="#team">Team</a></li> -->
          @if(Auth::user())
          <li class="dropdown"><a href="#"><span>{{ Auth::user()->first_name }}</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="{{ route('signout') }}">Logout</a></li>              
            </ul>
          </li>
          @endif
          @if(!AUth::user())
          <li><a class="getstarted scrollto" href="javascript:void(0)"  data-bs-toggle="modal" data-bs-target="#modalLoginForm">Login</a></li>
          @endif
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center">

    <div class="container">
      <div class="row">
        <div class="col-lg-6 d-flex flex-column justify-content-center pt-4 pt-lg-0 order-2 order-lg-1" data-aos="fade-up" data-aos-delay="200">
          <h1>Find your better match</h1>
          @if(!Auth::user())
          <div class="d-flex justify-content-center justify-content-lg-start">
            <a href="javascript:void(0)" class="btn-get-started" data-bs-toggle="modal" data-bs-target="#modalRegisterForm">Register Now</a>
          </div>
          @endif
        </div>
        <div class="col-lg-6 order-1 order-lg-2 hero-img" data-aos="zoom-in" data-aos-delay="200">
          <img src="{{asset('front-assets/img/hero-img.png') }}" class="img-fluid animated" alt="">
        </div>
      </div>
    </div>

  </section><!-- End Hero -->

  <main id="main">
  @yield('main')
  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer">

    <div class="footer-newsletter">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-6">
            <h4>Join Our Newsletter</h4>
            <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>
            <form action="" method="post">
              <input type="email" name="email"><input type="submit" value="Subscribe">
            </form>
          </div>
        </div>
      </div>
    </div>

    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-contact">
            <h3>CupidKnot</h3>
            <p>
              A108 Adam Street <br>
              New York, NY 535022<br>
              United States <br><br>
              <strong>Phone:</strong> +1 5589 55488 55<br>
              <strong>Email:</strong> info@example.com<br>
            </p>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">About us</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Our Services</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Web Design</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Web Development</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Product Management</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Graphic Design</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Our Social Networks</h4>
            <p>Cras fermentum odio eu feugiat lide par naso tierra videa magna derita valies</p>
            <div class="social-links mt-3">
              <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
              <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
              <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
              <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
              <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
            </div>
          </div>

        </div>
      </div>
    </div>

    <div class="container footer-bottom clearfix">
      <div class="copyright">
        &copy; Copyright <strong><span>Arsha</span></strong>. All Rights Reserved
      </div>
      <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/arsha-free-bootstrap-html-template-corporate/ -->
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
    </div>
  </footer><!-- End Footer -->

  <div id="preloader"></div>
  <div class="modal fade" id="modalRegisterForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
  aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header text-center">
          <h4 class="modal-title w-100 font-weight-bold">Sign up</h4>
          <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body mx-3">
          <form method="post" id="register" action="{{ route('signup') }}">
            <h5 class="text-primary"> Basic Details </h4>
            <div class="row">
              <div class="mb-3 col-6">
                <label for="recipient-name" class="col-form-label">First name:</label>
                <input type="text" class="form-control" id="first_name" name="first_name">
              </div>
              <div class="mb-3 col-6">
                <label for="recipient-name" class="col-form-label">Last name:</label>
                <input type="text" class="form-control" id="last_name" name="last_name">
              </div>
            </div>
            <div class="row">
              <div class="mb-3 col-6">
                <label for="message-text" class="col-form-label">Email:</label>
                <input type="email" class="form-control" id="email" name="email">
              </div>
              <div class="mb-3 col-6">
                <label for="message-text" class="col-form-label">Date Of Birth:</label>
                <input type="date" class="form-control" id="date_of_birth" name="date_of_birth">
              </div>
            </div>
            <div class="row">
              <div class="mb-3 col-6">
                <label for="message-text" class="col-form-label">Password:</label>
                <input type="password" class="form-control" id="password" name="password">
              </div>
              <div class="mb-3 col-6">
                <label for="message-text" class="col-form-label">Confirm Password:</label>
                <input type="password" class="form-control" id="password_confirmation" name="password_confirmation">
              </div>            
            </div>
            <div class="row">
              <div class="mb-3 col-6">
                <label for="message-text" class="col-form-label">Gender:</label>
                <div>
                      <input type="radio" checked name="gender" id="gender1" value="male"> Male
                      <input type="radio" name="gender" id="gender2" value="female"> Female
                </div>
              </div>
              <div class="mb-3 col-6">
                <label for="message-text" class="col-form-label">Annual Income:</label>
                <input type="number" class="form-control" id="annual_income" name="annual_income">
              </div>
            </div>
            <div class="row">
              <div class="mb-3 col-6">
                <label for="message-text" class="col-form-label">Occupation:</label>
                <select name="occupation" id="occupation" class="form-control">
                  <option value="private">Private Job</option>
                  <option value="government">Government Job</option>
                  <option value="business">Business</option>
                </select>
              </div>
              <div class="mb-3 col-6">
                <label for="message-text" class="col-form-label">Family Type:</label>
                <select name="family_type" id="family_type" class="form-control">
                  <option value="neuclear">Neuclear</option>
                  <option value="joint">Joint</option>
                </select>
              </div>
            </div>
            <div class="row">
            <div class="mb-3 col-6">
                <label for="message-text" class="col-form-label">Manglik:</label>
                <select name="is_manglik" id="is_manglik" class="form-control">
                  <option value="0">No</option>
                  <option value="1">Yes</option>
                </select>
              </div> 
            </div>
            <h5 class="text-primary"> Partner Preference </h4>
            <div class="row">
              <div class="mb-3 col-6">
                
                <p>
                  <label for="pre_expected_income">Expected Income:</label>
                  <input type="text" id="pre_expected_income" name="pre_expected_income" readonly style="border:0; color:#f6931f; font-weight:bold;">
                </p>
                <div id="slider-range"></div>
              </div>
              <div class="mb-3 col-6">
                <label for="message-text" class="col-form-label">Occupation:</label>
                <select name="partner_occupation[]" id="partner_occupation" class="form-control" multiple>
                  <option value="private">Private Job</option>
                  <option value="government">Government Job</option>
                  <option value="business">Business</option>
                </select>
              </div> 
              
            </div>
            <div class="row">
              <div class="mb-3 col-6">
                <label for="message-text" class="col-form-label">Family Type:</label>
                <select name="partner_family_type[]" id="partner_family_type" class="form-control" multiple>
                  <option value="neuclear">Neuclear</option>
                  <option value="joint">Joint</option>
                </select>
              </div>
              <div class="mb-3 col-6">
                <label for="message-text" class="col-form-label">Manglik:</label>
                <select name="is_manglik_partner" id="is_manglik_partner" class="form-control">
                  <option value="0">No</option>
                  <option value="1">Yes</option>
                  <option value="2">Both</option>
                </select>
              </div> 
            </div>
            <div class="d-flex justify-content-center">
              <input type="submit" class="btn btn-primary" value="Sign up" >
            </div>
          </form>
          <div class="d-flex justify-content-center">
            <p>Already registered? <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#modalLoginForm"> Login here</a></p>
          </div>
        </div>
        
      </div>
    </div>
  </div>

  <div class="modal fade" id="modalLoginForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
  aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header text-center">
          <h4 class="modal-title w-100 font-weight-bold">Sign in</h4>
          <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body mx-3">
          <form method="post" id="login" action="{{ route('signin') }}">
            <div class="row">
              <div class="mb-3 col-12">
                <label for="message-text" class="col-form-label">Email:</label>
                <input type="email" class="form-control" id="login_email" name="email">
              </div>
            </div>
            <div class="row">
              <div class="mb-3 col-12">
                <label for="message-text" class="col-form-label">Password:</label>
                <input type="password" class="form-control" id="login_password" name="password">
              </div>
            </div>
            
            <div class="d-flex justify-content-center">
              <input type="submit" class="btn btn-primary" value="Sign in" >
            </div>
          </form>
        </div>
        
      </div>
    </div>
  </div>

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="{{asset('front-assets/vendor/aos/aos.js')}}"></script>
  <script src="{{asset('front-assets/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
  <script src="{{asset('front-assets/vendor/glightbox/js/glightbox.min.js')}}"></script>
  <script src="{{asset('front-assets/vendor/isotope-layout/isotope.pkgd.min.js')}}"></script>
  <script src="{{asset('front-assets/vendor/swiper/swiper-bundle.min.js')}}"></script>
  <script src="{{asset('front-assets/vendor/waypoints/noframework.waypoints.js')}}"></script>
  <script src="{{asset('front-assets/vendor/php-email-form/validate.js')}}"></script>
  <script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.min.js" integrity="sha512-rstIgDs0xPgmG6RX1Aba4KV5cWJbAMcvRCVmglpam9SoHZiUCyQVDdH2LPlxoHtrv17XWblE/V/PP+Tr04hbtA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/additional-methods.min.js" integrity="sha512-6S5LYNn3ZJCIm0f9L6BCerqFlQ4f5MwNKq+EthDXabtaJvg3TuFLhpno9pcm+5Ynm6jdA9xfpQoMz2fcjVMk9g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.13.2/jquery-ui.min.js" integrity="sha512-57oZ/vW8ANMjR/KQ6Be9v/+/h6bq9/l3f0Oc7vn6qMqyhvPd1cvKBRWWpzu0QoneImqr2SkmO4MSqU+RpHom3Q==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>  <!-- Template Main JS File -->
  <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

  <script src="{{asset('front-assets/js/main.js')}}"></script>
  <script>
    $( document ).ready(function() {
        console.log( "ready!" );
        $( "#slider-range" ).slider({
          range: true,
          min: 5000,
          max: 9000000,
          values: [ 6000, 50000 ],
          slide: function( event, ui ) {
            $( "#pre_expected_income" ).val( ui.values[ 0 ] + " - " + ui.values[ 1 ] );
          }
        });
        $( "#pre_expected_income" ).val( $( "#slider-range" ).slider( "values", 0 ) +
        " - " + $( "#slider-range" ).slider( "values", 1 ) );
    });
    $.ajaxSetup({
      headers: {
      'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
      }
    });
   $("#register").submit(function(e){e.preventDefault();}).validate({
    rules:{
      first_name:{required:true,},
      last_name:{required:true,},
      password:{required:true,minlength:8},
      password_confirmation:{required:true, equalTo: "#password"},
      email:{required:true,email:true},
      gender:{required:true},
      dob:{required:true},
      annual_income:{required:true},
      "partner_occupation[]":{required:true},
      "partner_family_type[]":{required:true},
    },
    messages:{
      first_name:{required:"Enter Your First Name",},
      last_name:{required:"Enter Your Last Name",},
      password:{required:"Enter Your Password"},
      password_confirmation:{required:"Confirm Your Password", equalTo: "Password not matched"},
      email:{required:"Enter Email Id",email:"Enter Proper Email Id",},
      gender:{required:"Select Gender"},
      dob:{required:"Enter Your Date Of Birth"},
      annual_income:{required:"Enter Annual Income"},
      "partner_occupation[]":{required:"Select Partner's Preference Occupation"},
      "partner_family_type[]":{required:"Select Partner's Family Type"},
    },
    submitHandler:function(form){
      //var frm=$(form).serialize();
      $.ajax({
      	url:$(form).attr('action'),
      	type:"post",
      	data:$(form).serialize(),
      	success:function(res){
         if(res.success == false)
         {
          Swal.fire({
            icon: 'error',
            title: 'Oops...',
            text: res.msg,
          })
         }
         else{
          $("#register")[0].reset();
          $("#modalRegisterForm").modal('hide');
          //$("#modalRegisterForm").dispose()

          Swal.fire(res.msg)
          
         }
      		
      	},
      });
    },
  });
  $("#login").submit(function(e){e.preventDefault();}).validate({
    rules:{
      password:{required:true,minlength:8},
      email:{required:true,email:true},
    },
    messages:{
      password:{required:"Enter Your Password"},
      email:{required:"Enter Email Id",email:"Enter Proper Email Id",}
    },
    submitHandler:function(form){
      //var frm=$(form).serialize();
      $.ajax({
      	url:$(form).attr('action'),
      	type:"post",
      	data:$(form).serialize(),
      	success:function(res){
         if(res.success == false)
         {
          Swal.fire({
            icon: 'error',
            title: 'Oops...',
            text: res.msg,
          })
         }
         else{
          $("#login")[0].reset();
          $("#modalLoginForm").modal('hide');
          window.location.reload();
         }
      		
      	},
      });
    },
  });
  </script>
  @yield('scripts')
</body>

</html>