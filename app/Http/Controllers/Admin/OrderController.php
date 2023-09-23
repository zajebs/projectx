<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\ItemPurchase;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    public function index()
    {
        $orders=ItemPurchase::with(['adDetails','customer','owner'])->paginate(20);

        return view('admin.order.index',compact('orders'));
    }
}
