<?php

namespace Modules\Course\Http\Requests\Instructor;

use Illuminate\Foundation\Http\FormRequest;

class UpdateLessonRequest extends FormRequest
{
    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        if ($this->request->get('is_quiz')) {
            $rules = [
                'lesson_title' => 'required|max:255',
                'is_quiz' => 'required',
                'instruction' => 'nullable|max:500000',
                'marks' => 'required|max:30',
                'pass_marks' => 'required|max:30',
            ];
            if ($this->request->get('is_timer') == 1) {
                $rules['is_timer'] = 'required|max:30';
            } else {
                $rules['duration'] = 'required|max:30';

            }
            return $rules;
        } else {
            $rules = [
                'lesson_type' => 'required',
                'lesson_title' => 'required|max:255',
            ];
            $lessonType = $this->request->get('lesson_type');

            if ($lessonType == 'VideoFile') {
                $rules = [
                    'content' => 'required|max:500000',
                    'duration' => 'required|max:255',
                    'video_file' => 'nullable|mimes:mp4,webm|max:5120',
                ];
            } elseif ($lessonType == 'Youtube' || $lessonType == 'Vimeo' || $lessonType == 'GoogleDrive') {
                $rules = [
                    'content' => 'required|max:500000',
                    'lesson_video_url' => 'required|url',
                    'duration' => 'required|max:255',
                ];
            } elseif ($lessonType == 'DocumentFile') {
                $rules = [
                    'document_file_type' => 'required',
                    'content' => 'required|max:500000',
                    'attachment' => 'nullable|file|mimes:pdf,doc,docx|max:10480',
                ];
            } elseif ($lessonType == 'Text') {
                $rules = [
                    'lesson_text' => 'required|max:500000',
                    'content' => 'required|max:500000',
                ];
            } elseif ($lessonType == 'IframeEmbed') {
                $rules = [
                    'content' => 'required|max:500000',
                    'iframe' => 'required',
                ];
            } elseif ($lessonType == 'ImageFile') {
                $rules = [
                    'content' => 'required|max:500000',
                    'image_file' => 'nullable|file|mimes:jpeg,png,jpg,gif,svg|max:2048',
                ];
            }
            return $rules;
        }
    }

    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    public function messages()
    {
        return [
            'lesson_title.required' => ___('validation.title_is_required'),
            'lesson_title.max' => ___('validation.title_must_be_less_than_255_characters'),
            'content.required' => ___('validation.content_is_required'),
            'content.max' => ___('validation.content_must_be_less_than_500000_characters'),
            'lesson_video_url.required' => ___('validation.video_url_is_required'),
            'lesson_video_url.url' => ___('validation.video_url_must_be_a_valid_url'),
            'duration.required' => ___('validation.duration_is_required'),
            'duration.max' => ___('validation.duration_must_be_less_than_255_characters'),
            'video_file.required' => ___('validation.video_file_is_required'),
            'video_file.mimes' => ___('validation.video_file_must_be_a_file_of_type:mp4,webm'),
            'video_file.max' => ___('validation.video_file_may_not_be_greater_than_5120_kilobytes'),
            'document_file_type.required' => ___('validation.document_file_type_is_required'),
            'attachment.required' => ___('validation.attachment_is_required'),
            'attachment.file' => ___('validation.attachment_must_be_a_file'),
            'attachment.mimes' => ___('validation.attachment_must_be_a_file_of_type:pdf,doc,docx'),
            'attachment.max' => ___('validation.attachment_may_not_be_greater_than_10480_kilobytes'),
            'lesson_text.required' => ___('validation.lesson_text_is_required'),
            'lesson_text.max' => ___('validation.lesson_text_must_be_less_than_500000_characters'),
            'iframe.required' => ___('validation.iframe_is_required'),
            'image_file.required' => ___('validation.image_file_is_required'),
            'image_file.file' => ___('validation.image_file_must_be_a_file'),
            'image_file.mimes' => ___('validation.image_file_must_be_a_file_of_type:jpeg,png,jpg,gif,svg'),
            'image_file.max' => ___('validation.image_file_may_not_be_greater_than_2048_kilobytes'),
            'is_quiz.required' => ___('validation.is_quiz_is_required'),
            'instruction.max' => ___('validation.instruction_must_be_less_than_500000_characters'),
            'duration.required' => ___('validation.duration_is_required'),
            'duration.max' => ___('validation.duration_must_be_less_than_30_characters'),
            'marks.required' => ___('validation.marks_is_required'),
            'marks.max' => ___('validation.marks_must_be_less_than_30_characters'),

        ];
    }
}
