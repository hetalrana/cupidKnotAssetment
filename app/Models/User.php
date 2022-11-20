<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use Auth;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'first_name',
        'last_name',
        'email',
        'password',
        'email_verified_at',
        'date_of_birth',
        'gender',
        'annual_income',
        'occupation',
        'family_type',
        'is_manglik',
        'pre_expected_income_min',
        'pre_expected_income_max',
        'pre_occupation',
        'pre_family_type',
        'pre_manglik',
        'remember_token'
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    protected $appends = array('percentage');

    public function getPercentageAttribute()
    {
        //Auth::user()->pre_manglik
        // Auth::user()->pre_occupation
        // Auth::user()->pre_family_type
        $percentage = 0;
        if(Auth::user() && (($this->annual_income >= Auth::user()->pre_expected_income_min && $this->annual_income <= Auth::user()->pre_expected_income_max) || $this->annual_income >= Auth::user()->pre_expected_income_max))       
        {
            $percentage = $percentage + 25;
        }
        if(Auth::user() && Auth::user()->pre_family_type != null && Auth::user()->pre_family_type != '')
        {
            $family_type_array = explode(",",Auth::user()->pre_family_type);
            if(in_array($this->family_type,$family_type_array)){
                $percentage = $percentage + 25;
            }
        }
        if(Auth::user() && Auth::user()->pre_occupation != null && Auth::user()->pre_occupation != '')
        {
            $pre_occupation_array = explode(",",Auth::user()->pre_occupation);
            if(in_array($this->occupation,$pre_occupation_array)){
                $percentage = $percentage + 25;
            }
        }
        if(Auth::user() && Auth::user()->pre_manglik !=2 && Auth::user()->pre_manglik == $this->is_manglik)
        {
            $percentage = $percentage + 25;
        }
        else if(Auth::user() && Auth::user()->pre_manglik ==2)
        {
            $percentage = $percentage + 25;
        }
        return $percentage;  
    }

}
