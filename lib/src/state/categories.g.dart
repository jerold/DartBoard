// GENERATED CODE - DO NOT MODIFY BY HAND

part of categories;

// **************************************************************************
// BuiltReduxGenerator
// **************************************************************************

// ignore_for_file: avoid_classes_with_only_static_members
// ignore_for_file: annotate_overrides
// ignore_for_file: overridden_fields
// ignore_for_file: type_annotate_public_apis

class _$CategoriesActions extends CategoriesActions {
  factory _$CategoriesActions() => _$CategoriesActions._();
  _$CategoriesActions._() : super._();

  final update =
      ActionDispatcher<UpdateEntity<Category>>('CategoriesActions-update');
  final remove = ActionDispatcher<String>('CategoriesActions-remove');
  final setCurrent = ActionDispatcher<String>('CategoriesActions-setCurrent');
  final hide = ActionDispatcher<String>('CategoriesActions-hide');
  final show = ActionDispatcher<String>('CategoriesActions-show');

  @override
  void setDispatcher(Dispatcher dispatcher) {
    update.setDispatcher(dispatcher);
    remove.setDispatcher(dispatcher);
    setCurrent.setDispatcher(dispatcher);
    hide.setDispatcher(dispatcher);
    show.setDispatcher(dispatcher);
  }
}

class CategoriesActionsNames {
  static final update =
      ActionName<UpdateEntity<Category>>('CategoriesActions-update');
  static final remove = ActionName<String>('CategoriesActions-remove');
  static final setCurrent = ActionName<String>('CategoriesActions-setCurrent');
  static final hide = ActionName<String>('CategoriesActions-hide');
  static final show = ActionName<String>('CategoriesActions-show');
}

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Categories extends Categories {
  @override
  final BuiltMap<String, Category> map;
  @override
  final String currentUid;
  Category __current;
  BuiltList<Category> __visible;

  factory _$Categories([void Function(CategoriesBuilder) updates]) =>
      (new CategoriesBuilder()..update(updates)).build();

  _$Categories._({this.map, this.currentUid}) : super._() {
    if (map == null) {
      throw new BuiltValueNullFieldError('Categories', 'map');
    }
    if (currentUid == null) {
      throw new BuiltValueNullFieldError('Categories', 'currentUid');
    }
  }

  @override
  Category get current => __current ??= super.current;

  @override
  BuiltList<Category> get visible => __visible ??= super.visible;

  @override
  Categories rebuild(void Function(CategoriesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CategoriesBuilder toBuilder() => new CategoriesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Categories &&
        map == other.map &&
        currentUid == other.currentUid;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, map.hashCode), currentUid.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Categories')
          ..add('map', map)
          ..add('currentUid', currentUid))
        .toString();
  }
}

class CategoriesBuilder implements Builder<Categories, CategoriesBuilder> {
  _$Categories _$v;

  MapBuilder<String, Category> _map;
  MapBuilder<String, Category> get map =>
      _$this._map ??= new MapBuilder<String, Category>();
  set map(MapBuilder<String, Category> map) => _$this._map = map;

  String _currentUid;
  String get currentUid => _$this._currentUid;
  set currentUid(String currentUid) => _$this._currentUid = currentUid;

  CategoriesBuilder();

  CategoriesBuilder get _$this {
    if (_$v != null) {
      _map = _$v.map?.toBuilder();
      _currentUid = _$v.currentUid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Categories other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Categories;
  }

  @override
  void update(void Function(CategoriesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Categories build() {
    _$Categories _$result;
    try {
      _$result =
          _$v ?? new _$Categories._(map: map.build(), currentUid: currentUid);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'map';
        map.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Categories', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
