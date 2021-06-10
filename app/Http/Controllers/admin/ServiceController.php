<?php
namespace App\Http\Controllers\admin;
use App\Http\Controllers\Controller;
use App\Home_slider;
use App\User;
use App\Service;
use Auth;
use Illuminate\Http\Request;
class ServiceController extends Controller

{

    public function __construct()

    {

        $this->middleware('auth');

    }

    //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

    public function index()

    {

        if (Auth()->user()->type == 0) {

            $data['slider_list'] = Home_slider::all();

            return view('admin.service_add_view',$data);

        }

    }

    //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

   public function service_list_view()

    {

        if (Auth()->user()->type == 0) {

            $data['service_list'] = Service::all();

           
            return view('admin.service_list_view',$data);

        }

    }

    //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

    public function service_edit_view($id)

    {

        if (Auth()->user()->type == 0) {

            $data['single_info'] = Service::find($id);

            return view('admin.service_edit_view',$data);

        }

    }

    //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

    public function service_add_post(Request $request)

    {

        if (Auth()->user()->type == 0) {

            $request->validate([
                'title'     => 'required',
               'short_description'     => 'required',
                'long_description'     => 'required',
                'picture'     => 'required | mimes:jpg,jpeg,png',
                

            ]);

            //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ +

            $image           = $request->file('picture');

            $file_document   = time() . '.' . $image->getClientOriginalExtension();

            $destinationPath = public_path('/upload/service');

            //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

            if ($image->move($destinationPath, $file_document)) {

                $service = new Service;

                //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

               
                $service->title     = $request->title;
                $service->short_description     = $request->short_description;
                $service->long_description     = $request->long_description;
                $service->icon     = $file_document;

                

                //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

                if ($service->save()) {

                    return redirect()->back()->with('success', 'Data created successfully.');

                } else {

                    return redirect()->back()->with('error', 'Opps!! sorry!! problem occurred.Please try again!');

                }

            } else {

                return redirect()->back()->with('error', 'Opps!! File Not Upload.Please try again!');

            }

        }

    }

    //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

    public function service_update_post(Request $request)

    {

        if (Auth()->user()->type == 0) {

       

                $request->validate([

                    'title'     => 'required',
                'short_description'     => 'required',
                'long_description'     => 'required',

                    'id_id'                => 'required',

                ]);

              if ($request->hasFile('picture')) {
                $image_cover    = $request->file('picture');
                $file_extension = $image_cover->getClientOriginalExtension();
                if (($file_extension == 'jpg') || ($file_extension == 'jpeg') || ($file_extension == 'png') || ($file_extension == 'gif')) {
                    $file_document   = time() . '.' . $image_cover->getClientOriginalExtension();
                    $destinationPath_cover = public_path('/upload/service');
                    $image_cover->move($destinationPath_cover, $file_document);
                } else {
                    return redirect()->back()->with('error', 'Opps!! File Not Upload.Please try again!');
                }
            }

            //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ +

            $service = Service::find($request->id_id);

            //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

          
                    $service->title     = $request->title;
                $service->short_description     = $request->short_description;
                $service->long_description     = $request->long_description;

                 if ($request->hasFile('picture')) {
                $service->icon = $file_document;
            }

                    //+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

                    if ($service->save()) {

                        return redirect()->back()->with('success', 'Data updated successfully.');

                    } else {

                        return redirect()->back()->with('error', 'Opps!! sorry!! problem occurred.Please try again!');

                    }

                

            

        }

    }

    //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

    public function service_destroy($id)

    {

        if (Auth()->user()->type == 0 && $id) {

            $destroy = Service::destroy($id);

            return redirect()->back()->with('success', 'Data deleted successfully.');

        }

    }



   

}

