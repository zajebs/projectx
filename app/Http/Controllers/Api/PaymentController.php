<?php
namespace App\Http\Controllers\Api;
use Illuminate\Http\Request;
use App\Http\Traits\PaymentTrait;
use Illuminate\Support\Facades\Log;
use Modules\Coupon\Entities\Coupon;
use Illuminate\Support\Facades\Session;
class PaymentController extends Response
{
    use PaymentTrait;
    public function paymentSuccess(Request $request)
    {

        Log::alert($request->all());
        $discription = [
            'coupon_id' => 'Must provide a coupon id as a integer',
            'status' => "payment success or failed",
            'transaction_id' => 'trx id or pay id',
            'payment_provider' => "Paypal, Stripe or Apple Pay"
        ];
        try {
            //code...
            $plan = Coupon::find($request->coupon_id);
            Session::put('plan', $plan);
            Session::put('transaction_id', $request->transaction_id);
            $converted_amount = currencyConversion($plan->price);

            session(['order_payment' => [
                'payment_provider' => $request->payment_provider,
                'amount' =>  $converted_amount,
                'currency_symbol' => '€',
                'usd_amount' =>  $converted_amount,
            ]]);

          $transaction = $this->orderPlacing(false);
            // return parent::sendResponse(200, "Payment Success", $discription);
            return parent::sendResponse(200, "Payment Success.", $transaction, true, $discription);
        } catch (\Exception $th) {
            // dd($th);
            Log::alert($th);
            return parent::sendResponse(200, "Payment Failed.", $th->getMessage(), false, $discription);
        }
    }


}
