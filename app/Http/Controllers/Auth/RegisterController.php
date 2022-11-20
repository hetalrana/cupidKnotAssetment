<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use App\Models\User;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use Auth;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    // public function showRegistrationForm()
    // {
    //     //return view('register');
    // }

    // public function register(Request $request)
    // {
    //     $this->validator($request->all())->validate();
  
    //     $this->create($request->all());
  
    //     return redirect("/");
    // }
    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'first_name' => ['required', 'string', 'max:191'],
            'last_name' => ['string', 'max:191'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
            'date_of_birth' => ['required'],
            'gender' => ['required'],
            'annual_income' => ['required'],
            'occupation' => ['required'],
            'family_type' => ['required'],
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\Models\User
     */
    protected function create(array $data)
    {
        //print_r($data);die;
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
        $details['pre_occupation'] = array_key_exists("partner_occupation",$data)?serialize($data['partner_occupation']):"";
        $details['pre_family_type'] = array_key_exists("partner_family_type",$data)?serialize($data['partner_family_type']):"";
        $details['pre_manglik'] = array_key_exists("is_manglik_partner",$data)?serialize($data['is_manglik_partner']):"";
        return User::create($details);
    }

}
