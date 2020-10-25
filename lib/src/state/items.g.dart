// GENERATED CODE - DO NOT MODIFY BY HAND

part of items;

// **************************************************************************
// Generator: BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_returning_this
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first

class _$Items extends Items {
  @override
  final BuiltMap<String, Item> map;
  @override
  final String currentUid;
  Item __current;
  BuiltList<Item> __visible;

  factory _$Items([void Function(ItemsBuilder b) updates]) =>
      (ItemsBuilder()..update(updates)).build();

  _$Items._({this.map, this.currentUid}) : super._() {
    if (map == null) throw ArgumentError.notNull('map');
    if (currentUid == null) throw ArgumentError.notNull('currentUid');
  }

  @override
  Item get current => __current ??= super.current;

  @override
  BuiltList<Item> get visible => __visible ??= super.visible;

  @override
  Items rebuild(void Function(ItemsBuilder b) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ItemsBuilder toBuilder() => ItemsBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Items) return false;
    return map == other.map && currentUid == other.currentUid;
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
      _$this._map ??= MapBuilder<String, Item>();
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
    if (other == null) throw ArgumentError.notNull('other');
    _$v = other as _$Items;
  }

  @override
  void update(void Function(ItemsBuilder b) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Items build() {
    final _$result =
        _$v ?? _$Items._(map: map?.build(), currentUid: currentUid);
    replace(_$result);
    return _$result;
  }
}

// **************************************************************************
// Generator: BuiltReduxGenerator
// **************************************************************************

class _$ItemsActions extends ItemsActions {
  factory _$ItemsActions() => _$ItemsActions._();
  _$ItemsActions._() : super._();

  final ActionDispatcher<Item> update =
      ActionDispatcher<Item>('ItemsActions-update');
  final ActionDispatcher<String> remove =
      ActionDispatcher<String>('ItemsActions-remove');
  final ActionDispatcher<String> setCurrent =
      ActionDispatcher<String>('ItemsActions-setCurrent');
  final ActionDispatcher<String> editText =
      ActionDispatcher<String>('ItemsActions-editText');
  final ActionDispatcher<String> addSupport =
      ActionDispatcher<String>('ItemsActions-addSupport');
  final ActionDispatcher<String> removeSupport =
      ActionDispatcher<String>('ItemsActions-removeSupport');
  final ActionDispatcher<PollResponse> addPollResponse =
      ActionDispatcher<PollResponse>('ItemsActions-addPollResponse');
  final ActionDispatcher<String> removePollResponse =
      ActionDispatcher<String>('ItemsActions-removePollResponse');
  final ActionDispatcher<String> hide =
      ActionDispatcher<String>('ItemsActions-hide');
  final ActionDispatcher<String> show =
      ActionDispatcher<String>('ItemsActions-show');

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
  static final ActionName<Item> update =
      ActionName<Item>('ItemsActions-update');
  static final ActionName<String> remove =
      ActionName<String>('ItemsActions-remove');
  static final ActionName<String> setCurrent =
      ActionName<String>('ItemsActions-setCurrent');
  static final ActionName<String> editText =
      ActionName<String>('ItemsActions-editText');
  static final ActionName<String> addSupport =
      ActionName<String>('ItemsActions-addSupport');
  static final ActionName<String> removeSupport =
      ActionName<String>('ItemsActions-removeSupport');
  static final ActionName<PollResponse> addPollResponse =
      ActionName<PollResponse>('ItemsActions-addPollResponse');
  static final ActionName<String> removePollResponse =
      ActionName<String>('ItemsActions-removePollResponse');
  static final ActionName<String> hide =
      ActionName<String>('ItemsActions-hide');
  static final ActionName<String> show =
      ActionName<String>('ItemsActions-show');
}
