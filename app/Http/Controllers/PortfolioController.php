<?php

namespace App\Http\Controllers;
use App\Models\Portfolio;
use App\Models\Portfolioimage;
use Illuminate\Http\Request;

class PortfolioController extends Controller
{

    protected $portfolio, $portfolioimages;
   
    public function __construct()
    {
        $this->middleware('auth');
        $this->portfolio = new Portfolio();
        $this->portfolioimages = new portfolioimage();
    }

    
    public function create()
    {
        return view('portfolio.create');
    }


    public function store(Request $request)
    {
        $portfolio = $this->portfolio->create([
            'title' => $request->title,
            'description' => $request->description,
        ]);        
        
        $portfolioimages = $this->portfolioimages->create([
            'portfolio_id' => $portfolio->id,
            'FileName' => $request->title.'.png',
            'OriginalFileName' => $request->title.'.png',
            'URL' => 'test',
        ]);

        $portfolioimages = $this->portfolioimages->create([
            'portfolio_id' => $portfolio->id,
            'FileName' => $request->title.'.jpg',
            'OriginalFileName' => $request->title.'.jpg',
            'URL' => 'test',
        ]);

        return redirect('list');
    }

    public function show()
    {   

        $data = Portfolio::all();
        return view('portfolio.list',['portfolio'=>$data]);
    }

    public function delete($id)
    {   
        $data = Portfolio::find($id);        
        $data->delete();
        return redirect('list');
    }

    public function showData($id) {
        $data = Portfolio::find($id);        
        $portfolioimages =Portfolioimage::where('portfolio_id', $id)->get();               
        return $portfolioimages;
    }

    public function update(Request $request){
        $data = Portfolio::find($request->id);
        $data->title = $request->title;
        $data->description = $request->description;
        $data->save();
        return redirect('list');
    }

   
}
