<?php

namespace App\Http\Controllers;

use App\Models\GlobalSetting;
use App\Models\NavigationItems;
use App\Models\NavigationVideoItems;
use App\Models\Navigation;
use Illuminate\Http\Request;
use App\Job;





class HomeController extends Controller
{
    public function index()
    {

        $menus = Navigation::query()->where('nav_category', 'Main')->where('page_type', '!=', 'Job')->where('page_type', '!=', 'Photo Gallery')->where('page_type', '!=', 'Notice')->where('parent_page_id', 0)->where('page_status', '1')->orderBy('position', 'ASC')->get();



        //return $menus;
        //return $menus->first()->submenus;
        $jobs = Navigation::query()->where('page_type', 'Job')->latest()->paginate(3);
        // return $jobs;


        // job destination
        $job_destination = Navigation::query()->where('page_type', 'Destination')->latest()->paginate(3);
        // return $job_destination;


        if (Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%about%")->where('page_type', 'Group')->latest()->first() != null) {
            $about_id = Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%about%")->where('page_type', 'Group')->latest()->first()->id;
            $About = Navigation::query()->where('parent_page_id', $about_id)->latest()->first();
        } else {
            $About = null;
        }

        // services
        if (Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%services%")->where('page_type', 'Group')->latest()->first() != null) {
            $about_id = Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%services%")->where('page_type', 'Group')->latest()->first()->id;
            $services = Navigation::query()->where('parent_page_id', $about_id)->get();
        } else {
            $services = null;
        }

        if(Navigation::query()->where('nav_category','Home')->where('nav_name', 'LIKE', "%newsbanner%")->where('page_type','Group')->latest()->first()!=null){
            $newsbanner_id = Navigation::query()->where('nav_category','Home')->where('nav_name', 'LIKE', "%newsbanner%")->where('page_type','Group')->latest()->first()->id;
            $newsbanner = Navigation::query()->where('parent_page_id',$newsbanner_id)->latest()->get();
            //return $partners;
        }
        else{
            $newsbanner = null;
        }


        if (Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%partner%")->where('page_type', 'Group')->latest()->first() != null) {
            $partners_id = Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%partner%")->where('page_type', 'Group')->latest()->first()->id;
            $partners = Navigation::query()->where('parent_page_id', $partners_id)->latest()->get();
            // return $partners_id;


        } else {
            $partners = null;
        }

        if (Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%statistic%")->where('page_type', 'Group')->latest()->first() != null) {
            $statistics_id = Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%statistic%")->where('page_type', 'Group')->latest()->first()->id;
            $statistics = Navigation::query()->where('parent_page_id', $statistics_id)->latest()->get();
        } else {
            $statistics = null;
        }
        if (Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%testimonial%")->where('page_type', 'Group')->latest()->first() != null) {
            $testimonial_id = Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%testimonial%")->where('page_type', 'Group')->latest()->first()->id;
            $testimonial = Navigation::query()->where('parent_page_id', $testimonial_id)->latest()->get()->take(3);
        } else {
            $testimonial = [];
        }
        // return $testimonial;
        if (Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%banner%")->where('page_type', 'Group')->latest()->first() != null) {
            $banner_id = Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%banner%")->where('page_type', 'Group')->latest()->first()->id;
            $banners = Navigation::query()->where('parent_page_id', $banner_id)->latest()->get();
        } else {
            $banners = null;
        }
        if (Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%slider%")->where('page_type', 'Group')->latest()->first() != null) {
            $slider_id = Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%slider%")->where('page_type', 'Group')->latest()->first()->id;
            $sliders = Navigation::query()->where('parent_page_id', $slider_id)->latest()->get();
            // return $sliders;
        } else {
            $sliders = null;
        }
        if (Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%misson%")->where('page_type', 'Group')->latest()->first() != null) {
            $misson_id = Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%misson%")->where('page_type', 'Group')->latest()->first()->id;
            $missons = Navigation::query()->where('parent_page_id', $misson_id)->latest()->get();
            //return $misson;
        } else {
            $missons = null;
        }
        if (Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%message%")->where('page_type', 'Group')->latest()->first() != null) {
            $message_id = Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%message%")->where('page_type', 'Group')->latest()->first()->id;
            $message = Navigation::query()->where('parent_page_id', $message_id)->latest()->first();
            // return $message;
        } else {
            $message = null;
        }
        if (Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%process%")->where('page_type', 'Group')->latest()->first() != null) {
            $process_id = Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%process%")->where('page_type', 'Group')->latest()->first()->id;
            $process = Navigation::query()->where('parent_page_id', $process_id)->orderBy('position', 'ASC')->get();
            // return $process;
        } else {
            $process = null;
        }
        //return $misson;
        $job_categories = Navigation::all()->where('nav_category', 'Main')->where('page_type', 'Group')->where('banner_image', '!=', null)->take(6);
        //sreturn $job_categories;
        $global_setting = GlobalSetting::all()->first();
        //return $missons;       
        return view("website.index")->with(['newsbanner'=>$newsbanner,'testimonial' => $testimonial, 'statistics' => $statistics, 'partners' => $partners, 'jobs' => $jobs, 'banners' => $banners, 'about' => $About, 'menus' => $menus, 'global_setting' => $global_setting, 'sliders' => $sliders, 'missons' => $missons,  'message' => $message, 'process' => $process, 'services' => $services, 'job_destination' => $job_destination,]);
    }





