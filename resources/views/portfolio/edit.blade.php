@extends('layouts.app')

@section('content')
<div class="container container-top-margin">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <h1>Edit</h1>
            <form action="/edit" method="POST" enctype="multipart/form-data">
                @csrf
                <input type="hidden" name="id" value="{{$portfolio['id']}}">
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Title</label>
                    <input type="text" name="title" class="form-control" placeholder="title" value="{{$portfolio['title']}}"><br>
                  </div>
                  <div class="mb-3">
                    <label for="exampleFormControlTextarea1" class="form-label">Description</label>
                    <textarea name="description" class="form-control" cols="30" rows="10">{{$portfolio['title']}}</textarea>
                  </div>
                  <div class="mb-3">
                    <div id="carouselExampleSlidesOnly" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            @foreach ($portfolioimage as $p)
                            <div class="carousel-item @if ($loop->first)
                                active
                            @endif
                            ">
                                <img class="d-block w-100" src="{{$p['URL']}}" alt="Second slide">
                              </div>
                            @endforeach                          
                        </div>
                      </div>
                    
                    
                  </div>

                  <button type="submit" class="btn btn-success">SAVE</button>
            </form>
        </div>
    </div>
</div>
@endsection
