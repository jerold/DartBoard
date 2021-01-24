// GENERATED CODE - DO NOT MODIFY BY HAND

part of sessions;

// **************************************************************************
// BuiltReduxGenerator
// **************************************************************************

// ignore_for_file: avoid_classes_with_only_static_members
// ignore_for_file: annotate_overrides
// ignore_for_file: overridden_fields
// ignore_for_file: type_annotate_public_apis

class _$SessionsActions extends SessionsActions {
  factory _$SessionsActions() => _$SessionsActions._();
  _$SessionsActions._() : super._();

  final update =
      ActionDispatcher<UpdateEntity<Session>>('SessionsActions-update');
  final remove = ActionDispatcher<String>('SessionsActions-remove');
  final setCurrent = ActionDispatcher<String>('SessionsActions-setCurrent');
  final start = ActionDispatcher<Null>('SessionsActions-start');
  final end = ActionDispatcher<Null>('SessionsActions-end');
  final reset = ActionDispatcher<Null>('SessionsActions-reset');
  final present = ActionDispatcher<String>('SessionsActions-present');
  final shred = ActionDispatcher<Null>('SessionsActions-shred');

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
  static final update =
      ActionName<UpdateEntity<Session>>('SessionsActions-update');
  static final remove = ActionName<String>('SessionsActions-remove');
  static final setCurrent = ActionName<String>('SessionsActions-setCurrent');
  static final start = ActionName<Null>('SessionsActions-start');
  static final end = ActionName<Null>('SessionsActions-end');
  static final reset = ActionName<Null>('SessionsActions-reset');
  static final present = ActionName<String>('SessionsActions-present');
  static final shred = ActionName<Null>('SessionsActions-shred');
}

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Sessions extends Sessions {
  @override
  final BuiltMap<String, Session> map;
  @override
  final String currentUid;
  Session __current;

  factory _$Sessions([void Function(SessionsBuilder) updates]) =>
      (new SessionsBuilder()..update(updates)).build();

  _$Sessions._({this.map, this.currentUid}) : super._() {
    if (map == null) {
      throw new BuiltValueNullFieldError('Sessions', 'map');
    }
    if (currentUid == null) {
      throw new BuiltValueNullFieldError('Sessions', 'currentUid');
    }
  }

  @override
  Session get current => __current ??= super.current;

  @override
  Sessions rebuild(void Function(SessionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SessionsBuilder toBuilder() => new SessionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Sessions &&
        map == other.map &&
        currentUid == other.currentUid;
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
      _$this._map ??= new MapBuilder<String, Session>();
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
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Sessions;
  }

  @override
  void update(void Function(SessionsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Sessions build() {
    _$Sessions _$result;
    try {
      _$result =
          _$v ?? new _$Sessions._(map: map.build(), currentUid: currentUid);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'map';
        map.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Sessions', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
