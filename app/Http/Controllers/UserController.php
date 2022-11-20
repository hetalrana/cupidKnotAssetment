<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Auth;

class UserController extends Controller
{
    //
    public function store()
    {
        
        $validator =  Validator::make(request()->all(), [
            'first_name' => ['required', 'string', 'max:191'],
            'last_name' => ['string', 'max:191'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users,email'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
            'date_of_birth' => ['required'],
            'gender' => ['required'],
            'annual_income' => ['required'],
            'occupation' => ['required'],
            'family_type' => ['required'],
        ]);
        if ($validator->fails())
        {
            return response()->json(array(
                'success' => false,
                'msg' => implode(",",$validator->errors()->all())

            ), 200); // 400 being the HTTP code for an invalid request.
        }
        $data = request()->all();
        $details = [
            'first_name' => $data['first_name'],
            'email' => $data['email'],
            'password' => Hash::make($data['password']),
        ];
        $details['last_name'] = array_key_exists("last_name",$data)?$data['last_name']:"";
        $details['date_of_birth'] = array_key_exists("date_of_birth",$data)?$data['date_of_birth']:"";
        $details['gender'] = array_key_exists("gender",$data)?$data['gender']:"";
        $details['annual_income'] = array_key_exists("annual_income",$data)?$data['annual_income']:"";
        $details['occupation'] = array_key_exists("occupation",$data)?$data['occupation']:"";
        $details['family_type'] = array_key_exists("family_type",$data)?$data['family_type']:"";
        $details['is_manglik'] = array_key_exists("is_manglik",$data)?$data['is_manglik']:"";
        if(array_key_exists("pre_expected_income",$data))
        {
            $array = explode(" - ",$data['pre_expected_income']);
            $details['pre_expected_income_min'] = $array[0];
            $details['pre_expected_income_max'] = $array[1];
        }
        $details['pre_occupation'] = array_key_exists("partner_occupation",$data)?implode(",",$data['partner_occupation']):"";
        $details['pre_family_type'] = array_key_exists("partner_family_type",$data)?implode(",",$data['partner_family_type']):"";
        $details['pre_manglik'] = array_key_exists("is_manglik_partner",$data)?$data['is_manglik_partner']:"";
        $user = User::create($details);
        
        //auth()->login($user);
        if(request()->ajax())
        {
            return response()->json(['success'=>true,"msg"=>"Registered successfully, please login to continue."],200);
        }

        return redirect()->to('/');
    }
    public function sign_in(Request $request)
    {
        $credentials = $request->validate([
            'email' => ['required', 'email'],
            'password' => ['required'],
        ]);
 
        if (Auth::attempt($credentials)) {
            $request->session()->regenerate();
            
            if($request->ajax())
            {
                return response()->json(['success'=>true,"msg"=>"Logged in successfully"],200);
            }

            return redirect('/');
        }

        if($request->ajax())
        {
            return response()->json(['success'=>false,"msg"=>"The provided credentials do not match our records."],200);
        }
        return back()->withErrors([
            'email' => 'The provided credentials do not match our records.',
        ])->onlyInput('email');
    }
    public function logout(Request $request)
    {
        Auth::logout();
    
        $request->session()->invalidate();
    
        $request->session()->regenerateToken();
    
        return redirect('/');
    }
    public function matched_users(Request $request)
    {
        if(Auth::user())
        {
            $users = new User;
            $users = $users->where('id','!=',Auth::id());
            if(Auth::user()->gender == 'male')
                $users = $users->where('gender','female');
            else if(Auth::user()->gender == 'female')
                $users = $users->where('gender','male');

            // if(Auth::user()->pre_manglik == 0)
            // {
            //     $users = $users->where('is_manglik',0);
            // }
            // else if(Auth::user()->pre_manglik == 1){
            //     $users = $users->where('is_manglik',1);
            // }
        
            // if(Auth::user()->pre_family_type != null && Auth::user()->pre_family_type != '')
            // {
            //     $family_type_array = explode(",",Auth::user()->pre_family_type);
            //     $users = $users->whereIn('family_type',$family_type_array);
            // }
            // if(Auth::user()->pre_occupation != null && Auth::user()->pre_occupation != '')
            // {
            //     $pre_occupation_array = explode(",",Auth::user()->pre_occupation);
            //     $users = $users->whereIn('occupation',$pre_occupation_array);
            // }
            
            // $users = $users->where(function($query){
            //     $query->whereBetween('annual_income', [Auth::user()->pre_expected_income_min, Auth::user()->pre_expected_income_max])->orWhere('annual_income','>=',Auth::user()->pre_expected_income_max);
            // });
            
            $users = $users->paginate(10);
            if($users->count() > 0)
            {
                $returnHTML = view('matched_users')->with('users', $users)->render();
                return response()->json(['success' => true, 'html'=>$returnHTML,'users'=>$users]);
            }
            else
                return response()->json(['success' => true, 'html'=>""]);
        }
        else{
            return response()->json(['success' => true, 'html'=>""]);
        }
    }
}

