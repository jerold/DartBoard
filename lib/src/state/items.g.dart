// GENERATED CODE - DO NOT MODIFY BY HAND

part of items;

// **************************************************************************
// BuiltReduxGenerator
// **************************************************************************

// ignore_for_file: avoid_classes_with_only_static_members
// ignore_for_file: annotate_overrides
// ignore_for_file: overridden_fields
// ignore_for_file: type_annotate_public_apis

class _$ItemsActions extends ItemsActions {
  factory _$ItemsActions() => _$ItemsActions._();
  _$ItemsActions._() : super._();

  final update = ActionDispatcher<UpdateEntity<Item>>('ItemsActions-update');
  final remove = ActionDispatcher<String>('ItemsActions-remove');
  final setCurrent = ActionDispatcher<String>('ItemsActions-setCurrent');
  final editText = ActionDispatcher<String>('ItemsActions-editText');
  final addSupport = ActionDispatcher<String>('ItemsActions-addSupport');
  final removeSupport = ActionDispatcher<String>('ItemsActions-removeSupport');
  final addPollResponse =
      ActionDispatcher<PollResponse>('ItemsActions-addPollResponse');
  final removePollResponse =
      ActionDispatcher<String>('ItemsActions-removePollResponse');
  final hide = ActionDispatcher<String>('ItemsActions-hide');
  final show = ActionDispatcher<String>('ItemsActions-show');

  @override
  void setDispatcher(Dispatcher dispatcher) {
    update.setDispatcher(dispatcher);
    remove.setDispatcher(dispatcher);
    setCurrent.setDispatcher(dispatcher);
    editText.setDispatcher(dispatcher);
    addSupport.setDispatcher(dispatcher);
    removeSupport.setDispatcher(dispatcher);
    addPollResponse.setDispatcher(dispatcher);
    removePollResponse.setDispatcher(dispatcher);
    hide.setDispatcher(dispatcher);
    show.setDispatcher(dispatcher);
  }
}

class ItemsActionsNames {
  static final update = ActionName<UpdateEntity<Item>>('ItemsActions-update');
  static final remove = ActionName<String>('ItemsActions-remove');
  static final setCurrent = ActionName<String>('ItemsActions-setCurrent');
  static final editText = ActionName<String>('ItemsActions-editText');
  static final addSupport = ActionName<String>('ItemsActions-addSupport');
  static final removeSupport = ActionName<String>('ItemsActions-removeSupport');
  static final addPollResponse =
      ActionName<PollResponse>('ItemsActions-addPollResponse');
  static final removePollResponse =
      ActionName<String>('ItemsActions-removePollResponse');
  static final hide = ActionName<String>('ItemsActions-hide');
  static final show = ActionName<String>('ItemsActions-show');
}

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Items extends Items {
  @override
  final BuiltMap<String, Item> map;
  @override
  final String currentUid;
  Item __current;
  BuiltList<Item> __visible;

  factory _$Items([void Function(ItemsBuilder) updates]) =>
      (new ItemsBuilder()..update(updates)).build();

  _$Items._({this.map, this.currentUid}) : super._() {
    if (map == null) {
      throw new BuiltValueNullFieldError('Items', 'map');
    }
    if (currentUid == null) {
      throw new BuiltValueNullFieldError('Items', 'currentUid');
    }
  }

  @override
  Item get current => __current ??= super.current;

  @override
  BuiltList<Item> get visible => __visible ??= super.visible;

  @override
  Items rebuild(void Function(ItemsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemsBuilder toBuilder() => new ItemsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Items && map == other.map && currentUid == other.currentUid;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, map.hashCode), currentUid.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Items')
          ..add('map', map)
          ..add('currentUid', currentUid))
        .toString();
  }
}

class ItemsBuilder implements Builder<Items, ItemsBuilder> {
  _$Items _$v;

  MapBuilder<String, Item> _map;
  MapBuilder<String, Item> get map =>
      _$this._map ??= new MapBuilder<String, Item>();
  set map(MapBuilder<String, Item> map) => _$this._map = map;

  String _currentUid;
  String get currentUid => _$this._currentUid;
  set currentUid(String currentUid) => _$this._currentUid = currentUid;

  ItemsBuilder();

  ItemsBuilder get _$this {
    if (_$v != null) {
      _map = _$v.map?.toBuilder();
      _currentUid = _$v.currentUid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Items other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Items;
  }

  @override
  void update(void Function(ItemsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Items build() {
    _$Items _$result;
    try {
      _$result = _$v ?? new _$Items._(map: map.build(), currentUid: currentUid);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'map';
        map.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Items', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
