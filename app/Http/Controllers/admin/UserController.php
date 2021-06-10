<?php

namespace App\Http\Controllers\admin;
use App\Http\Controllers\Controller;
use App\User;
use Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    public function index()
    {
        if (Auth()->user()->type == 0) {
            $list = User::all();
            return view('admin.user_list', compact('list'));
        }
    }
    //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    public function user_list_view()
    {
        if (Auth()->user()->type == 0) {
            $list = User::all();
            return view('admin.user_list', compact('list'));
        }
    }
    //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    public function user_addd_view()
    {
        if (Auth()->user()->type == 0) {
            return view('admin.user_add');
        }
    }
    //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    public function user_update_view($id)
    {
        if (Auth()->user()->type == 0) {
            $list = User::find($id);
            return view('admin.user_update', compact('list'));
        }
    }
    //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    public function user_addd(Request $request)
    {
        if (Auth()->user()->type == 0) {

            $request->validate([
                'name'          => 'required',
                'dob'           => 'required',
                'gender'        => 'required',
                'email'         => 'required|email',
                'mobile_number' => 'required',
                'password'      => 'required',
            ]);
            //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ +
            $u = new User;
            //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ +
            $u->name          = $request->name;
            $u->dob           = $request->dob;
            $u->gender        = $request->gender;
            $u->email         = $request->email;
            $u->mobile_number = $request->mobile_number;
            $u->password      = Hash::make($request->password);
            $u->type          = 1;
            //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ +
            if ($u->save()) {
                return redirect()->back()->with('success', 'Data created successfully.');
            } else {
                return redirect()->back()->with('error', 'Opps!! sorry!! problem occurred.Please try again!');
            }
        }
    }
    //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    public function user_update(Request $request)
    {
        if (Auth()->user()->type == 0) {
            $request->validate([
                'name'          => 'required',
                'dob'           => 'required',
                'gender'        => 'required',
                'email'         => 'required|email',
                'mobile_number' => 'required',
                'id_id'         => 'required',
            ]);
            //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ +
            $u = User::find($request->id_id);
            //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ +
            $u->name          = $request->name;
            $u->dob           = $request->dob;
            $u->gender        = $request->gender;
            $u->email         = $request->email;
            $u->mobile_number = $request->mobile_number;
            if ($request->password) {
                $u->password = Hash::make($request->password);
            }
            //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ +
            if ($u->save()) {
                return redirect()->back()->with('success', 'Data updated successfully.');
            } else {
                return redirect()->back()->with('error', 'Opps!! sorry!! problem occurred.Please try again!');
            }
        }
    }
    //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    public function user_destroy($id)
    {
        if (Auth()->user()->type == 0 && $id) {
            $destroy = User::destroy($id);
            return redirect()->back()->with('success', 'Data deleted successfully.');
        }
    }
}
