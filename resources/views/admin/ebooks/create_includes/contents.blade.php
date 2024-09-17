<section class="mt-50">
    <div class="">
        <h2 class="section-title after-line">{{ trans('public.chapters') }} ({{ trans('public.optional') }})</h2>
    </div>

    <button type="button" class="js-add-chapter btn btn-primary btn-sm mt-15" data-webinar-id="{{ $book->id }}">{{ trans('public.new_chapter') }}</button>

    @include('admin.webinars.create_includes.accordions.chapter')
</section>

@if($book->isWebinar())
    <div id="newSessionForm" class="d-none">
        @include('admin.webinars.create_includes.accordions.session',['webinar' => $book])
    </div>
@endif

<div id="newFileForm" class="d-none">
    @include('admin.webinars.create_includes.accordions.file',['webinar' => $book])
</div>

@if(getFeaturesSettings('new_interactive_file'))
    <div id="newInteractiveFileForm" class="d-none">
        @include('admin.webinars.create_includes.accordions.new_interactive_file',['webinar' => $book])
    </div>
@endif


<div id="newTextLessonForm" class="d-none">
    @include('admin.webinars.create_includes.accordions.text-lesson',['webinar' => $book])
</div>

<div id="newQuizForm" class="d-none">
    @include('admin.webinars.create_includes.accordions.quiz',[
             'webinar' => $book,
             'quizInfo' => null,
             'webinarChapterPages' => true,
             'creator' => $book->creator
        ])
</div>

@if(getFeaturesSettings('webinar_assignment_status'))
    <div id="newAssignmentForm" class="d-none">
        @include('admin.webinars.create_includes.accordions.assignment',['webinar' => $book])
    </div>
@endif

@include('admin.webinars.create_includes.chapter_modal')

@include('admin.webinars.create_includes.change_chapter_modal')
