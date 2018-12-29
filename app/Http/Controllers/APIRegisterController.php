<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use JWTFactory; 
use JWTAuth; 
use Validator; 
use App\User; 
class APIRegisterController extends Controller
{
    //
    public function register(Request $request){
        $validator = Validator::make($request->all() , [
'email' => 'required|string|email|max:255',
'name' => 'required', 
'password' => 'required',  
        ]); 
        if ($validator->fails()){
            return response()->json($validator->errors());         
    }
    User::create([
 'name' => $request->get('name'), 
 'email' => $request->get('email'), 
 'password' => bcrypt($request->get('password'))  
    ]);
    $user = User::first(); 
    $token = JWTAuth::fromUser($user); 
    return response()->json(compact('token')); 
}
}