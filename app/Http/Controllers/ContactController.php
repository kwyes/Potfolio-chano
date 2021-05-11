<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\ContactUs;
use Mail;

class ContactController extends Controller
{

    public function send(Request $request) {
        $subject = "From Chano.ca Contact us";
        \Mail::send('contact_email', array(
            'name' => $request->get('name'),
            'email' => $request->get('email'),
            'subject' => $subject,
            'user_query' => $request->get('message'),
        ), function($message) use ($request){
            $message->from($request->email);
            $message->to('kwyes2@hotmail.com');
        });      

      return back()->with('success', 'Thanks for contacting!');
    }

    
}
