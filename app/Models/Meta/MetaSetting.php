<?php

namespace Erp\Models\Meta;

use Erp\Models\ProjectModel;
use Illuminate\Database\Eloquent\Model;

class MetaSetting extends ProjectModel
{




    const FIELD_NAME = 'form_field_name';
    const FIELD_LEVEL = 'field_level';
    const FIELD_TYPE = 'field_type';
    const FIELD_OPTION = 'field_options';
    const DEFAULT_VALUE = 'default_value';
    const FIELD_VALUE_TYPE = 'field_value_type';
    const LABEL_CLASS = 'labclass';
    const WRAP_CLASS = 'wrapclass';
    const FIELD_STYLE = 'field_style';
    const FIELD_CLASS = 'field_class';
    const FIELD_ID = 'field_id';
    const FORM_NAME = 'form_name';
    const VALIDATION_TYPE = 'validation_type';
    const DESCRIPTION = 'description';
    const IS_DISPLAYABLE = 'is_displayable';
    const IS_REQUIRED = 'is_required';
    const IS_TRANSLATABLE = 'is_translatable';
    const IS_DELETED = 'is_deleted';
    const STATUS = 'status';
    const POSITION = 'position';

    public $timestamps = false;

    protected $fillable = [
        self::FIELD_NAME,
        self::FIELD_LEVEL,
        self::FIELD_TYPE,
        self::FIELD_OPTION,
        self::DEFAULT_VALUE,
        self::LABEL_CLASS,
        self::WRAP_CLASS,
        self::FIELD_CLASS,
        self::FORM_NAME,
        self::VALIDATION_TYPE,
        self::DESCRIPTION,
        self::IS_DISPLAYABLE,
        self::IS_DELETED,
        self::IS_TRANSLATABLE,
        self::IS_REQUIRED,
        self::STATUS,
        self::POSITION
    ];

    public $ownFields = [
        self::FIELD_NAME,
        self::FIELD_LEVEL,
        self::FIELD_TYPE,
        self::FIELD_OPTION,
        self::DEFAULT_VALUE,
        self::LABEL_CLASS,
        self::WRAP_CLASS,
        self::FIELD_CLASS,
        self::FORM_NAME,
        self::VALIDATION_TYPE,
        self::DESCRIPTION,
        self::IS_DISPLAYABLE,
        self::IS_DELETED,
        self::IS_TRANSLATABLE,
        self::IS_REQUIRED,
        self::STATUS,
        self::POSITION
    ];


}
