@extends('layouts.app')
@section('main')



    <!-- ======= About Us Section ======= -->
    <section id="about" class="about">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>About Us</h2>
        </div>

        <div class="row content">
          <div class="col-lg-6">
            <p>
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
              magna aliqua.
            </p>
            <ul>
              <li><i class="ri-check-double-line"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat</li>
              <li><i class="ri-check-double-line"></i> Duis aute irure dolor in reprehenderit in voluptate velit</li>
              <li><i class="ri-check-double-line"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat</li>
            </ul>
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0">
            <p>
              Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
              velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
              culpa qui officia deserunt mollit anim id est laborum.
            </p>
            <a href="#" class="btn-learn-more">Learn More</a>
          </div>
        </div>

      </div>
    </section><!-- End About Us Section -->
  
    @if(Auth::user())
    <!-- ======= Team Section ======= -->
    <section id="team" class="team section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Your Match</h2>
          <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
        </div>

        <div class="row matched_users">

        </div>
        <div class="d-flex justify-content-center mt-4">
          <a href="javascript:void(0)" class="btn btn-primary load_more_users" >Load More</a>
        </div>
      </div>
    </section><!-- End Team Section -->
    @endif

@endsection
@section('scripts')
<script type="text/javascript">
  function getUsers(page=1){
    $.ajax({
        url:"{{ route('match_users') }}",
        type:"get",
        data: {"page":page},
        success:function(res){
          if(res.success == true && res.html != '')
            $(".matched_users").append(res.html)
          if(page == 1 && res.html == ''){
            $(".load_more_users").remove();
          }
          if(res.users && res.users.current_page != res.users.last_page)
          {
            $(".load_more_users").attr('data-page',parseInt(res.users.current_page)+1)
          }
          else if(res.users && res.users.current_page == res.users.last_page){
            $(".load_more_users").remove();
          }
        }
    });
  }
  $(document).on('click','.load_more_users',function(){
    var page = $(this).attr('data-page');
    getUsers(page);
  })
  $(document).ready(function() {
    getUsers(1);
  });
</script>
@endsection