    public function category($menu)
    {
        //return $menu." this is category";
        $menus = Navigation::query()->where('nav_category', 'Main')->where('page_type', '!=', 'Job')->where('page_type', '!=', 'Photo Gallery')->where('page_type', '!=', 'Notice')->where('parent_page_id', 0)->where('page_status', '1')->orderBy('position', 'ASC')->get();
        //return $menus->first()->submenus;
        $jobs = Navigation::query()->where('page_type', 'Job')->latest()->get();
        if (Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%about%")->where('page_type', 'Group')->latest()->first() != null) {
            $about_id = Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%about%")->where('page_type', 'Group')->latest()->first()->id;
            $About = Navigation::query()->where('parent_page_id', $about_id)->latest()->first();
        } else {
            $About = null;
        }
        if (Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%banner%")->where('page_type', 'Group')->latest()->first() != null) {
            $banner_id = Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%banner%")->where('page_type', 'Group')->latest()->first()->id;
            $banners = Navigation::query()->where('parent_page_id', $banner_id)->latest()->get();
        } else {
            $banners = null;
        }
        if (Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%partner%")->where('page_type', 'Group')->latest()->first() != null) {
            $partners_id = Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%partner%")->where('page_type', 'Group')->latest()->first()->id;
            $partners = Navigation::query()->where('parent_page_id', $partners_id)->latest()->get();
            //return $partners;
        } else {
            $partners = null;
        }
        if (Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%message%")->where('page_type', 'Group')->latest()->first() != null) {
            $message_id = Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%message%")->where('page_type', 'Group')->latest()->first()->id;
            $message = Navigation::query()->where('parent_page_id', $message_id)->latest()->first();
        } else {
            $message = null;
        }
        if (Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%slider%")->where('page_type', 'Group')->latest()->first() != null) {
            $slider_id = Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%slider%")->where('page_type', 'Group')->latest()->first()->id;
            $sliders = Navigation::query()->where('parent_page_id', $slider_id)->latest()->get();
        } else {
            $sliders = null;
        }
        if (Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%misson%")->where('page_type', 'Group')->latest()->first() != null) {
            $misson_id = Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%misson%")->where('page_type', 'Group')->latest()->first()->id;
            $missons = Navigation::query()->where('parent_page_id', $misson_id)->latest()->get();
            //return $misson;
        } else {
            $missons = null;
        }


        if (Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%message%")->where('page_type', 'Group')->latest()->first() != null) {
            $message_id = Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%message%")->where('page_type', 'Group')->latest()->first()->id;
            $message = Navigation::query()->where('parent_page_id', $message_id)->latest()->first();
        } else {
            $message = null;
        }




        if (Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%process%")->where('page_type', 'Group')->latest()->first() != null) {
            $process_id = Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%process%")->where('page_type', 'Group')->latest()->first()->id;
            $process = Navigation::query()->where('parent_page_id', $process_id)->latest()->get();
        } else {
            $process = null;
        }
        //return $misson;
        $job_categories = Navigation::all()->where('nav_category', 'Main')->where('page_type', 'Group')->where('banner_image', '!=', null);
        //sreturn $job_categories;
        $global_setting = GlobalSetting::all()->first();
        //return view("website.index")->with(['jobs'=>$jobs,'banners'=>$banners,'about'=>$About,'menus'=>$menus,'global_setting'=>$global_setting,'sliders'=>$sliders,'missons'=>$missons,'job_categories'=>$job_categories,'message'=>$message,'process'=>$process]);
        if (Navigation::all()->where('nav_name', $menu)->count() > 0) {
            $job_id = Navigation::all()->where('nav_name', $menu)->first()->id;
            $jobs = Navigation::query()->where('parent_page_id', $job_id)->where('page_type', 'Job')->orderBy('created_at', 'desc')->get();
        } else {
            $jobs = null;
        }
        $slug_detail = Navigation::all()->where('nav_name', $menu)->first();
        // return $slug_detail->childs;
        //
        if (Navigation::all()->where('nav_name', $menu)->count() > 0) {
            //$normal_notice_page = Navigation::all()->where('nav_name',$slug)->first();
            $category_id = Navigation::all()->where('nav_name', $menu)->first()->id;

            if (Navigation::all()->where('parent_page_id', $category_id)->count() > 0) {
                $category_type = Navigation::all()->where('parent_page_id', $category_id)->first()->page_type;
            } else {
                $category_type = Navigation::all()->where('nav_name', $menu)->where('page_type', '!=', 'Notice')->first()->page_type;
            }
        } else {
            $category_type = null;
        }

        if ($category_type == "Photo Gallery") {
            //return "return to page gallary";
            $photos = Navigation::query()->where('parent_page_id', $category_id)->where('page_status', '1')->latest()->get();
            return view("website.gallery")->with(['partners', 'photos' => $photos, 'jobs' => $jobs, 'menus' => $menus, 'sliders' => $sliders, 'about' => $About, 'global_setting' => $global_setting, 'slug_detail' => $slug_detail]);
        } elseif ($category_type == "Video Gallery") {
            return "return to page gallary";
            $photos = Navigation::query()->where('parent_page_id', $category_id)->where('page_status', '1')->latest()->get();
            return view("website.gallery")->with(['photos' => $photos, 'jobs' => $jobs, 'menus' => $menus, 'sliders' => $sliders, 'about' => $About, 'global_setting' => $global_setting, 'slug_detail' => $slug_detail]);
        } elseif ($category_type == "Job") {
            $slug_detail = Navigation::find($category_id);
            return $slug_detail;

            return view('website.jobsCategory')->with(['jobs' => $jobs, 'menus' => $menus, 'sliders' => $sliders, 'about' => $About, 'global_setting' => $global_setting, 'slug_detail' => $slug_detail]);
        } elseif ($category_type == "Notice") {
            // return "return to view Notice";
            $notices = Navigation::query()->where('parent_page_id', $category_id)->latest()->get();
            $notice_heading = Navigation::find($category_id)->first();
            // return $notice_heading;
            //return $notice_heading;
            return view("website.notice")->with(['notice_heading' => $notice_heading, 'notices' => $notices, 'jobs' => $jobs, 'menus' => $menus, 'sliders' => $sliders, 'about' => $About, 'global_setting' => $global_setting, 'slug_detail' => $slug_detail]);
        } elseif ($category_type == "Normal") {
            $normal = Navigation::find($category_id);
            // return $normal;
            return view("website.normal")->with(['message' => $message, 'normal' => $normal, 'jobs' => $jobs, 'menus' => $menus, 'sliders' => $sliders, 'about' => $About, 'global_setting' => $global_setting, 'slug_detail' => $slug_detail]);
        } elseif ($category_type == "Destination") {
            $slug_detail = Navigation::find($category_id);
            $destination_data = $slug_detail->destination_data;
            // return $slug_detail;



            return view("website.job-destination")->with(['message' => $message, 'slug_detail' => $slug_detail, 'jobs' => $jobs, 'menus' => $menus, 'sliders' => $sliders, 'about' => $About, 'global_setting' => $global_setting, 'slug_detail' => $slug_detail, "destination_data" => $destination_data]);
        } elseif ($category_type == "client") {
            //return $category_id;
            $client = Navigation::find($category_id);
            // return $client;
            return view("website.client")->with(['message' => $message, 'client' => $client, 'jobs' => $jobs, 'menus' => $menus, 'sliders' => $sliders, 'about' => $About, 'global_setting' => $global_setting, 'slug_detail' => $slug_detail]);
        } elseif ($category_type == "Recruitment") {

            $recruitment = Navigation::find($category_id);
            $recruitment_chid =  $recruitment->child_data;
            // return $recruitment_chid;


            return view("website.recruitment")->with(['message' => $message, 'recruitment' => $recruitment, 'jobs' => $jobs, 'menus' => $menus, 'sliders' => $sliders, 'about' => $About, 'global_setting' => $global_setting, 'slug_detail' => $slug_detail, 'recruitment_chid' => $recruitment_chid,]);
        } else {

            if ($jobs != null) {
                // return "dfgdfg";
                $all_job_cat = Navigation::find($category_id);
                $all_job_childs = $slug_detail->childs;

                return view("website.jobsCategory")->with(['jobs' => $jobs, 'menus' => $menus, 'sliders' => $sliders, 'about' => $About, 'global_setting' => $global_setting, 'slug_detail' => $slug_detail, 'all_job_cat' => $all_job_cat, 'all_job_childs' => $all_job_childs]);
            } else {
                return redirect('/');
            }
        }
    }








