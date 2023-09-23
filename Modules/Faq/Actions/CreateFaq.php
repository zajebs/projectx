<?php

namespace Modules\Faq\Actions;

use Modules\Faq\Entities\Faq;

class CreateFaq
{
    public static function create($request)
    {
    return Faq::create([
        'faq_category_id' => $request->faq_category_id,
        'question' => $request->question,
        'question_lv' => $request->question_lv,  // jaunais lauks
        'answer' => $request->answer,
        'answer_lv' => $request->answer_lv,  // jaunais lauks
    ]);
}
}
