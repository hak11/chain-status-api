<?php

namespace App\Http\Controllers\Voyager;

use TCG\Voyager\Http\Controllers\VoyagerAuthController as BaseVoyagerAuthController;
use Illuminate\Http\Request;
use DB;
use App\ForumStatus;
use App\ForumAction;

class Forum extends BaseVoyagerAuthController
{
  public function index(){
    $data= ForumStatus::all()->where('param',true)->where('parent_id',false);
    foreach ($data as $key) {
        $key['countAction'] = $this->countAction($key->id);
        $key['countComment'] = $this->countComment($key->id);
        $key['actions'] = $this->loopingActions($key->id);
        $key['comments'] = $this->loopingComments($key->id);
    }

    return $data;
  }

  public function loopingComments($id){
    $comments = ForumStatus::all()->where('parent_id',$id)->where('param',false);
    foreach ($comments as $val) {
      $val['countAction'] = $this->countAction($val->id);
      $val['countComment'] = $this->countComment($val->id);
      $val['actions'] = $this->loopingActions($val->id);
      if ($val['countComment'] > 0) {
        $val['comments'] = $this->loopingCommentsSecond($val->id);
      } else {
        $val['comments'] = array();
      }
    }

    return $comments;
  }

  public function loopingCommentsSecond($id){
    $comments = ForumStatus::all()->where('parent_id',$id);
    foreach ($comments as $val) {
      $val['countAction'] = $this->countAction($val->id);
      $val['countComment'] = $this->countComment($val->id);
      $val['actions'] = $this->loopingActions($val->id);
      if ($val['countComment'] > 0) {
        $val['comments'] = $this->loopingCommentsSecond($val->id);
      } else {
        $val['comments'] = array();
      }
    }

    return $comments;
  }

  public function countComment($id){
      $data = ForumStatus::all()->where('parent_id',$id)->count();
      return $data;
  }

  public function countAction($id){
      $data = ForumAction::all()->where('status_id',$id)->count();
      return $data;
  }

  public function loopingActions($id){
    $data = ForumAction::select('param_action','bgcolor', DB::raw('count(id) as countAction'))
    ->orderBy('param_action','asc')
    ->where('status_id',$id)
    ->groupBy('bgcolor')
    ->groupBy('param_action')
    ->get();
    return $data->toArray();
  }

  public function addData(Request $request){
    $forumStatus = new ForumStatus();
    $forumStatus->param = $request->param ? $request->param : 0;
    $forumStatus->name = $request->name ? $request->name : 'Anonymous';
    $forumStatus->subject = $request->subject;
    $forumStatus->message = $request->message;
    $forumStatus->parent_id = $request->parent_id ? $request->parent_id : 0;
    return $forumStatus->save();
  }
}
