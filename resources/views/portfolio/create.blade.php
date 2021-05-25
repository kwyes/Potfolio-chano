@extends('layouts.app')

@section('content')
<div class="container container-top-margin">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <h1>Create</h1>
            <form action="{{route('portfolio.create')}}" method="POST" enctype="multipart/form-data">
                @csrf
                  <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Title</label>
                    <input type="text" name="title" class="form-control" placeholder="title"><br>
                  </div>
                  <div class="mb-3">
                    <label for="exampleFormControlTextarea1" class="form-label">Description</label>
                    <textarea name="description" class="form-control" cols="30" rows="10"></textarea>
                  </div>

                  <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Link</label>
                    <input type="text" name="link" class="form-control" placeholder="Link"><br>
                  </div>

                  <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Github</label>
                    <input type="text" name="github" class="form-control" placeholder="github"><br>
                  </div>


                  <div class="mb-3">
                    <label for="exampleFormControlTextarea1" class="form-label">File</label>
                    <input type="file" name="filenames[]" class="myfrm form-control" multiple>
                  </div>
                  <button type="submit" class="btn btn-success">SAVE</button>
            </form>
        </div>
    </div>
</div>
@endsection
