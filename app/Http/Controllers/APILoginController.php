<?php

namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use JWTFactory; 
use JWTAuth; 
use Validator; 
use Response; 
use App\User; 

class APILoginController extends Controller
{
    //
    public function login(Request $request){
        $validator = Validator::make($request->all() , [
            'email' => 'required|string|email|max:255', 
            'password' => 'required',  
                    ]); 
                    if ($validator->fails()){
                        return response()->json($validator->errors());         
                }

         $credentials = $request->only('email' , 'password'); 
         try{
            if (! $token = JWTAuth::attempt($credentials))
            return response()->json(['error' => 'invalid Username and Password']);         

         
         }
         catch(JWTException $e){
            return response()->json(['error' => 'Cloud not Create token']);         


         }
         return Response::json(compact('token'));
    }
}
