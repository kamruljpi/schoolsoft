<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/16/16
 * Time: 2:25 PM
 */
namespace Erp\Http\Controllers\Notice;

use Erp\Forms\NoticeForm;
use Erp\Forms\MessageForm;
use Erp\Http\Controllers\Controller;
use Erp\Forms\FormControll;
use Erp\Forms\DataHelper;
use Erp\Http\Controllers\Language\Lang;
use Erp\Http\Controllers\ProjectController;
use Erp\Models\Notice\Notice;
use Erp\Models\User\User;
use Erp\Models\Role\Role;
use Illuminate\Http\Request;
use Erp\Http\Requests;
use Carbon\Carbon;

class NoticesController extends ProjectController
{
    use Lang, FormControll, DataHelper;

    private $notice;

    /**
     * NoticesController constructor.
     * @param Notice $notice
     */
    public function __construct(Notice $notice)
    {

        $this->middleware('auth');

        $this->notice = $notice;
    }

    /**
     * @param Notice $notice
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(Notice $notice)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        $noticeList = $notice->where('type', 'notice')->paginate(20);
        //dd($noticeList);

        $viewType = 'Notice List';

        return view('default.admin.notice.index',compact('viewType', 'noticeList', 'locale', 'defaultLocale'));
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createNoticeForm()
    {
        $viewType = 'Create Notice';

        return view('default.admin.notice.create',compact('viewType'));

    }

    /**
     * @param Requests\Validator $validatedRequest
     */
    public function createNotice(Requests\Validator $validatedRequest)
    {
        foreach ($this->notice->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $this->notice->translateOrNew($locale)->{$field} = $validatedRequest->get($field.'_'.$locale);
                }
            }
        }
        $this->notice->notice_date = $validatedRequest->get('notice_date');
        $this->notice->from_send = request()->user()->id;
        $this->notice->to_send = $validatedRequest->get('to_send');
        $this->notice->type = 'notice';
        $this->notice->is_read = 0;
        $this->notice->access_lists = null;
        $this->notice->status = $validatedRequest->get('status');

        return $this->notice->save()?back()->withSuccess('Successfully Created'):null;
    }

    /**
     * @param $id
     * @param NoticeForm $noticeForm
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getNoticeEditForm($id, NoticeForm $noticeForm)
    {
        $viewType = 'Edit Notice';
        $editNotice = $noticeForm;
        $noticeData = $this->editFormModel($this->notice->findOrFail($id));

        return view('default.admin.notice.edit', compact('viewType', 'editNotice', 'noticeData'));
    }

    /**
     * @param $id
     * @param Requests\Validator $validatedRequest
     * @return null
     */
    public function editNotice($id, Requests\Validator $validatedRequest)
    {
        $noticeToEdit = $this->notice->findOrFail($id);
        foreach ($noticeToEdit->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $noticeToEdit->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                }
            }
        }
        $noticeToEdit->notice_date = $validatedRequest->get('notice_date');
        $noticeToEdit->from_send = request()->user()->id;
        $noticeToEdit->to_send = $validatedRequest->get('to_send');
        $noticeToEdit->type = 'notice';
        $noticeToEdit->is_read = 0;
        $noticeToEdit->access_lists = null;
        $noticeToEdit->status = $validatedRequest->get('status');

        return $noticeToEdit->save()?back()->withSuccess('Successfully Updated'):null;
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function viewNotice($id)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $noticeData = $this->notice->findOrFail($id);

        return view('default.admin.notice.view',compact('noticeData','locale','defaultLocale'));
    }

    /**
     * @param $id
     * @return $this
     */
    public function deleteNotice($id)
    {
        $noticeToDelete = $this->notice->findOrFail($id);
        if($noticeToDelete->delete()):
            return back()->withSuccess('Successfully Deleted');
        endif;
        return back()->withErrors('Not Successfully Deleted');
    }

    /**
     * @param Notice $notice
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function messageIndex(Notice $notice)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        $messageList = $notice->with('user')->where('type', 'message')->get();
        //dd($messageList);

        $viewType = 'Message List';

        return view('default.admin.message.index',compact('viewType', 'messageList', 'locale', 'defaultLocale'));
    }

    public function messageSent(Notice $notice)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        $loggerId = request()->user()->id;
        //dd($loggerId);

        $sentMessageList = $notice->with('user')->where('type', 'message')->where('from_send', $loggerId)->get();
        //dd($sentMessageList);

        $viewType = 'Sent';

        return view('default.admin.message.sent',compact('viewType', 'sentMessageList', 'locale', 'defaultLocale'));
    }

    public function messageInbox(Notice $notice)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        $loggerId = request()->user()->id;
        //dd($loggerId);

        $inboxMessageList = $notice->with('user')->where('type', 'message')->where('to_send', $loggerId)->get();
        //dd($inboxMessageList);

        $viewType = 'Inbox';

        return view('default.admin.message.inbox',compact('viewType', 'inboxMessageList', 'locale', 'defaultLocale'));
    }

    public function messageTrash(Notice $notice)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        $loggerId = request()->user()->id;

        $trashMessageList = $notice->onlyTrashed()
                                    ->where('type', 'message')
                                    ->where('to_send', $loggerId)
                                    ->get();
        //dd($trashMessageList);
        $viewType = 'Trash';

        return view('default.admin.message.trash',compact('viewType', 'trashMessageList', 'locale', 'defaultLocale'));
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createMessageForm()
    {
        $viewType = 'Create Message';

        return view('default.admin.message.create',compact('viewType'));
    }

    /**
     * @param Requests\Validator $validatedRequest
     */
    public function createMessage(Requests\Validator $validatedRequest)
    {
        $current = Carbon::now();
        $today = $current->toDateString();
        foreach ($this->notice->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $this->notice->translateOrNew($locale)->{$field} = $validatedRequest->get($field.'_'.$locale);
                }
            }
        }
        $this->notice->notice_date = $today;
        $this->notice->from_send = request()->user()->id;
        $this->notice->to_send = $validatedRequest->get('to_send');
        $this->notice->type = 'message';
        $this->notice->is_read = 0;
        $this->notice->access_lists = null;
        $this->notice->status = $validatedRequest->get('status');

        return $this->notice->save()?back()->withSuccess('Successfully Created'):null;
    }

    /**
     * Select users by role
     *
     * @param $roleId
     * @param Role $role
     * @param Request $request
     * @return \Illuminate\Http\JsonResponse
     */
    public function userOfRole($roleId, Role $role, Request $request)
    {
        $roleOfUser = $role->findOrFail($roleId);
        $users = $roleOfUser->users;
        if( $request->ajax()){
            return response()->json( [$users]);
        }
    }

    /**
     * @param $id
     * @param MessageForm $messageForm
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function getMessageEditForm($id, MessageForm $messageForm)
    {
        $viewType = 'Edit Message';
        $editMessage = $messageForm;
        $messageData = $this->editFormModel($this->notice->findOrFail($id));

        return view('default.admin.message.edit', compact('viewType', 'editMessage', 'messageData'));
    }

    /**
     * @param $id
     * @param Requests\Validator $validatedRequest
     * @return null
     */
    public function editMessage($id, Requests\Validator $validatedRequest)
    {
        $messageToEdit = $this->notice->findOrFail($id);

        foreach ($messageToEdit->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $messageToEdit->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                }
            }
        }
        //$noticeToEdit->notice_date = $validatedRequest->get('notice_date');
        $messageToEdit->from_send = request()->user()->id;
        $messageToEdit->to_send = $validatedRequest->get('to_send');
        $messageToEdit->type = 'message';
        $messageToEdit->is_read = 0;
        $messageToEdit->access_lists = null;
        $messageToEdit->status = $validatedRequest->get('status');

        return $messageToEdit->save()?back()->withSuccess('Successfully Updated'):null;
    }

    /**
     * @param $id
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function viewMessage($id)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $messageData = $this->notice->with('user')->findOrFail($id);
//        $messageData = $this->notice->onlyTrashed()
//            ->where('type', 'message')
////            ->where('to_send', $loggerId)
//            ->where('id', $id)
//            ->get();
        return view('default.admin.message.view',compact('messageData','locale','defaultLocale'));
    }

    public function viewTrashMessage($id)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        $messageData = $this->notice->onlyTrashed()
            ->where('type', 'message')
//            ->where('to_send', $loggerId)
            ->where('id', $id)
            ->get();
//        dd($messageData);
        return view('default.admin.message.tview',compact('messageData','locale','defaultLocale'));
    }

    /**
     * @param $id
     * @return $this
     */
    public function deleteMessage($id)
    {
        $messageToDelete = $this->notice->findOrFail($id);
        if($messageToDelete->delete()):
            return back()->withSuccess('Successfully Deleted');
        endif;
        return back()->withErrors('Not Successfully Deleted');
    }

}