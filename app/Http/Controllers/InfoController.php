<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\File;
use App\Models\Info;

class InfoController extends Controller
{
    public function index()
    {
        $data = Info::get();
        return view('admin.info.index', compact('data'));
    }

    public function create()
    {
        $student = Info::get();
        return view('admin.info.create', compact('student'));
    }

    public function insert(Request $request)
    {
        $request->validate(Info::$rules);
        $requests = $request->all();
        $requests['file'] = "";
        if ($request->hasFile('file')) {
            $files = Str::random("20") . "-" . $request->file->getClientOriginalName();
            $request->file('file')->move("file/info/", $files);
            $requests['file'] = "file/info/" . $files;
        }

        $cat = Info::create($requests);
        if($cat){
            return redirect('admin/info')->with('status', 'Berhasil menambah data !');
        }

        return redirect('admin/info')->with('status', 'Gagal menambah data !');
    }

    public function edit($id)
    {
        $student = Info::get();
        $data = Info::find($id);
        return view('admin.info.edit', compact('data', 'student'));
    }

    public function update(Request $request, $id)
    {

        $d = Info::find($id);
        if ($d == null) {
            return redirect('admin/info')->with('status', 'Data tidak ditemukan !');
        }

        $req = $request->all();

        if ($request->hasFile('file')) {
            if ($d->file !== null) {
                File::delete("$d->file");
            }
            $info = Str::random("20") . "-" . $request->file->getClientOriginalName();
            $request->file('file')->move("file/info/", $info);
            $req['file'] = "file/info/" . $info;
        }


        $data = Info::find($id)->update($req);
        if ($data) {
            return redirect('admin/info')->with('status', 'info berhasil diedit !');
        }
        return redirect('admin/info')->with('status', 'Gagal edit info !');

    }

    public function delete($id)
    {
        $data = Info::find($id);
        if ($data == null) {
            return redirect('admin/info')->with('status', 'Data tidak ditemukan !');
        }
        if ($data->image !== null || $data->image !== "") {
            File::delete("$data->image");
        }
        $delete = $data->delete();
        if ($delete) {
            return redirect('admin/info')->with('status', 'Berhasil hapus info !');
        }
        return redirect('admin/info')->with('status', 'Gagal hapus info !');
    }
}
