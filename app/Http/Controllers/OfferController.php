<?php
/**
 * Created by PhpStorm.
 * User: Dule
 * Date: 12/7/2018
 * Time: 11:18 PM
 */

namespace App\Http\Controllers;
use App\Offer;
use App\Product;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Carbon\Carbon;
class OfferController extends Controller
{
    public function insert($id){
       $offers = Offer::where('user_id', '=' ,Auth::id())
            ->where('product_id', '=' , $id)
           ->where('offer_active', true)
           ->get();
        if($offers->count()>0){
            $offer = $offers->first();
            return redirect()->route('offer.remove.form',['id' => $offer->id]);
        }
        return view('Offers.insert')->with('id',$id);
    }
    public function store(Request $request,$id){
        $this->validate($request, [
            'offer' => 'required|int'
        ]);
        $product = Product::find($id);
        if($product->start_price > $request->post('offer')) {
            echo "Insert bigger offer then start price";
        }else if ($product->created_at > Carbon::now()->subDays(10)) {
            $offer = new Offer([
                'money' =>  $request->post('offer'),
                'user_id' =>  Auth::id(),
                'product_id' => $id,
                'offer_active' => true
            ]);
            $offer->save();
            return redirect()->route('home');
        }else {
            echo "Auction is ower";
        }
    }
    public function remove($id){
        $offer = Offer::find($id);
        if($offer->created_at > Carbon::now()->subDays(10)) {
            $offer->offer_active = 0;
            $offer->save();
        }else{
            echo "auction is ower";
        }
        return redirect()->route('home');
    }
    public function remove_form($id){
        return view('Offers.remove')->with('id' , $id);
    }
}