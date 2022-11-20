@extends('layouts.admin')
@section('main')
<link href="https://cdn.datatables.net/1.13.1/css/jquery.dataTables.min.css" rel="stylesheet">
    <div class="pagetitle">
      <h1>Users</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="{{ url('/admin') }}">Home</a></li>
          <li class="breadcrumb-item active">Users</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
      <div class="row my-4">
        <div class="col-12 d-flex">
            <div class="col-4 mr-2">
                <select id='sel_gender' class="form-control">
                    <option value=''>Select Gender</option>
                    <option value='male'>Male</option>
                    <option value='female'>Female</option>
                </select>
            </div>
            <div class="col-4 mr-2">
                <select id='is_manglik' class="form-control">
                    <option value=''>Manglik</option>
                    <option value='1'>Yes</option>
                    <option value='2'>No</option>
                </select>
            </div>
            <div class="col-4 mr-2">
                <select id='family_type' class="form-control">
                    <option value=''>Family Type</option>
                    <option value='neutral'>Neutral</option>
                    <option value='joint'>Joint</option>
                </select>
            </div>
            </div>
            <div class="col-12 d-flex mt-2">
                <div class="col-4 mr-2">
                    <input type="number" id="min_annual_income" class="form-control" placeholder="Minimum Annual Income" />
                </div>
                <div class="col-4 mr-2">
                    <input type="number" id="max_annual_income" class="form-control" placeholder="Maximum Annual Income" />
                </div>
            </div>
      </div>
      <div class="row">
        <table class="table table-bordered data-table">
            <thead>
                <tr>
                    <th>No</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Email</th>
                    <th>Gender</th>
                    <th>Age</th>
                    <th>Family Type</th>
                    <th>Annual Income</th>
                    <th>Manglik?</th>
                </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
      </div>
    </section>
@endsection
@section('scripts')
<script src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.min.js" ></script>
<script type="text/javascript">
$.ajaxSetup({
      headers: {
      'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
      }
    });
$(function () {
    
    var table = $('.data-table').DataTable({
        processing: true,
        serverSide: true,
        ajax: {
            url: "{{ route('getUserList') }}",
            type: 'POST',
            data: function(data){
                //data.searchCity = $('#sel_city').val();
                data.searchGender = $('#sel_gender').val();
                data.manglik = $('#is_manglik').val();
                data.searchFamilyType = $("#family_type").val();
                data.minAnnualIncome = $("#min_annual_income").val();
                data.maxAnnualIncome = $("#max_annual_income").val();
             }
        },
        columns: [
            {data: 'id', name: 'id'},
            {data: 'first_name', name: 'first_name'},
            {data: 'last_name', name: 'last_name'},
            {data: 'email', name: 'email'},
            {data: 'gender', name: 'gender'},
            {data: 'date_of_birth', name: 'date_of_birth'},
            {data: 'family_type', name: 'family_type'},
            {data: 'annual_income', name: 'annual_income'},
            {data: 'is_manglik', name: 'is_manglik'},
        ]
    });

    $('#sel_gender,#is_manglik,#family_type').change(function(){
        table.draw();
    });
    $('#min_annual_income,#max_annual_income').keyup(function(){
        table.draw();
      });
    
  });
</script>
@endsection