<?php

namespace App\Actions\Frontend;

use App\Actions\File\FileDelete;
use App\Actions\File\FileUpload;

class ProfileUpdate
{
    public static function update($request, $customer)
    {
        $show_phone = $request->show_phone ?? 0 ;
        // dd($request->all());

        $customer->update([
            'name' => $request->name,
            'email' => $request->email,
            'username' => $request->username,
            'phone' => $request->phone,
            'location' => $request->location,
            'show_phone' => $show_phone,
            'bio' => $request->bio
        ]);

        if ($request->hasFile('image') && $request->file('image')->isValid()) {
            $url = uploadImage($request->image, "customer");
            $customer->update(['image' => $url]);
        }

        return $customer;
    }
}
