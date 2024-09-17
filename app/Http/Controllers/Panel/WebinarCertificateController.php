<?php

namespace App\Http\Controllers\Panel;

use App\Http\Controllers\Controller;
use App\Mixins\Certificate\MakeCertificate;
use App\Models\Certificate;
use App\Models\Reward;
use App\Models\RewardAccounting;
use App\Models\Sale;
use App\Models\Webinar;
use Illuminate\Http\Request;

class WebinarCertificateController extends Controller
{

    public function index(Request $request)
    {
        $user = auth()->user();

        $books = Webinar::where('status', 'active')
            ->where('certificate', true)
            ->whereHas('sales', function ($query) use ($user) {
                $query->where('buyer_id', $user->id);
                $query->whereNull('refund_at');
                $query->where('access_to_purchased_item', true);
            })
            ->get();

        $this->calculateCertificates($user, $books);

        $query = Certificate::whereNotNull('webinar_id')
            ->where('type', 'course')
            ->where('student_id', $user->id);

        $certificates = $this->handleFilters($query, $request)
            ->orderBy('created_at', 'desc')
            ->paginate(10);

        $data = [
            'pageTitle' => trans('update.course_certificates'),
            'certificates' => $certificates,
            'userWebinars' => $books,
        ];

        return view('web.default.panel.certificates.webinar_certificates', $data);
    }

    private function handleFilters($query, $request)
    {
        $from = $request->get('from');
        $to = $request->get('to');
        $book_id = $request->get('webinar_id');


        fromAndToDateFilter($from, $to, $query, 'created_at');

        if (!empty($book_id)) {
            $query->where('webinar_id', $book_id);
        }

        return $query;
    }

    private function calculateCertificates($user, $books)
    {
        foreach ($books as $book) {
            $book->makeCourseCertificateForUser($user);
        }
    }

    public function makeCertificate($certificateId)
    {
        $user = auth()->user();

        $certificate = Certificate::where('id', $certificateId)
            ->where('student_id', $user->id)
            ->whereNotNull('webinar_id')
            ->first();

        if (!empty($certificate)) {
            $makeCertificate = new MakeCertificate();

            return $makeCertificate->makeCourseCertificate($certificate);
        }

        abort(404);
    }
}
