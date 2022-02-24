<?php

namespace App\Http\Controllers;
use App\Models\People;
use Illuminate\Support\Facades\Auth;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Http\Request;
use RealRashid\SweetAlert\Facades\Alert;

class LoginController extends BaseController
{
    public function login(){
        return view('login.login');
    }

    public function loginpost(Request $request){

        if (Auth::attempt(['email' => $request->email, 'password' => $request->password]))
        {
            Alert::alert('Başarılı', 'Giriş yaptınız...', 'success');
            if (Auth::user()->permission_level == 'admin') {
                return redirect()->intended(route('index'));
            } else {
                return redirect()->intended(route('login'));
            }
        } else {
            Alert::alert('Hata', 'E-Mail veya şifre hatalı...', 'error');
            return redirect()->route('login');
       }
    }

    public function logout(){
        Auth::logout();
        Alert::alert('Başarılı', 'Çıkış yaptınız...', 'success');
        return redirect()->route('login');
    }
}
