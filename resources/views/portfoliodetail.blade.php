@extends('layouts.secondapp')
@section('content')
<section class="page-section portfolio" id="portfolio">
    <main class="container my-4">
        <div class="row">

        <div class="col-12">
            <h1 class="font-lg font-weight-bold mb-2">
                My Child Mobile Applicaiton (Android, Ios)
                </h1>
                <p class="font-m">
                Providing Child grade, participation, School Message, School Video Pictures
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
            <h4 class="desc-right-title">Key Functions</h4>
            <ul>
              <li>Call external API data</li>
              <li>DOM</li>
            </ul>
          </div>
          <div class="col-12">
            <!-- Codepen code -->
            <div class="cp_embed_wrapper"><iframe allowfullscreen="true" allowpaymentrequest="true" allowtransparency="true" class="cp_embed_iframe " frameborder="0" height="486" width="100%" name="cp_embed_1" scrolling="no" src="https://codepen.io/amysujunglee/embed/preview/qwyOJb?height=486&amp;theme-id=0&amp;default-tab=html%2Cresult&amp;user=amysujunglee&amp;slug-hash=qwyOJb&amp;preview=true&amp;pen-title=Random%20Quote%20Generator%20using%20an%20external%20API&amp;name=cp_embed_1" style="width: 100%; overflow:hidden; display:block;" title="Random Quote Generator using an external API" loading="lazy" id="cp_embed_qwyOJb"></iframe></div>
            <script async="" src="https://static.codepen.io/assets/embed/ei.js"></script>
            <!-- End of Codepen code -->
          </div>
        </div>
      </main>
    </section>
@endsection


