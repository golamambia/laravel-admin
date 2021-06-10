<?php

namespace App\Http\Controllers\admin;
use App\Http\Controllers\Controller;

use Auth;
use DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class DashboardController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    public function index()
    {
        if (Auth()->user()->type == 0) {
            return view('admin.home');
        } elseif (Auth()->user()->type == 1) {
            return view('home');
        } elseif (Auth()->user()->type == 2) {
            return view('vender.home');
        }
    }
    //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    public function admin_setting()
    {
        if (Auth()->user()->type == 0) {
            return view('admin.admin_setting');
        }
        if (Auth()->user()->type == 2) {
            return view('vender.admin_setting');
        }
    }
    //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    public function update_admin_details(Request $request)
    {
        if ((Auth()->user()->type == 0) || (Auth()->user()->type == 2)) {
            $request->validate([
                'name'  => 'required',
                'email' => 'required|email',
            ]);
            //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
            DB::table('users')->where('id', Auth()->user()->id)->update(['name' => $request->name, 'email' => $request->email]);
            //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
            return redirect()->back()->with('success', 'Details updated successfully.');
        }
    }
    //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    public function update_admin_password(Request $request)
    {
        if ((Auth()->user()->type == 0) || (Auth()->user()->type == 2)) {
            $request->validate([
                'old_password'         => 'required',
                'new_password'         => 'required',
                'confirm_new_password' => 'required|same:new_password',
            ]);
            //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
            if (Hash::check($request->old_password, Auth()->user()->password)) {
                //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                DB::table('users')->where('id', Auth()->user()->id)->update(['password' => Hash::make($request->new_password)]);
                //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                return redirect()->back()->with('success', 'Password updated successfully.');
            } else {
                return redirect()->back()->with('error', 'Sorry!! password update fail.Old password didnot match.');
            }
        }
    }
    //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
}
