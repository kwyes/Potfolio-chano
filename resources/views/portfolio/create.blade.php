@extends('layouts.app')

@section('content')
<div class="container container-top-margin">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <h1>Create</h1>
            <form action="{{route('portfolio.create')}}" method="POST" enctype="multipart/form-data">
                @csrf
                <input type="text" name="title" placeholder="title"><br>
                <textarea name="description" id="" cols="30" rows="10"></textarea>
                <button>save</button>

            </form>
        </div>
    </div>
</div>
@endsection
