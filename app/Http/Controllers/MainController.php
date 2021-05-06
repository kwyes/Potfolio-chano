<?php

namespace App\Http\Controllers;
use App\Models\Portfolio;
use App\Models\Portfolioimage;
use App\Models\Main;
use Illuminate\Http\Request;

class MainController extends Controller
{
    protected $portfolio, $portfolioimages;
   
    public function __construct()
    {
        $this->portfolio = new Portfolio();
        $this->portfolioimages = new portfolioimage();
    }
       
    public function previewImgList() {
        $data = Portfolio::all();
        return view('portfolio', ['portfoliolist'=>$data]);
    }

    public function showData($id) {
        $data = Portfolio::find($id);        
        $portfolioimages =Portfolioimage::where('portfolio_id', $id)->get();               
        return view('portfoliodetail',['portfolio'=>$data, 'portfolioimage'=>$portfolioimages]);
    }

    
}
