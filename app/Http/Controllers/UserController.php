<?php
/**
 * Created by PhpStorm.
 * User: Dule
 * Date: 12/9/2018
 * Time: 6:22 PM
 */

namespace App\Http\Controllers;
use App\Offer;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Product;
use App\User;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use App\Http\Controllers\Controller;
use App\Http\Manager\SubscriptionManager;
use  HasherAlias;
class UserController extends Controller
{

    public function seals(){
            $products = Product::where('created_at', '<', Carbon::now()->subDays(10))
                                ->Where('user_id',Auth::user()->id)->get();
            return view('Users.seals')->with('products',$products);
        }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function buys(){
        $productSold = DB::table('products')
            ->join('offers', 'products.id', '=', 'offers.product_id')
            ->join('users', 'offers.user_id', '=', 'users.id')
           ->where('products.created_at', '<', Carbon::now()->subDays(10))
               ->Where('offers.user_id',Auth::user()->id)
            ->orderBy('offers.money', 'desc')
            ->limit(1)
            ->select('offers.money', 'products.product_name','users.*')
            ->get();
        return view('Users.buys')->with('productSold',$productSold);
    }
    public function edit(){
return view('Users.edit');
    }

    /**
     * @param Request $request
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Routing\Redirector
     */
    public function save(Request $request){
        $this->validate($request,[
            'f_name' => 'required',
            'l_name' => 'required',
            'email' => 'required|unique:users'
        ]);
        $user = User::find(Auth::id());
        $user->f_name = $request->post('f_name');
        $user->l_name = $request->post('l_name');
        $user->email = $request->post('email');
        $user->save();
        return redirect('home');
    }

}

