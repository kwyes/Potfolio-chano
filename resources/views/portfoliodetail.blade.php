@extends('layouts.secondapp')
@section('content')
<section class="page-section portfolio" id="portfolio">
    <main class="container my-4">
        <div class="row">

        <div class="col-12">
            <h1 class="font-lg font-weight-bold mb-2">
                {{$portfolio['title'] }}
            </h1>
                <p class="font-m">
                  
                </p>
                <hr>
        </div>

          <div class="col-12 col-md-6">
            {!! $portfolio['description'] !!}
          </div>
          <div class="col-12 col-md-6">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                </ol>
                <div class="carousel-inner">
                    @foreach ($portfolioimage as $key => $p)
                    <div class="carousel-item {{$key == 0 ? 'active' : '' }}">
                        <img src="{{$p->URL}}" class="d-block w-100"  alt="..."> 
                    </div>
                    @endforeach
                </div>
                <a class="carousel-control-prev" href="#myCarousel" role="button"  data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true">     </span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
              </div>
          </div>
          
          <div class="col-12">
            <a href="{{$portfolio['github']}}" class="btn btn-primary" target="_blank">Source Code</a>
            <a href="{{$portfolio['link']}}" class="btn btn-primary" target="_blank">Link</a>
          </div>
        </div>
      </main>
    </section>
@endsection


