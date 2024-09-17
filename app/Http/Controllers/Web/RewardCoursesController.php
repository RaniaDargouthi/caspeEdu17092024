<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Webinar;
use Illuminate\Http\Request;

class RewardCoursesController extends Controller
{
    public function index(Request $request)
    {
        $booksQuery = Webinar::where('webinars.status', 'active')
            ->where('private', false)
            ->whereNotNull('points');

        $classesController = new ClassesController();

        $booksQuery = $classesController->handleFilters($request, $booksQuery);

        $sort = $request->get('sort', null);

        if (empty($sort)) {
            $booksQuery = $booksQuery->orderBy('webinars.created_at', 'desc')
                ->orderBy('webinars.updated_at', 'desc');
        }

        $books = $booksQuery->with(['tickets'])
            ->paginate(6);

        $seoSettings = getSeoMetas('reward_courses');
        $pageTitle = !empty($seoSettings['title']) ? $seoSettings['title'] : '';
        $pageDescription = !empty($seoSettings['description']) ? $seoSettings['description'] : '';
        $pageRobot = getPageRobot('reward_courses');

        $data = [
            'pageTitle' => $pageTitle,
            'pageDescription' => $pageDescription,
            'pageRobot' => $pageRobot,
            'webinars' => $books,
            'webinarsCount' => $books->total(),
            'sortFormAction' => '/reward-courses',
            'category' => null,
            'featureWebinars' => null,
            'isRewardCourses' => true
        ];

        return view(getTemplate() . '.pages.categories', $data);
    }
}
