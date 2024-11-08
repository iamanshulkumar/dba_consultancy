<?php
#{{-- #---------------------------------------------------🙏🔱देवा श्री गणेशा 🔱🙏---------------------------” --}}
namespace App\Http\Controllers;

use App\Models\Campaign;
use App\Models\Contact;
use App\Models\GroupType;
use App\Models\Message;
use App\Models\RegisterUser;
use App\Models\Template;
use Illuminate\Http\Request;
use Illuminate\Http\Client\PendingRequest;
use Illuminate\Support\Facades\Http;
use Session;
use Auth;
use Carbon\Carbon;
class UserViews extends Controller
{
    public function userloginpage()
    {
        return view('auth.UserPanel.login');
    }
    public function registration()
    {
        return view('auth.UserPanel.registration');
    }
    public function userdashboard()
    {
        return view('UserPanel.userdashboard');
    }
    public function logoutuserpanel()
    {
        Session::flush();
        Auth::guard('customer')->logout();
        return redirect('/user/login');
    }
    public function home()
    {
        if (Auth::guard('customer')->check()) {
            return view('UserPanel.home');
        } else {
            return view('auth.UserPanel.login');
        }
    }
    public function wallet()
    {
        if (Auth::guard('customer')->check()) {
            return view('UserPanel.wallet');
        } else {
            return view('auth.UserPanel.login');
        }
    }
    public function servicedetail()
    {
        if (Auth::guard('customer')->check()) {
            return view('UserPanel.servicedetail');
        } else {
            return view('auth.UserPanel.login');
        }
    }
    public function userprofile()
    {
        if (Auth::guard('customer')->check()) {
            return view('UserPanel.userprofile');
        } else {
            return view('auth.UserPanel.login');
        }
    }
    public function editprofile()
    {
        if (Auth::guard('customer')->check()) {
            return view('UserPanel.editprofile');
        } else {
            return view('auth.UserPanel.login');
        }
    }
    public function allservices()
    {
        if (Auth::guard('customer')->check()) {
            return view('UserPanel.allservices');
        } else {
            return view('auth.UserPanel.login');
        }
    }

    public function automationpage()
    {
        return view('UserPanel.automations');
    }
    public function addnewautomation()
    {
        return view('UserPanel.addnewautomation');
    }
    public function analyticspage()
    {
        if (Auth::guard('customer')->check()) {
            $sentmsgcount = Message::where('type', '=', 'Sent')->get()->count();
            $recmsgcount = Message::where('type', '=', 'Recieved')->get()->count();
            $contactscount = Contact::get()->count();
            $tempcount = Template::get()->count();
            $campaignscnt = Campaign::get()->count();
            $regisusers = RegisterUser::get()->count();
            $messages = Message::where('type', '=', 'Recieved')->whereDate('created_at', Carbon::today())->get();
            // dd($messages);
            return view('UserPanel.analytics', compact('sentmsgcount', 'recmsgcount', 'messages', 'contactscount', 'tempcount', 'campaignscnt', 'regisusers'));
        } else {
            return view('auth.UserPanel.login');
        }
    }
    public function wahapage()
    {
        return view('UserPanel.whatsappapi');
    }
    public function templatespage()
    {
        if (Auth::guard('customer')->check()) {
            $alltemplates = $this->getTemplateList();
            //dd($alltemplates);
            return view('UserPanel.templates', compact('alltemplates'));
        } else {
            return view('auth.UserPanel.login');
        }
    }
    public function groupspage()
    {
        $groupsdata = GroupType::orderBy('created_at', 'DESC')->get();
        return view('UserPanel.addgroups', compact('groupsdata'));
    }
    public function contactspage()
    {
        if (Auth::guard('customer')->check()) {
            $groupsdata = GroupType::where('type', '=', 'Group')->orderBy('created_at', 'DESC')->get();
            $contactsdata = Contact::orderBy('created_at', 'DESC')->get();
            return view('UserPanel.contacts', compact('groupsdata', 'contactsdata'));
        } else {
            return view('auth.UserPanel.login');
        }
    }
    function getTemplateList()
    {
        $loggedinuser = Auth::guard('customer')->user();
        $accessToken = $loggedinuser->apptoken;
        $whatsbusinessid = $loggedinuser->Wabaid;
        $apiBaseUrl = 'https://graph.facebook.com/';

        $client = Http::withHeaders([
            'Authorization' => 'Bearer ' . $accessToken,
        ]);

        $response = $client->get($apiBaseUrl . '/v20.0/' . $whatsbusinessid . '/message_templates');
        if ($response->successful()) {
            $templates = $response->json()['data'];
            return $templates;
            //dd($templates); // Replace with your desired handling of the template list
        } else {
            dd('Error fetching template list: ' . $response->body());
        }
    }
    public function showsentmessage($phone)
    {
        $finalphone = str_replace('+', '', $phone);
        $sentMessage = Message::where('senderid', $finalphone)->orWhere('recievedid', $phone)->get();
        //dd($sentMessage);
        return response()->json($sentMessage);
    }
}
