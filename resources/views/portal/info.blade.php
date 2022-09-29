@extends('portal.app')
@section('sc-css')
<link href="{{ url('assets/03-About-me/css/styles.css') }}" rel="stylesheet">
<link href="{{ url('assets/03-About-me/css/responsive.css') }}" rel="stylesheet">
@endsection
@section('content')
<div class="recomend-area">
    <h4 class="title"><b class="light-color">Info</b></h4>
    <div class="column">

        @foreach ($data['info'] as $info)
        <div class="col-md-6">

            <div class="recomend">
                

                <div class="post-image">
                    <h5 class="title"><a href="{{ url('info-detail/'.$info->id) }}"><b class="light-color">{{ substr($info->judul_info, 0, 30).(strlen($info->judul_info) > 30 ? "..." : "") }}</b></a></h5>
                    <!-- <h6 class="date"><em>{{date('D, M Y', strtotime($info->created_at))}}</em></h6>
                    {!! substr($info->isi_info, 0, 30).(strlen($info->isi_info) > 30 ? "..." : "") !!} -->
                </div><!-- post-info -->
            </div><!-- recomend -->

        </div><!-- col-md-6 -->
        @endforeach

    </div><!-- row -->
</div><!-- recomend-area -->
@endsection
