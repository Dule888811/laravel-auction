<?php
/**
 * Created by PhpStorm.
 * User: Dule
 * Date: 12/5/2018
 * Time: 12:37 AM
 */

namespace App\Http\Controllers;
use App\Offer;
use Illuminate\Support\Facades\DB;
use Auth;
use App\Product;
use App\User;
use Illuminate\Http\Request;
use Carbon\Carbon;
use App\Offers;
class ProductController extends Controller
{
    public function search_products(Request $request)
    {
        $this->validate($request, [
            'criteria' => 'required'
        ]);
        $criteria = $request->post('criteria');
        $products = Product::where('created_at', '>', Carbon::now()->subDays(10))
            ->orWhere('product_description', 'like', '%' . $criteria . '%')
            ->orWhere('product_name', 'like', '%' . $criteria . '%')
            ->get();
        return view('Products.productsSearch')->with(['products' => $products]);
    }
    public function insert(){
        return view('Products.insert');
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'product_name' => 'required',
            'product_description' => 'required',
            'featured' => 'image|nullable',
            'start_price' => 'int',
            'product_delivery' => 'required',
            'payment_choice' => 'required',


        ]);
        if ($request->hasFile('featured')) {
            $featured = $request->file('featured');
            $featured_new_name = time() . $featured->getClientOriginalName();
            $featured->move('uploads/students', $featured_new_name);
            $product = new Product([
                'product_name' => $request->post('product_name'),
                'product_description' => $request->post('product_description'),
                'featured' => 'uploads/students/' . $featured_new_name,
                'start_price' => $request->post('start_price'),
                'product_delivery' => $request->post('product_delivery'),
                'payment_choice' => $request->post('payment_choice'),
                'user_id' => Auth::user()->id
            ]);
            $product->save();
            return redirect()->route('home');
        }else {
            $product = new Product([
                'product_name' => $request->post('product_name'),
                'product_description' => $request->post('product_description'),
                'start_price' => $request->post('start_price'),
                'product_delivery' => $request->post('product_delivery'),
                'payment_choice' => $request->post('payment_choice'),
                'user_id' => Auth::user()->id

            ]);

            $product->save();

            return redirect()->route('home');
        }
    }
    public function delete($id){
        $product = Product::find($id);
        if($product->created_at > Carbon::now()->subDays(10)) {
            $product->delete();
            return redirect()->route('home');
        }else {
            echo "auction is ower";
        }
    }
    public function showOffers($id){
        $offers= Product::find($id)->offers()->get();
            return view('Offers.show')->with('offers',$offers);
    }
}