    public function subcategory($slug1, $submenu)
    {
        $menus = Navigation::query()->where('nav_category', 'Main')->where('page_type', '!=', 'Job')->where('page_type', '!=', 'Photo Gallery')->where('page_type', '!=', 'Notice')->where('parent_page_id', 0)->where('page_status', '1')->orderBy('position', 'ASC')->get();
        //return $menus->first()->submenus;
        $jobs = Navigation::query()->where('page_type', 'Job')->latest()->get();
        if (Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%about%")->where('page_type', 'Group')->latest()->first() != null) {
            $about_id = Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%about%")->where('page_type', 'Group')->latest()->first()->id;
            $About = Navigation::query()->where('parent_page_id', $about_id)->latest()->first();
        } else {
            $About = null;
        }
        if (Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%banner%")->where('page_type', 'Group')->latest()->first() != null) {
            $banner_id = Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%banner%")->where('page_type', 'Group')->latest()->first()->id;
            $banners = Navigation::query()->where('parent_page_id', $banner_id)->latest()->get();
        } else {
            $banners = null;
        }
        if (Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%message%")->where('page_type', 'Group')->latest()->first() != null) {
            $message_id = Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%message%")->where('page_type', 'Group')->latest()->first()->id;
            $message = Navigation::query()->where('parent_page_id', $message_id)->latest()->first();
        } else {
            $message = null;
        }
        if (Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%partner%")->where('page_type', 'Group')->latest()->first() != null) {
            $partners_id = Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%partner%")->where('page_type', 'Group')->latest()->first()->id;
            $partners = Navigation::query()->where('parent_page_id', $partners_id)->latest()->get();
            //return $partners;
        } else {
            $partners = null;
        }
        if (Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%slider%")->where('page_type', 'Group')->latest()->first() != null) {
            $slider_id = Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%slider%")->where('page_type', 'Group')->latest()->first()->id;
            $sliders = Navigation::query()->where('parent_page_id', $slider_id)->latest()->get();
        } else {
            $sliders = null;
        }
        if (Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%misson%")->where('page_type', 'Group')->latest()->first() != null) {
            $misson_id = Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%misson%")->where('page_type', 'Group')->latest()->first()->id;
            $missons = Navigation::query()->where('parent_page_id', $misson_id)->latest()->get();
            //return $misson;
        } else {
            $missons = null;
        }
        if (Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%message%")->where('page_type', 'Group')->latest()->first() != null) {
            $message_id = Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%message%")->where('page_type', 'Group')->latest()->first()->id;
            $message = Navigation::query()->where('parent_page_id', $message_id)->latest()->first();
        } else {
            $message = null;
        }
        if (Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%process%")->where('page_type', 'Group')->latest()->first() != null) {
            $process_id = Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%process%")->where('page_type', 'Group')->latest()->first()->id;
            $process = Navigation::query()->where('parent_page_id', $process_id)->latest()->get();
        } else {
            $process = null;
        }
        //return $misson;
        $job_categories = Navigation::all()->where('nav_category', 'Main')->where('page_type', 'Group')->where('banner_image', '!=', null);
        //sreturn $job_categories;
        $global_setting = GlobalSetting::all()->first();
        //return view("website.index")->with(['jobs'=>$jobs,'banners'=>$banners,'about'=>$About,'menus'=>$menus,'global_setting'=>$global_setting,'sliders'=>$sliders,'missons'=>$missons,'job_categories'=>$job_categories,'message'=>$message,'process'=>$process]);
        if (Navigation::all()->where('nav_name', $submenu)->count() > 0) {
            $job_id = Navigation::all()->where('nav_name', $submenu)->first()->id;
            $jobs = Navigation::query()->where('parent_page_id', $job_id)->where('page_type', 'Job')->orderBy('created_at', 'desc')->get();
        } else {
            $jobs = null;
        }
        $slug_detail = Navigation::all()->where('nav_name', $submenu)->first();
        //
        if (Navigation::all()->where('nav_name', $submenu)->count() > 0) {
            $subcategory_id = Navigation::all()->where('nav_name', $submenu)->first()->id;
            if (Navigation::all()->where('parent_page_id', $subcategory_id)->count() > 0) {
                $subcategory_type = Navigation::all()->where('parent_page_id', $subcategory_id)->first()->page_type; //slug/slug2(GROUP)
            } else {
                //return Navigation::all()->where('nav_name',$submenu)->where('page_type','Normal')->first()->page_type;
                if (Navigation::all()->where('nav_name', $submenu)->where('page_type', 'Normal')->count() > 0) {
                    $subcategory_type = Navigation::all()->where('nav_name', $submenu)->where('page_type', 'Normal')->first()->page_type; //slug/slug2(group)

                } elseif (Navigation::all()->where('nav_name', $submenu)->where('page_type', 'Video Gallery')->count() > 0) {
                    $subcategory_type = Navigation::all()->where('nav_name', $submenu)->where('page_type', 'Video Gallery')->first()->page_type; //slug/slug2(group)
                    //return $subcategory_type;
                } elseif (Navigation::all()->where('nav_name', $submenu)->where('page_type', 'Photo Gallery')->count() > 0) {
                    $navigataion_id = Navigation::where('nav_name', $submenu)->first()->id;
                    $photos = NavigationItems::where('navigation_id', $navigataion_id)->get();
                    return view("website.gallery_view")->with(['partners' => $partners, 'photos' => $photos, 'jobs' => $jobs, 'menus' => $menus, 'sliders' => $sliders, 'about' => $About, 'global_setting' => $global_setting, 'slug_detail' => $slug_detail]);
                } else {
                    $isCategoryPage = Navigation::all()->where('nav_name', $submenu)->first()->banner_image;
                    if ($isCategoryPage != null) {
                        // return $slug_detail;
                        return view("website.chart")->with(['jobs' => $jobs, 'menus' => $menus, 'sliders' => $sliders, 'about' => $About, 'global_setting' => $global_setting, 'slug_detail' => $slug_detail]);
                    } else {
                        return redirect('/'); //submenu is page_type=Group and its internal items are empty
                    }
                }
            }
        } else {
            $subcategory_type = null;
        }

        if ($subcategory_type == "Photo Gallery") {
            //return "return to page gallary";
            $photos = Navigation::query()->where('parent_page_id', $subcategory_id)->where('page_status', '1')->latest()->get();
            return view('website.gallery')->with(['partners' => $partners, 'photos' => $photos, 'jobs' => $jobs, 'menus' => $menus, 'sliders' => $sliders, 'about' => $About, 'global_setting' => $global_setting, 'slug_detail' => $slug_detail]);
        } elseif ($subcategory_type == "Video Gallery") {
            $photos = NavigationVideoItems::where('navigation_id', $subcategory_id)->get();
            return view("website.video_gallery")->with(["partners" => $partners, 'photos' => $photos, 'jobs' => $jobs, 'menus' => $menus, 'sliders' => $sliders, 'about' => $About, 'global_setting' => $global_setting, 'slug_detail' => $slug_detail]);
        } elseif ($subcategory_type == "Job") {
            $job_cat = Navigation::find($subcategory_id);
            // return $jobs;

            return view("website.all_jobs")->with(["partners" => $partners, 'jobs' => $jobs, 'menus' => $menus, 'sliders' => $sliders, 'about' => $About, 'global_setting' => $global_setting, 'slug_detail' => $slug_detail, 'job_cat'=> $job_cat]);
            


        } elseif ($subcategory_type == "Notice") {
            // return "return to view Notice";
            $notices = Navigation::query()->where('parent_page_id', $subcategory_id)->where('page_type', 'Notice')->latest()->get();
            $notice_heading = Navigation::find($subcategory_id);
            //return $notice_heading;
            return view("website.notice")->with(["partners" => $partners, 'notice_heading' => $notice_heading, 'notices' => $notices, 'jobs' => $jobs, 'menus' => $menus, 'sliders' => $sliders, 'about' => $About, 'global_setting' => $global_setting, 'slug_detail' => $slug_detail]);
        } elseif ($subcategory_type == "Normal") {
            $normal = Navigation::find($subcategory_id);
            // return $normal;
            $parent_name = Navigation::find($normal->parent_page_id);
            return view("website.normal")->with(["partners" => $partners, 'message' => $message, 'normal' => $normal, 'jobs' => $jobs, 'menus' => $menus, 'sliders' => $sliders, 'about' => $About, 'global_setting' => $global_setting, 'slug_detail' => $slug_detail,]);
        } elseif ($subcategory_type == "Chart") {
            $normal = Navigation::find($subcategory_id);
            return $normal;
            $parent_name = Navigation::find($normal->parent_page_id);
            return view("website.normal")->with(["partners" => $partners, 'message' => $message, 'normal' => $normal, 'jobs' => $jobs, 'menus' => $menus, 'sliders' => $sliders, 'about' => $About, 'global_setting' => $global_setting, 'slug_detail' => $slug_detail,]);



        } elseif ($subcategory_type == "Documentation") {
            $normal = Navigation::find($subcategory_id);
            $parent_name = Navigation::find($normal->parent_page_id);
            return view("website.documentation")->with(["partners" => $partners, 'message' => $message, 'normal' => $normal, 'jobs' => $jobs, 'menus' => $menus, 'sliders' => $sliders, 'about' => $About, 'global_setting' => $global_setting, 'slug_detail' => $slug_detail,]);
        } elseif ($subcategory_type == "Member") {
            //return "return to job else";
            $normal = Navigation::find($subcategory_id);
            $member = $normal->childs;
            return view("website.member")->with(["partners" => $partners, "member" => $member, "normal" => $normal, 'jobs' => $jobs, 'menus' => $menus, 'sliders' => $sliders, 'about' => $About, 'global_setting' => $global_setting, 'slug_detail' => $slug_detail]);
        } elseif ($subcategory_type == "Legal Document") {
            //return "return to job else";
            $normal = Navigation::find($subcategory_id);
            $member = $normal->childs;
            // return $member;
            $parent_name = Navigation::find($normal->parent_page_id);
            // return $parent_name;
            return view("website.all_leg_doc")->with(["partners" => $partners, "member" => $member, "normal" => $normal, 'jobs' => $jobs, 'menus' => $menus, 'sliders' => $sliders, 'about' => $About, 'global_setting' => $global_setting, 'slug_detail' => $slug_detail, 'parent_name' => $parent_name]);
        } elseif ($subcategory_type == "Chart") {
            return "return to job else";
            $normal = Navigation::find($subcategory_id);
            $member = $normal->childs;
            // return $member;

            return view("website.all_leg_doc")->with(["partners" => $partners, "member" => $member, "normal" => $normal, 'jobs' => $jobs, 'menus' => $menus, 'sliders' => $sliders, 'about' => $About, 'global_setting' => $global_setting, 'slug_detail' => $slug_detail]);
        } elseif ($subcategory_type == "Group") {
            //return "return to job else";
            return view("website.job-list")->with(["partners" => $partners, 'jobs' => $jobs, 'menus' => $menus, 'sliders' => $sliders, 'about' => $About, 'global_setting' => $global_setting, 'slug_detail' => $slug_detail]);
        } else {
            return redirect("/");
        }
    }


