<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Mail\AllMail;
use App\Models\ItemPurchase;
use App\Models\Seo;
use App\Models\Setting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class OrderController extends Controller
{
    public function index()
    {
        $orders = ItemPurchase::with(['adDetails', 'customer'])->where('created_by', auth()->id())->orderBy('id', 'desc')->paginate(10);

        return view('frontend.order.index', compact('orders'));
    }

    public function view(ItemPurchase $order)
    {
        return view('frontend.order.view', compact('order'));
    }

    public function update(Request $request, ItemPurchase $order)
    {
        $order->update(['status' => $request->status]);



        $data['status'] = "";

        if ($order->status == 1) {
            $data['status'] = "Ordered and paid";
        } elseif ($order->status == 2) {
            $data['status'] = "Seller delivered";
        } elseif ($order->status == 3) {
            $data['status'] = "Buyer got the item ";
        }




        // Essnsial data
        $data['setting'] = Setting::first();
        $data['about'] = Seo::where('page_slug', 'about')->first();
        $data['subject'] = "Selling Notification";
        $data['tempalte'] = "purchase-status-update-notifications-user";
        $data['to'] = $order->owner;


        //   External Data

        $data['adDetails'] = $order->adDetails;



        Mail::to($data['to']->email)->send(new AllMail($data));

        $data['to'] = $order->customer;
        $data['subject'] = "Buying Notification";
        $data['tempalte'] = "purchase-status-update-notifications-buyer";
        Mail::to($data['to']->email)->send(new AllMail($data));

        return redirect()->route('frontend.orders.index')->with('success', "Order Status Update Successfully");
    }
}
