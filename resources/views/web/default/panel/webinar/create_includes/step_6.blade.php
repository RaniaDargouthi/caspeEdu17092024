@push('styles_top')
    <link href="/assets/default/vendors/sortable/jquery-ui.min.css"/>
@endpush


<section class="mt-50">
    <div class="">
        <h2 class="section-title after-line">{{ trans('public.faq') }} ({{ trans('public.optional') }})</h2>
    </div>

    <button id="webinarAddFAQ" data-webinar-id="{{ $book->id }}" type="button" class="btn btn-primary btn-sm mt-15">{{ trans('public.add_faq') }}</button>

    <div class="row mt-10">
        <div class="col-12">

            <div class="accordion-content-wrapper mt-15" id="faqsAccordion" role="tablist" aria-multiselectable="true">
                @if(!empty($book->faqs) and count($book->faqs))
                    <ul class="draggable-lists" data-order-table="faqs">
                        @foreach($book->faqs as $faqInfo)
                            @include('web.default.panel.webinar.create_includes.accordions.faq',['webinar' => $book,'faq' => $faqInfo])
                        @endforeach
                    </ul>
                @else
                    @include(getTemplate() . '.includes.no-result',[
                        'file_name' => 'faq.png',
                        'title' => trans('public.faq_no_result'),
                        'hint' => trans('public.faq_no_result_hint'),
                    ])
                @endif
            </div>
        </div>
    </div>
</section>

<div id="newFaqForm" class="d-none">
    @include('web.default.panel.webinar.create_includes.accordions.faq',['webinar' => $book])
</div>

@foreach(\App\Models\WebinarExtraDescription::$types as $bookExtraDescriptionType)
    <section class="mt-50">
        <div class="">
            <h2 class="section-title after-line">{{ trans('update.'.$bookExtraDescriptionType) }} ({{ trans('public.optional') }})</h2>
        </div>

        <button id="add_new_{{ $bookExtraDescriptionType }}" data-webinar-id="{{ $book->id }}" type="button" class="btn btn-primary btn-sm mt-15">{{ trans('update.add_'.$bookExtraDescriptionType) }}</button>

        <div class="row mt-10">
            <div class="col-12">

                @php
                    $bookExtraDescriptionValues = $book->webinarExtraDescription->where('type',$bookExtraDescriptionType);
                @endphp

                <div class="accordion-content-wrapper mt-15" id="{{ $bookExtraDescriptionType }}_accordion" role="tablist" aria-multiselectable="true">
                    @if(!empty($bookExtraDescriptionValues) and count($bookExtraDescriptionValues))
                        <ul class="draggable-content-lists draggable-lists-{{ $bookExtraDescriptionType }}" data-drag-class="draggable-lists-{{ $bookExtraDescriptionType }}" data-order-table="webinar_extra_descriptions_{{ $bookExtraDescriptionType }}">
                            @foreach($bookExtraDescriptionValues as $learningMaterialInfo)
                                @include('web.default.panel.webinar.create_includes.accordions.extra_description',
                                    [
                                        'webinar' => $book,
                                        'extraDescription' => $learningMaterialInfo,
                                        'extraDescriptionType' => $bookExtraDescriptionType,
                                        'extraDescriptionParentAccordion' => $bookExtraDescriptionType.'_accordion',
                                    ]
                                )
                            @endforeach
                        </ul>
                    @else
                        @include(getTemplate() . '.includes.no-result',[
                            'file_name' => 'faq.png',
                            'title' => trans("update.{$bookExtraDescriptionType}_no_result"),
                            'hint' => trans("update.{$bookExtraDescriptionType}_no_result_hint"),
                        ])
                    @endif
                </div>
            </div>
        </div>
    </section>

    <div id="new_{{ $bookExtraDescriptionType }}_html" class="d-none">
        @include('web.default.panel.webinar.create_includes.accordions.extra_description',
            [
                'webinar' => $book,
                'extraDescriptionType' => $bookExtraDescriptionType,
                'extraDescriptionParentAccordion' => $bookExtraDescriptionType.'_accordion',
            ]
        )
    </div>
@endforeach


@push('scripts_bottom')
    <script src="/assets/default/vendors/sortable/jquery-ui.min.js"></script>
@endpush
