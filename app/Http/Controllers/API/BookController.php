<?php

namespace App\Http\Controllers\API;
use App\Book; 
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Controllers\API\BaseController as BaseController;
use Validator; 
class BookController extends BaseController
{
    //
    public function index(){
        $book = Book::all(); 
        return $this->sendResponse($book->toArray() , 'Book read Successfully');
    }
    public function store(Request $request ){
        $input = $request->all(); 
        $validator = Validator::make($input , [
'name' => 'required' ,
'details' => 'required'
        ]);
        if ($validator->fails()){
            return $this->sendError('error validation' , $validator->errors()); 
        }
        $book = Book::create($input); 
        return $this->sendResponse($book->toArray() , 'Book Created Succesfully ');
    }
    public function show($id){
        $book = Book::find($id); 
        if (is_null($book)){
            return $this->sendError('Book not Found'); 
        }
        return $this->sendResponse($book->toArray() , 'Book read Successfully');
    }
    public function update(Request $request , Book $book ){
        $input = $request->all(); 
        $validator = Validator::make($input , [
'name' => 'required' ,
'details' => 'required'
        ]);
        if ($validator->fails()){
            return $this->sendError('error validation' , $validator->errors()); 
        }
        $book->name = $input['name'];
        $book->details = $input['details'];
        $book->save(); 
        return $this->sendResponse($book->toArray() , 'Book Updated Succesfully ');

    }
    public function destroy (Book $book){
        $book->delete(); 
        return $this->sendResponse($book->toArray() , 'Book Deleted Succesfully ');

    }
}
