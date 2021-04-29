@extends('layouts.app')

@section('content')
<div class="container container-top-margin">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="row">
                <div class="col-md-2 offset-md-10">
                    <button style="margin:10px;" class="btn btn-primary" onclick="window.location.href='/create'">Create</button>
                </div>
            </div>
            
            <table class="table">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Title</th>
                    <th scope="col">Description</th>
                    <th scope="col">Delete</th>
                  </tr>
                </thead>
                <tbody>
                    @foreach ($portfolio as $p)
                    <tr>
                        <td>
                            <a href={{"edit/".$p['id']}}>{{$p['id']}}</a>
                        </td>
                        <td>{{$p['title']}}</td>
                        <td>{{$p['description']}}</td>
                        <td><a href={{"delete/".$p['id']}}>Delete</a></td>
                    </tr>
                    @endforeach
                </tbody>
              </table>
        </div>
    </div>
</div>
@endsection
