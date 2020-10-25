// GENERATED CODE - DO NOT MODIFY BY HAND

part of sessions;

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

class _$Sessions extends Sessions {
  @override
  final BuiltMap<String, Session> map;
  @override
  final String currentUid;
  Session __current;

  factory _$Sessions([void Function(SessionsBuilder b) updates]) =>
      (SessionsBuilder()..update(updates)).build();

  _$Sessions._({this.map, this.currentUid}) : super._() {
    if (map == null) throw ArgumentError.notNull('map');
    if (currentUid == null) throw ArgumentError.notNull('currentUid');
  }

  @override
  Session get current => __current ??= super.current;

  @override
  Sessions rebuild(void Function(SessionsBuilder b) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SessionsBuilder toBuilder() => SessionsBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Sessions) return false;
    return map == other.map && currentUid == other.currentUid;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, map.hashCode), currentUid.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Sessions')
          ..add('map', map)
          ..add('currentUid', currentUid))
        .toString();
  }
}

class SessionsBuilder implements Builder<Sessions, SessionsBuilder> {
  _$Sessions _$v;

  MapBuilder<String, Session> _map;
  MapBuilder<String, Session> get map =>
      _$this._map ??= MapBuilder<String, Session>();
  set map(MapBuilder<String, Session> map) => _$this._map = map;

  String _currentUid;
  String get currentUid => _$this._currentUid;
  set currentUid(String currentUid) => _$this._currentUid = currentUid;

  SessionsBuilder();

  SessionsBuilder get _$this {
    if (_$v != null) {
      _map = _$v.map?.toBuilder();
      _currentUid = _$v.currentUid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Sessions other) {
    if (other == null) throw ArgumentError.notNull('other');
    _$v = other as _$Sessions;
  }

  @override
  void update(void Function(SessionsBuilder b) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Sessions build() {
    final _$result =
        _$v ?? _$Sessions._(map: map?.build(), currentUid: currentUid);
    replace(_$result);
    return _$result;
  }
}

// **************************************************************************
// Generator: BuiltReduxGenerator
// **************************************************************************

class _$SessionsActions extends SessionsActions {
  factory _$SessionsActions() => _$SessionsActions._();
  _$SessionsActions._() : super._();

  final ActionDispatcher<Session> update =
      ActionDispatcher<Session>('SessionsActions-update');
  final ActionDispatcher<String> remove =
      ActionDispatcher<String>('SessionsActions-remove');
  final ActionDispatcher<String> setCurrent =
      ActionDispatcher<String>('SessionsActions-setCurrent');
  final ActionDispatcher<Null> start =
      ActionDispatcher<Null>('SessionsActions-start');
  final ActionDispatcher<Null> end =
      ActionDispatcher<Null>('SessionsActions-end');
  final ActionDispatcher<Null> reset =
      ActionDispatcher<Null>('SessionsActions-reset');
  final ActionDispatcher<String> present =
      ActionDispatcher<String>('SessionsActions-present');
  final ActionDispatcher<Null> shred =
      ActionDispatcher<Null>('SessionsActions-shred');

  @override
  void setDispatcher(Dispatcher dispatcher) {
    update.setDispatcher(dispatcher);
    remove.setDispatcher(dispatcher);
    setCurrent.setDispatcher(dispatcher);
    start.setDispatcher(dispatcher);
    end.setDispatcher(dispatcher);
    reset.setDispatcher(dispatcher);
    present.setDispatcher(dispatcher);
    shred.setDispatcher(dispatcher);
  }
}

class SessionsActionsNames {
  static final ActionName<Session> update =
      ActionName<Session>('SessionsActions-update');
  static final ActionName<String> remove =
      ActionName<String>('SessionsActions-remove');
  static final ActionName<String> setCurrent =
      ActionName<String>('SessionsActions-setCurrent');
  static final ActionName<Null> start =
      ActionName<Null>('SessionsActions-start');
  static final ActionName<Null> end =
      ActionName<Null>('SessionsActions-end');
  static final ActionName<Null> reset =
      ActionName<Null>('SessionsActions-reset');
  static final ActionName<String> present =
      ActionName<String>('SessionsActions-present');
  static final ActionName<Null> shred =
      ActionName<Null>('SessionsActions-shred');
}
