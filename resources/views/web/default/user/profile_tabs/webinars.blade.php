@if(!empty($books) and !$books->isEmpty())
    <div class="mt-20 row">

        @foreach($books as $book)
            <div class="col-lg-4 mt-20">
                @include('web.default.includes.webinar.grid-card',['webinar' => $book])
            </div>
        @endforeach
    </div>
@else
    @include(getTemplate() . '.includes.no-result',[
        'file_name' => 'webinar.png',
        'title' => trans('site.instructor_not_have_webinar'),
        'hint' => '',
    ])
@endif

