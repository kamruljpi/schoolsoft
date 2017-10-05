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
//dd(session()->get(SITE_ID));
        $this->fillable[] = self::SITE_ID;
        $this->{self::SITE_ID} = (int)session()->get(SITE_ID);
        parent::__construct( $attributes);
    }

    /**
     * overrides Illuminate\Database\Eloquent\Model's create() for site_id
     *
     * @param array $attributes
     * @return static
     */
    /* public static function create(array $attributes = [])
     {
         $attributes[self::SITE_ID]= (int)session()->get(SITE_ID);
         return parent::create($attributes);
     }*/
    /**
     * overrides Illuminate\Database\Eloquent\Model's update() for site_id
     *
     * @param array $attributes
     * @return bool|int
     */
    /* public function update(array $attributes = [])
     {
         $attributes[self::SITE_ID]= (int)session()->get(SITE_ID);
         return parent::update($attributes);
     }*/
    /* public function save(array $options = [])
     {
 //        dd($this->{self::SITE_ID});
        $options[self::SITE_ID] = $this->{self::SITE_ID};

        return parent::save($options);
     }*/

    public function setSiteIdAttribute( $value)
    {
//dd(session()->get(SITE_ID));
        $this->attributes[self::SITE_ID] = session()->get(SITE_ID);

    }
    /**
     * overrides Illuminate\Database\Eloquent\Model's query for site_id
     *
     * @param array $columns
     * @return mixed
    /*  */
    /* public static function all($columns = ['*'])
      {
          $columns = is_array($columns) ? $columns : func_get_args();

          $instance = new static;
  //dd($instance->newQuery()->whereSiteId(1)->get($columns));
          return $instance->newQuery()->whereSiteId(1)->get($columns);
      }*/
    /**
     * overrides Illuminate\Database\Eloquent\Model's query for site_id
     * for get()
     *
     * @param string $method
     * @param array $parameters
     * @return mixed
     */
    /*  public function __call($method, $parameters)
      {
          if (in_array($method, ['increment', 'decrement'])) {
              return call_user_func_array([$this, $method], $parameters);
          }
          $query = $this->newQuery()->whereSiteId(1);
          return call_user_func_array([$query, $method], $parameters);
      }*/
    /* protected static function boot()
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