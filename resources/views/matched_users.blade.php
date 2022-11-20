@if($users->count() > 0)
@foreach($users as $user)
<div class="col-lg-6 mt-4">
    <div class="member d-flex align-items-start" data-aos="zoom-in" data-aos-delay="100">
        @if($user->gender == 'female')
        <div class="pic"><img src="{{ asset('front-assets/img/team/female.png') }}" class="img-fluid" alt=""></div>
        @elseif($user->gender == 'male')
        <div class="pic"><img src="{{ asset('front-assets/img/team/male.jpg') }}" class="img-fluid" alt=""></div>
        @endif
        <div class="member-info">
        <h4>{{ $user->first_name }}</h4>
        <span>{{ $user->occupation }}</span>
        <p>Annual Income : {{ $user->annual_income }}</p>
        <p>Family Type : {{ $user->family_type }}</p>
        <p>Manglik : {{ $user->is_manglik == 1?"Yes":"No" }}</p>
        <p>Match : {{ $user->percentage."%" }} </p>
        <!-- <div class="social">
            <a href=""><i class="ri-twitter-fill"></i></a>
            <a href=""><i class="ri-facebook-fill"></i></a>
            <a href=""><i class="ri-instagram-fill"></i></a>
            <a href=""> <i class="ri-linkedin-box-fill"></i> </a>
        </div> -->
        </div>
    </div>
</div>
@endforeach
@endif