    public function singlePage($slug)
    {
        $job = Navigation::all()->where('nav_name', $slug)->first();
        if (Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%partner%")->where('page_type', 'Group')->latest()->first() != null) {
            $partners_id = Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%partner%")->where('page_type', 'Group')->latest()->first()->id;
            $partners = Navigation::query()->where('parent_page_id', $partners_id)->latest()->get();
            //return $partners;
        } else {
            $partners = null;
        }
        $global_setting = GlobalSetting::all()->first();
        $menus = Navigation::query()->where('nav_category', 'Main')->where('page_type', '!=', 'Job')->where('page_type', '!=', 'Photo Gallery')->where('page_type', '!=', 'Notice')->where('parent_page_id', 0)->where('page_status', '1')->orderBy('position', 'ASC')->get();
        return view("website.job_detail_single_page")->with(["partners" => $partners, 'job' => $job, 'menus' => $menus, 'global_setting' => $global_setting]);
    }


    public function all_jobs($slug)
    {
        $job = Navigation::all()->where('nav_name', $slug)->first();
        if (Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%partner%")->where('page_type', 'Group')->latest()->first() != null) {
            $partners_id = Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%partner%")->where('page_type', 'Group')->latest()->first()->id;
            $partners = Navigation::query()->where('parent_page_id', $partners_id)->latest()->get();
            //return $partners;
        } else {
            $partners = null;
        }
        $global_setting = GlobalSetting::all()->first();
        $menus = Navigation::query()->where('nav_category', 'Main')->where('page_type', '!=', 'Job')->where('page_type', '!=', 'Photo Gallery')->where('page_type', '!=', 'Notice')->where('parent_page_id', 0)->where('page_status', '1')->orderBy('position', 'ASC')->get();
        return view("website.all_jobs")->with(["partners" => $partners, 'job' => $job, 'menus' => $menus, 'global_setting' => $global_setting]);
    }











