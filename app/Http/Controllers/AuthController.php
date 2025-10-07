<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Session;
use App\Models\User;

class AuthController extends Controller
{

    public function index()
    {
        if (Auth::check()) {
            return redirect()->route('dashboard');
        } else {
            return view('auth.login');
        }
    }

    public function user_login() {
        if (Auth::check()) {
            return redirect()->route('customer-dashboard');
        } else {
            return view('auth.user_login');
        }
    }

    public function user_register() {
        if (Auth::check()) {
            return redirect()->route('customer-dashboard');
        } else {
            return view('auth.user_register');
        }
    }


    public function register(Request $request)
    {
        //var_dump($request);die();
        $inputs = $request->validate([
            'first_name' => 'required|string',
            'last_name' => 'required|string',
            'email' => 'required|string|unique:users,email',
            'username' => 'required|string|unique:users,username',
            'password' => 'required|string|confirmed'
        ]);

        $user = User::create([
            'first_name' => $inputs['first_name'],
            'last_name' => $inputs['first_name'],
            'email' => $inputs['email'],
            'username' => $inputs['username'],
            'password' => bcrypt($inputs['password'])
        ]);
        $token = $user->createToken('gpleCRMToken')->plainTextToken;

        $response = [
            'user' => $user,
            'token' => $token
        ];
        return response($response, 201);
    }

    public function postLogin_backup(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);

        // Attempt to log in with the provided credentials
        if (Auth::attempt($request->only('email', 'password'), $request->has('remember'))) {
            // Redirect to a specific route or homepage on successful login
            return redirect()->intended('/dashboard');
        }

        // If authentication fails, redirect back with errors
        return redirect()->back()->withErrors(['email' => 'The provided credentials do not match our records.']);
    }

    public function postLogin(Request $request)
    {
        //Check user is already logged in
        //dd($request);die();
        if (session()->has('users')) {
            return redirect('dashboard')->with('success', 'You are already logged in.');
        }

        $this->validate($request, [
            'email' => 'required',
            'password' => 'required',
        ]);

        //If the user is inactive
        $user = User::where('email', $request->email)->where('status', 1)->where('user_type', '!=', 'customer')->first();
        if (empty($user)) {
            return redirect("login")->with('error', 'You are an inactive user');
        }

        $credentials = $request->only('email', 'password');

        if (Auth::attempt($credentials)) {
            session()->regenerate();
            session()->put('users', Auth::user());
            return redirect()->intended('dashboard')->with('success', 'You have successfully logged in.');
        }
        //If the email is correct but password is wrong
        $user = User::where('email', $request->email)->first();
        if (empty($user)) {
            return redirect("login")->with('error', 'Invalid Username.');
        }

        return redirect("login")->with('error', 'Invalid password.');
    }

    public function logout(Request $request)
    {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect('login')->with('success', 'You have successfully logged out.');
    }

    public function postUserRegister(Request $request) {
        // dd($request->all());
        $inputs = $request->validate([
            'first_name' => 'required|string',
            'last_name' => 'required|string',
            // 'email' => 'required|string|unique:users,email',
            'phone_number' => ['required', 'regex:/^(?:\+8801|01)[3-9]\d{8}$/', 'unique:users,phone_number'],
            'password' => 'required|min:6'
        ]);

        $user = User::create([
            'first_name' => $inputs['first_name'],
            'last_name' => $inputs['first_name'],
            // 'email' => $inputs['email'],
            'phone_number' => $inputs['phone_number'],
            'password' => bcrypt($inputs['password']),
            'user_type' => 'customer',
            'status' => 1
        ]);
        
        if($user) {
            return redirect()->route('user-login')->with('success', 'Registration done successfully. Please login to continue');
        }
        return redirect()->route('user-register')->with('error', 'Registration Failed, please try again');

        $response = [
            'user' => $user,
            'token' => $token
        ];
        return response($response, 201);
    }

    public function postUserLogin(Request $request)
    {

        //Check user is already logged in
        // dd(session()->has('customers'));die();
        if (session()->has('customers')) {
            return redirect('customer-dashboard')->with('success', 'You are already logged in.');
        }

        $this->validate($request, [
            'phone_number' => 'required',
            'password' => 'required',
        ]);

        //If the user is inactive
        $user = User::where('phone_number', $request->phone_number)->where('status', 1)->where('user_type', 'customer')->first();
        if (empty($user)) {
            return redirect("user-login")->with('error', 'Invalid data, you are not an user');
        }

        $credentials = $request->only('phone_number', 'password');

        if (Auth::attempt($credentials)) {
            session()->regenerate();
            session()->put('customers', Auth::user());
            return redirect()->intended('customer-dashboard')->with('success', 'You have successfully logged in.');
        }
        //If the phone_number is correct but password is wrong
        $user = User::where('phone_number', $request->phone_number)->first();
        if (empty($user)) {
            return redirect("user-login")->with('error', 'Invalid Username.');
        }

        return redirect("user-login")->with('error', 'Invalid password.');
    }
}
