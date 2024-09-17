<?php

namespace App\Exports;

use Illuminate\Support\Collection;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithMapping;

class WebinarsExport implements FromCollection, WithHeadings, WithMapping
{
    protected $books;

    public function __construct($books)
    {
        $this->webinars = $books;
    }

    /**
     * @return Collection
     */
    public function collection()
    {
        return $this->webinars;
    }

    /**
     * @inheritDoc
     */
    public function headings(): array
    {
        return [
            trans('admin/main.id'),
            trans('admin/pages/webinars.title'),
            trans('admin/pages/webinars.course_type'),
            trans('admin/pages/webinars.teacher_name'),
            trans('admin/pages/webinars.sale_count'),
            trans('admin/pages/webinars.price'),
            trans('admin/main.created_at'),
            trans('admin/main.status'),
        ];
    }

    /**
     * @inheritDoc
     */
    public function map($book): array
    {
        return [
            $book->id,
            $book->title,
            $book->type,
            $book->teacher->full_name,
            $book->sales->count(),
            $book->price,
            dateTimeFormat($book->created_at, 'j M Y | H:i'),
            $book->status,
        ];
    }
}
