<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use DB;
use Illuminate\Http\Request;

class EbookController extends Controller
{
    //
    public function index(Request $request)
    {
        
        $this->authorize('admin_webinars_list');

        removeContentLocale();
        $ebooks = DB::table('ebooks')->get();
       // dd($ebooks);
        return view('admin.ebooks.index', ['ebooks' => $ebooks]);
    }
    public function new(Request $request)
    {
        return view('admin.ebooks.add');
    }
    public function save(Request $request)
    {
        if($request->file('ebook_image')){
            $fileNameImage = time().'_'.$request->ebook_image->getClientOriginalName();
            $filePathImage = $request->file('ebook_image')->storeAs('uploads', $fileNameImage, 'public');
            $fileNameImage = time().'_'.$request->ebook_image->getClientOriginalName();
            $filePathImage = '/store/' . $filePathImage;
        }
        /*if($request->file('ebook_file')){
            $fileNameFile = time().'_'.$request->ebook_file->getClientOriginalName();
            $filePathFile = $request->file('ebook_file')->storeAs('uploads', $fileNameFile, 'public');
            $fileNameFile = time().'_'.$request->ebook_file->getClientOriginalName();
            $filePathFile = '/store/' . $filePathFile;
        }*/
        DB::table('ebooks')->insert([
            'title' => $request->input('title'),
            'cover' => $fileNameImage,
            'price' => $request->input('price'),
            'code'  => $request->input('code'),
            'file'  => $request->input('ebook_file'),
            'promo_code' => 0
        ]);
        return redirect()->route('books.index')->with('success', 'تم اضافة الكتاب بنجاح');
    }
    public function show(Request $request, $id)
    {
        $book = DB::table('ebooks')->where('id', $id)->first();
        return view('admin.ebooks.show', ['book' => $book]);
    }

    public function showEbook($bookName){
        return view("ebooks.$bookName");
    }

    public function getbook(){
        return view("");
    }
}
