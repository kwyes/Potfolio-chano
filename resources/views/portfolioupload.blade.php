@extends('layouts.app')

@section('content')
<div class="container container-top-margin">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <form action="/portfolio" method="POST" enctype="multipart/form-data">
                @csrf
                

            </form>
        </div>
    </div>
</div>
@endsection
