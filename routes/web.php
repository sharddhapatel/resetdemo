<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\homecontroller;
use App\Http\Controllers\Auth\forgetpasswordcontroller;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });
route::get('rejestration', [homecontroller::class, 'rejestration']);
route::post('insertrejestration', [homecontroller::class, 'insertrejestration']);
route::get('getdis/{id}',[homecontroller::class,'getdis']);
// route::get('getcity/{id}',[homecontroller::class,'getcity']);
route::get('login',[homecontroller::class,'login']);
route::post('insertlogin',[homecontroller::class,'insertlogin']);
route::get('home',[homecontroller::class,'home']);
route::get('editrejestration/{id}',[homecontroller::class,'editrejester']);
route::post('editrejesters',[homecontroller::class,'editrejesters']);
route::get('deleterejester/{id}',[homecontroller::class,'deleterejester']);


route::get('forget',[homecontroller::class,'forget']);
route::post('resetlink',[homecontroller::class,'resetlink']);
route::get('reset/{token}',[homecontroller::class,'reset']);
route::post('resendpassword',[homecontroller::class,'resendpassword']);


Route::get('phone-auth', [homecontroller::class, 'index']);
// Route::get('forget-password', [forgetpasswordcontroller::class, 'ForgetPassword'])->name('ForgetPasswordGet');
// Route::post('forget-password', [forgetpasswordcontroller::class, 'ForgetPasswordStore'])->name('ForgetPasswordPost');
// Route::get('reset-password/{token}', [forgetpasswordcontroller::class, 'ResetPassword'])->name('ResetPasswordGet');
// Route::post('reset-password', [forgetpasswordcontroller::class, 'ResetPasswordStore'])->name('ResetPasswordPost');