    public function ReadMore($slug)
    {
        if (Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%message%")->where('page_type', 'Group')->latest()->first() != null) {
            $message_id = Navigation::query()->where('nav_category', 'Home')->where('nav_name', 'LIKE', "%message%")->where('page_type', 'Group')->latest()->first()->id;
            $message = Navigation::query()->where('parent_page_id', $message_id)->latest()->first();
        } else {
            $message = null;
        }
        $normal = Navigation::where('id', $slug)->first();
        // return $normal;
        $global_setting = GlobalSetting::all()->first();
        $menus = Navigation::query()->where('nav_category', 'Main')->where('page_type', '!=', 'Job')->where('page_type', '!=', 'Photo Gallery')->where('page_type', '!=', 'Notice')->where('parent_page_id', 0)->where('page_status', '1')->orderBy('position', 'ASC')->get();
        return view("website.normal")->with(['message' => $message, 'slug_detail' => $normal, 'normal' => $normal, 'menus' => $menus, 'global_setting' => $global_setting, 'job_slug' => $slug]);
    }
    public function allCategory()
    {
        $job_categories = Navigation::all()->where('nav_category', 'Main')->where('page_type', 'Group')->where('banner_image', '!=', null);
        $global_setting = GlobalSetting::all()->first();
        $menus = Navigation::query()->where('nav_category', 'Main')->where('page_type', '!=', 'Job')->where('page_type', '!=', 'Photo Gallery')->where('page_type', '!=', 'Notice')->where('parent_page_id', 0)->where('page_status', '1')->orderBy('position', 'ASC')->get();
        return view("website.all_category")->with(['job_categories' => $job_categories, 'menus' => $menus, 'global_setting' => $global_setting]);
    }
    public function allJobs()
    {


        $jobs = Navigation::query()->where('page_type', 'Job')->latest()->get();

        $global_setting = GlobalSetting::all()->first();
        $menus = Navigation::query()->where('nav_category', 'Main')->where('page_type', '!=', 'Job')->where('page_type', '!=', 'Photo Gallery')->where('page_type', '!=', 'Notice')->where('parent_page_id', 0)->where('page_status', '1')->orderBy('position', 'ASC')->get();
        return view("website.jobsCategory")->with(['jobs' => $jobs, 'menus' => $menus, 'global_setting' => $global_setting]);
    }
    public function GalleryView($slug)
    {
        $navigataion_id = Navigation::where('nav_name', $slug)->first()->id;
        $photos = NavigationItems::where('navigation_id', $navigataion_id)->get();
        $img_pt = Navigation::find($navigataion_id);
        //  return $img_pt;

        $global_setting = GlobalSetting::all()->first();
        $menus = Navigation::query()->where('nav_category', 'Main')->where('page_type', '!=', 'Job')->where('page_type', '!=', 'Photo Gallery')->where('page_type', '!=', 'Notice')->where('parent_page_id', 0)->where('page_status', '1')->orderBy('position', 'ASC')->get();
        return view("website.gallery_view")->with(['photos' => $photos, 'menus' => $menus, 'global_setting' => $global_setting, 'img_pt' => $img_pt]);
    }


    // contact page






}
