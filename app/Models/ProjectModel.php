<?php
/**
 * Created by PhpStorm.
 * User: raja
 * Date: 5/15/16
 * Time: 4:21 PM
 */

namespace Erp\Models;


use Erp\Models\Site\SiteInfo;
use Erp\Scopes\ProjectScope;
use Illuminate\Database\Eloquent\Model;


abstract class ProjectModel extends Model
{
    const SITE_ID = 'site_id';

    /**
     * ProjectModel constructor.
     * @param array $attributes
     */
    public function __construct(array $attributes = [])
    {
        $this->fillable[] = self::SITE_ID;
        $this->{self::SITE_ID} = (int)session()->get(SITE_ID);
        parent::__construct( $attributes);
    }



    public function setSiteIdAttribute( $value)
    {
        $this->attributes[self::SITE_ID] = session()->get(SITE_ID);

    }

     /*protected static function boot()
      {
          parent::boot();
          static::addGlobalScope(new ProjectScope());
      }*/


    public function newQuery()
    {
         $site_id = (int)session()->get(SITE_ID);
         $builder = $this->newQueryWithoutScopes();
         $tableName = $builder->getModel()->getTable();
         $builder->where($tableName.'.site_id',$site_id);

         return $this->applyGlobalScopes($builder);
     }
}