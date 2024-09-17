<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Translation\WebinarExtraDescriptionTranslation;
use App\Models\UpcomingCourse;
use App\Models\Webinar;
use App\Models\WebinarExtraDescription;
use Illuminate\Http\Request;

class WebinarExtraDescriptionController extends Controller
{
    public function store(Request $request)
    {
        $this->authorize('admin_webinars_edit');

        $this->validate($request, [
            'type' => 'required|in:' . implode(',', WebinarExtraDescription::$types),
            'value' => 'required',
        ]);

        $data = $request->all();

        if (empty($data['locale'])) {
            $data['locale'] = getDefaultLocale();
        }

        $creator = $this->getCreator($data);

        if (!empty($creator)) {
            $columnName = !empty($data['webinar_id']) ? 'webinar_id' : 'upcoming_course_id';
            $columnValue = !empty($data['webinar_id']) ? $data['webinar_id'] : $data['upcoming_course_id'];

            $order = WebinarExtraDescription::query()->where('creator_id', $creator->id)
                    ->where($columnName, $columnValue)
                    ->where('type', $data['type'])
                    ->count() + 1;

            $bookExtraDescription = WebinarExtraDescription::create([
                'creator_id' => $creator->id,
                'webinar_id' => !empty($data['webinar_id']) ? $data['webinar_id'] : null,
                'upcoming_course_id' => !empty($data['upcoming_course_id']) ? $data['upcoming_course_id'] : null,
                'type' => $data['type'],
                'order' => $order,
                'created_at' => time()
            ]);

            if (!empty($bookExtraDescription)) {
                WebinarExtraDescriptionTranslation::updateOrCreate([
                    'webinar_extra_description_id' => $bookExtraDescription->id,
                    'locale' => mb_strtolower($data['locale']),
                ], [
                    'value' => $data['value'],
                ]);
            }
        }

        return response()->json([
            'code' => 200,
        ], 200);
    }

    private function getCreator($data)
    {
        $creator = false;

        if (!empty($data['webinar_id'])) {
            $book = Webinar::findOrFail($data['webinar_id']);

            $creator = $book->creator;
        } elseif (!empty($data['upcoming_course_id'])) {
            $upcomingCourse = UpcomingCourse::findOrFail($data['upcoming_course_id']);

            $creator = $upcomingCourse->creator;
        }

        return $creator;
    }

    public function edit(Request $request, $id)
    {
        $this->authorize('admin_webinars_edit');

        $bookExtraDescription = WebinarExtraDescription::find($id);

        if (!empty($bookExtraDescription)) {
            $locale = $request->get('locale', app()->getLocale());
            if (empty($locale)) {
                $locale = app()->getLocale();
            }
            storeContentLocale($locale, $bookExtraDescription->getTable(), $bookExtraDescription->id);

            $bookExtraDescription->value = $bookExtraDescription->getValueAttribute();
            $bookExtraDescription->locale = mb_strtoupper($locale);

            return response()->json([
                'webinarExtraDescription' => $bookExtraDescription
            ], 200);
        }

        return response()->json([], 422);
    }

    public function update(Request $request, $id)
    {
        $this->authorize('admin_webinars_edit');

        $this->validate($request, [
            'type' => 'required|in:' . implode(',', WebinarExtraDescription::$types),
            'value' => 'required',
        ]);

        $data = $request->all();

        if (empty($data['locale'])) {
            $data['locale'] = getDefaultLocale();
        }

        $bookExtraDescription = WebinarExtraDescription::find($id);

        if ($bookExtraDescription) {

            WebinarExtraDescriptionTranslation::updateOrCreate([
                'webinar_extra_description_id' => $bookExtraDescription->id,
                'locale' => mb_strtolower($data['locale']),
            ], [
                'value' => $data['value'],
            ]);
        }

        return response()->json([
            'code' => 200,
        ], 200);
    }

    public function destroy(Request $request, $id)
    {
        $this->authorize('admin_webinars_edit');

        WebinarExtraDescription::find($id)->delete();

        return redirect()->back();
    }
}
