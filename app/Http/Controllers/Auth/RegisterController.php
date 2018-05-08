<?php

namespace App\Http\Controllers\Auth;

use App\User;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Validator;
use Illuminate\Foundation\Auth\RegistersUsers;

class RegisterController extends Controller {
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
    protected $redirectTo = '/home';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct() {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data) {
//        dd($data);
        $messages = [
            'password.regex' => 'Password should have length of 8 character, 1 Uppercase, 1 Lowercase, 1 Number.',
            'g-recaptcha-response.required' => 'Please select captcha.',
        ];
        return Validator::make($data, [
//        $validator = Validator::make($data, [
                    'name' => 'required|string|max:255',
                    'email' => 'required|string|email|max:255|unique:users',
                    'password' => 'required|max:15|min:8|confirmed|regex:/^(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{8,15}$/',
                    'password_confirmation' => 'required|same:password',
                    'mobile_no' => 'required|digits:10|numeric',
                    'company_name' => 'required|string|max:30',
                    'g-recaptcha-response' => 'required',
                        ], $messages);

//        dd($validator->errors());
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(array $data) {
        return User::create([
                    'name' => $data['name'],
                    'email' => $data['email'],
                    'password' => bcrypt($data['password']),
                    'mobile_no' => $data['mobile_no'],
                    'company_name' => $data['company_name'],
        ]);
    }

}
