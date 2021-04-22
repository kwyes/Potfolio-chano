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

    public function index()
    {
      return view('portfolio.view');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('portfolio.create');
    }

    public function view()
    {
        return view('portfolio.view');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $portfolio = $this->portfolio->create([
            'title' => $request->title,
            'description' => $request->description,
        ]);        
        
        $portfolioimages = $this->portfolioimages->create([
            'portfolio_id' => $portfolio->id,
            'FileName' => 'test',
            'OriginalFileName' => 'test',
            'URL' => 'test',
        ]);

        
        
        return view('portfolio.view');

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Portfolio  $portfolio
     * @return \Illuminate\Http\Response
     */
    public function show(Portfolio $portfolio)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Portfolio  $portfolio
     * @return \Illuminate\Http\Response
     */
    public function edit(Portfolio $portfolio)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Portfolio  $portfolio
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Portfolio $portfolio)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Portfolio  $portfolio
     * @return \Illuminate\Http\Response
     */
    public function destroy(Portfolio $portfolio)
    {
        //
    }
}
