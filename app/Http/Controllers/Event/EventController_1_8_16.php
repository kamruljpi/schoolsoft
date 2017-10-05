<?php

/**
 * Created by PhpStorm.
 * User: Abdul Aziz
 * Date: 5/25/2016
 * Time: 4:50 PM
 */
namespace Erp\Http\Controllers\Event;

use Erp\Http\Controllers\Controller;
use Erp\Forms\EventForm;
use Erp\Forms\DataHelper;
use Erp\Http\Controllers\Language\Lang;
use Erp\Forms\FormControll;
use Erp\Http\Controllers\ProjectController;
use Erp\Models\Event\Event;
use Erp\Models\Image\Photo;
use Illuminate\Http\Request;
use Erp\Http\Requests;
use Erp\Http\Requests\Validator;
use Carbon\Carbon;
use Intervention\Image\Facades\Image as InterImage;

class EventController extends ProjectController
{
    use Lang, FormControll, DataHelper;

    private $event;

    /**
     * @param Event $event
     */
    public function __construct(Event $event)
    {

        $this->middleware('auth');

        $this->event = $event;
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function createEventForm()
    {
        $viewType = 'Create Event';

        return view('default.admin.events.create',compact('viewType'));
    }

    /**
     * @param Requests\Validator $validatedRequest
     * @return null
     */
    /*public function createEvent(Requests\Validator $validatedRequest)
    {

        $current_date_time = Carbon::now();
        foreach ($this->event->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $this->event->translateOrNew($locale)->{$field} = $validatedRequest->get($field.'_'.$locale);
                }
            }
        }

        $this->event->from_date = $validatedRequest->get('from_date');
        $this->event->to_date = $validatedRequest->get('to_date');
        $this->event->status = $validatedRequest->get('status');
        $this->event->created_at = $current_date_time;

        $this->savePhoto(
            $newlyCreatedEvent,
            $validatedRequest
        );

        return $this->event->save()?back()->withSuccess('Successfully Created'):null;
    }*/

    public function createEvent(Requests\Validator $validatedRequest)
    {
        $allEvents = $this->event;
        $isOwnFieldsSaved = $this->ownFieldsToSave($allEvents,$validatedRequest);
        $isTranslatedFieldsSaved = $this->translatedAttrToSave($allEvents,$validatedRequest);

        if($isOwnFieldsSaved ){
            if($isTranslatedFieldsSaved){
                $newlyCreatedEvent = $this->newlyCreatedEvent($allEvents);

                $this->savePhoto(
                    $newlyCreatedEvent,
                    $validatedRequest
                );

                return back()->withSuccess('Successfully Created');
            }
        }
    }

    private function newlyCreatedEvent(Event $event)
    {
        $newlyCreatedEvent = $event->all()->last();

        return $newlyCreatedEvent;
    }

    private function ownFieldsToSave(Event $event, Validator $validatedRequest)
    {
        $current_date_time = Carbon::now();
        if(isset($event->ownFields)){
            foreach($event->ownFields as $ownField){
                if($validatedRequest->{$ownField})
                    $event->{$ownField} = $validatedRequest->{$ownField} ;
            }
        }

        $this->event->created_at = $current_date_time;

        if($event->save()){

            return true;
        }

        return false;
    }

    private function ownFieldsToUpdate(Event $event, Validator $validatedRequest)
    {
        $current_date_time = Carbon::now();
        if(isset($event->ownFields)){
            foreach($event->ownFields as $ownField){
                if($validatedRequest->{$ownField})
                    $event->{$ownField} = $validatedRequest->{$ownField} ;
            }
        }

        $this->event->updated_at = $current_date_time;

        if($event->save()){

            return true;
        }

        return false;
    }

    private function translatedAttrToSave(Event $event, Validator $validatedRequest)
    {
        foreach ($event->translatedAttributes as $field) {
            foreach($this->locales() as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $event->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                }
            }
        }

        if($event->save()){

            return true;
        }
        return false;
    }

    private function savePhoto(Event $event, Validator $validatedRequest)
    {
        if($validatedRequest->photo):
            $image = $validatedRequest->file('photo');
            $this->imageUpload($image,$event);
        endif;
    }

    private function imageUpload($image,Event $newlyCreatedEvent){

        $this->fileName = time().str_random(3).$image->getClientOriginalName();
        InterImage::make($image->getRealPath())->resize(200,200)->save('uploads/'. $this->fileName);
        $photo = new Photo();
        $photo->name= $this->fileName;
        $photo->user_id = $newlyCreatedEvent->id;
        $newlyCreatedEvent->photo()->save($photo);
    }

    /**
     * @param Event $event
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(Event $event)
    {
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();

        $eventList = $event->paginate(5);
        //$accountList = $this->account->with('accountType', 'amountType', 'amountCategory', 'toRole', 'fromRole', 'toUser', 'fromUser')->get();
        //dd($eventList);

        $viewType = 'Event List';

        return view('default.admin.events.index',compact('viewType', 'eventList', 'locale', 'defaultLocale'));
    }

    public function viewEvent($id)
    {
        $photo='';
        $locale = $this->chosenLanguage();
        $defaultLocale = $this->defaultLocale();
        $eventData = $this->event->findOrFail($id);
        if(!$eventData->photo->isEmpty()){
            $photo = $eventData->photo->last()->name;
        }

        //dd($eventData);

        return view('default.admin.events.view',compact('eventData','locale','defaultLocale', 'photo'));
    }

    public function getEventEditForm($id, EventForm $eventForm)
    {
        $viewType = 'Edit Event';
        $editEvent = $eventForm;
        $eventData = $this->editFormModel($this->event->findOrFail($id));

        return view('default.admin.events.edit', compact('viewType', 'editEvent', 'eventData'));
    }

    /*public function editEvent($id, Requests\Validator $validatedRequest)
    {
        $current_date_time = Carbon::now();
        $eventToEdit = $this->event->findOrFail($id);
        foreach ($eventToEdit->translatedAttributes as $field) {
            foreach(config('app.locales') as $locale => $value){
                if($validatedRequest->get($field.'_'.$locale)){
                    $eventToEdit->translateOrNew($locale)->{$field} =$validatedRequest->get($field.'_'.$locale);
                }
            }
        }
        $eventToEdit->from_date = $validatedRequest->get('from_date');
        $eventToEdit->to_date = $validatedRequest->get('to_date');
        $eventToEdit->status = $validatedRequest->get('status');
        $eventToEdit->updated_at = $current_date_time;

        return $eventToEdit->save()?back()->withSuccess('Successfully Updated'):null;
    }*/

    public function editEvent($id, Requests\Validator $validatedRequest)
    {
        $eventData = $this->event->findOrFail($id);
        $ownFieldsToUpdate = $this->ownFieldsToUpdate($eventData,$validatedRequest);
        $isTranslatedFieldsSaved = $this->translatedAttrToSave($eventData,$validatedRequest);

        if($ownFieldsToUpdate){
            if($isTranslatedFieldsSaved){
                $this->savePhoto(
                    $eventData,
                    $validatedRequest
                );
                return back()->withSuccess('Successfully Updated');
            }
        }
    }
    public function deleteEvent($id)
    {
        $eventToDelete = $this->event->findOrFail($id);
        if($eventToDelete->delete()):
            return back()->withSuccess('Successfully Deleted');
        endif;
        return back()->withErrors('Not Successfully Deleted');
    }
}