<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use App\Models\User;
use DataTables;

class AdminAuthController extends Controller
{
    public function getLogin(){
        return view('admin.auth.login');
    }

    public function postLogin(Request $request)
    {
        $this->validate($request, [
            'email' => 'required|email',
            'password' => 'required',
        ]);

        if(auth()->guard('admin')->attempt(['email' => $request->input('email'),  'password' => $request->input('password')])){
            $user = auth()->guard('admin')->user();
            if($user){
                return redirect()->route('adminDashboard')->with('success','You are Logged in sucessfully.');
            }
        }else {
            return back()->with('error','Whoops! invalid email and password.');
        }
    }

    public function adminLogout(Request $request)
    {
        auth()->guard('admin')->logout();
        Session::flush();
        Session::put('success', 'You are logout sucessfully');
        return redirect(route('adminLogin'));
    }
    public function getUsers()
    {
        return view('admin.auth.users');   
    }
    public function getUserList(Request $request)
    {
        if ($request->ajax()) {
            // $data = User::select('*');
            // return Datatables::of($data)->editColumn('is_manglik', function ($data) { 
            //     return  $data->is_manglik == 1?"Yes":"No";
            // })->editColumn('date_of_birth', function ($data) { 
            //     return  \Carbon\Carbon::parse($data->date_of_birth)->diff(\Carbon\Carbon::now())->format('%y');
            // })->addIndexColumn()->make(true);

            $draw = $request->get('draw');
            $start = $request->get("start");
            $rowperpage = $request->get("length"); // Rows display per page

            $columnIndex_arr = $request->get('order');
            $columnName_arr = $request->get('columns');
            $order_arr = $request->get('order');
            $search_arr = $request->get('search');

            $columnIndex = $columnIndex_arr[0]['column']; // Column index
            $columnName = $columnName_arr[$columnIndex]['data']; // Column name
            $columnSortOrder = $order_arr[0]['dir']; // asc or desc
            $searchValue = $search_arr['value']; // Search value

            // Custom search filter 
            $searchGender = $request->get('searchGender');
            $manglik = $request->manglik;
            $searchFamilyType = $request->searchFamilyType;
            $minAnnualIncome = $request->minAnnualIncome;
            $maxAnnualIncome = $request->maxAnnualIncome;

            // Total records
            $records = User::select('count(*) as allcount');

            ## Add custom filter conditions
            if(!empty($searchFamilyType)){
                $records->where('family_type',$searchFamilyType);
            }
            if(!empty($searchGender)){
                $records->where('gender',$searchGender);
            }
            if(!empty($manglik)){
                if($manglik == 2)
                $records = $records->where('is_manglik',0);
                else
                $records = $records->where('is_manglik',1);

            }
            if(!empty($minAnnualIncome)){
                $records->where('annual_income',">=",$minAnnualIncome);
            }
            if(!empty($maxAnnualIncome)){
                $records->where('annual_income',"<=",$maxAnnualIncome);
            }
            $totalRecords = $records->count();

            // Total records with filter
            //$records = Employees::select('count(*) as allcount')->where('name', 'like', '%' .$searchValue . '%');
            $records = User::select('count(*) as allcount');

            ## Add custom filter conditions
            if(!empty($searchFamilyType)){
                $records->where('family_type',$searchFamilyType);
            }
            if(!empty($searchGender)){
                $records->where('gender',$searchGender);
            }
            if(!empty($manglik)){
                if($manglik == 2)
                $records = $records->where('is_manglik',0);
                else
                $records = $records->where('is_manglik',1);
            }
            if(!empty($minAnnualIncome)){
                $records->where('annual_income',">=",$minAnnualIncome);
            }
            if(!empty($maxAnnualIncome)){
                $records->where('annual_income',"<=",$maxAnnualIncome);
            }
            // if(!empty($searchName)){
            //     $records->where('name','like','%'.$searchName.'%');
            // }
            $totalRecordswithFilter = $records->count();

            // Fetch records
            $records = User::orderBy($columnName,$columnSortOrder)
                        ->select('*');
                       // ->where('users_4.name', 'like', '%' .$searchValue . '%');
            ## Add custom filter conditions
            if(!empty($searchFamilyType)){
                $records = $records->where('family_type',$searchFamilyType);
            }
            if(!empty($searchGender)){
                $records = $records->where('gender',$searchGender);
            }
            if(!empty($manglik)){
                if($manglik == 2)
                $records = $records->where('is_manglik',0);
                else
                $records = $records->where('is_manglik',1);
            }
            if(!empty($minAnnualIncome)){
                $records->where('annual_income',">=",$minAnnualIncome);
            }
            if(!empty($maxAnnualIncome)){
                $records->where('annual_income',"<=",$maxAnnualIncome);
            }

            $users = $records->skip($start)
                        ->take($rowperpage)
                        ->get();

            $data_arr = array();
            $i = 1;
            foreach($users as $user){
                $first_name = $user->first_name;
                $last_name = $user->last_name;
                $email = $user->email;
                $gender = $user->gender;
                $annual_income = $user->annual_income;
                $family_type = $user->family_type;
                $dob = \Carbon\Carbon::parse($user->date_of_birth)->diff(\Carbon\Carbon::now())->format('%y');
                $is_manglik = $user->is_manglik == 1?"Yes":"No";
                $data_arr[] = array(
                    "id" => $i++,
                    "first_name" => $first_name,
                    "last_name" => $last_name,
                    "email" => $email,
                    "gender" => $gender,
                    "annual_income" => $annual_income,
                    "family_type" => $family_type,
                    "is_manglik" => $is_manglik,
                    "date_of_birth" => $dob
                );
            }

            $response = array(
                "draw" => intval($draw),
                "iTotalRecords" => $totalRecords,
                "iTotalDisplayRecords" => $totalRecordswithFilter,
                "aaData" => $data_arr
            );

            return response()->json($response);

        }
    }
}