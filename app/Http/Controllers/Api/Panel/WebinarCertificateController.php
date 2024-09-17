<?php

namespace App\Http\Controllers\Api\Panel;

use App\Http\Controllers\Controller;
use App\Http\Resources\WebinarCertificateResource;
use App\Mixins\Certificate\MakeCertificate;
use App\Models\Certificate;
use App\Models\Reward;
use App\Models\RewardAccounting;
use App\Models\Webinar;
use Illuminate\Http\Request;

class WebinarCertificateController extends Controller
{
    public function index(Request $request)
    {
        $user = apiAuth();

        $books = Webinar::where('status', 'active')
            ->whereHas('sales', function ($query) use ($user) {
                $query->where('buyer_id', $user->id);
                $query->whereNull('refund_at');
                $query->where('access_to_purchased_item', true);
            })
            ->get();

        $this->calculateCertificates($user, $books);

        $certificates = Certificate::whereNotNull('webinar_id')
            ->where('type', 'course')
            ->where('student_id', $user->id)->orderBy('created_at', 'desc')
            ->get();

        return apiResponse2(1, 'retrieved', trans('api.public.retrieved'),
            [
                'certificates' => WebinarCertificateResource::collection($certificates),

            ]);
    }

    public function show($id)
    {
        return $this->makeCertificate($id);
    }

    private function calculateCertificates($user, $books)
    {
        $makeCertificate = new MakeCertificate();

        foreach ($books as $book) {
            if ($book->certificate and $book->getProgress() >= 100) {
                $check = Certificate::where('type', 'course')
                    ->where('student_id', $user->id)
                    ->where('webinar_id', $book->id)
                    ->first();

                if (empty($check)) {
                    $userCertificate = $makeCertificate->saveCourseCertificate($user, $book);

                    $certificateReward = RewardAccounting::calculateScore(Reward::CERTIFICATE);
                    RewardAccounting::makeRewardAccounting($userCertificate->student_id, $certificateReward, Reward::CERTIFICATE, $userCertificate->id, true);
                }
            }
        }
    }

    public function makeCertificate($certificateId)
    {
        $user = apiAuth();

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
