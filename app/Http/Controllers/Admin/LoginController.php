<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
     /**
     * Show the user form login
     *
     * @return \Illuminate\Http\Response
     */
    public function showLoginForm()
    {
        return view('admin.login');
    }

    /**
     * Handle login
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function login(Request $request)
    {
        try {
            $result = Auth::guard('admin')->attempt(['email' => $request->input('email'), 'password' => $request->input('password')], true);
            if ($result) {
                return redirect()->route('dashboard');
            } else {
                $validator = \Validator::make([], []);
                $validator->errors()->add('email', 'Email/Mật khẩu không đúng');

                return redirect()->back()->withErrors($validator)->withInput();
            }
        } catch (\Throwable $e) {
            \Log::info($e->getMessage());
        }
    }

    /**
     * Logout
     *
     * @return \Illuminate\Http\Response
     */
    public function logout()
    {
        Auth::guard('admin')->logout();
        return redirect()->route('admin.form.login');
    }
}
