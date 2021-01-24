// GENERATED CODE - DO NOT MODIFY BY HAND

part of boards;

// **************************************************************************
// BuiltReduxGenerator
// **************************************************************************

// ignore_for_file: avoid_classes_with_only_static_members
// ignore_for_file: annotate_overrides
// ignore_for_file: overridden_fields
// ignore_for_file: type_annotate_public_apis

class _$BoardsActions extends BoardsActions {
  factory _$BoardsActions() => _$BoardsActions._();
  _$BoardsActions._() : super._();

  final update = ActionDispatcher<UpdateEntity<Board>>('BoardsActions-update');
  final remove = ActionDispatcher<String>('BoardsActions-remove');
  final setCurrent = ActionDispatcher<String>('BoardsActions-setCurrent');
  final shred = ActionDispatcher<Null>('BoardsActions-shred');

  @override
  void setDispatcher(Dispatcher dispatcher) {
    update.setDispatcher(dispatcher);
    remove.setDispatcher(dispatcher);
    setCurrent.setDispatcher(dispatcher);
    shred.setDispatcher(dispatcher);
  }
}

class BoardsActionsNames {
  static final update = ActionName<UpdateEntity<Board>>('BoardsActions-update');
  static final remove = ActionName<String>('BoardsActions-remove');
  static final setCurrent = ActionName<String>('BoardsActions-setCurrent');
  static final shred = ActionName<Null>('BoardsActions-shred');
}

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Boards extends Boards {
  @override
  final BuiltMap<String, Board> map;
  @override
  final String currentUid;
  Board __current;

  factory _$Boards([void Function(BoardsBuilder) updates]) =>
      (new BoardsBuilder()..update(updates)).build();

  _$Boards._({this.map, this.currentUid}) : super._() {
    if (map == null) {
      throw new BuiltValueNullFieldError('Boards', 'map');
    }
    if (currentUid == null) {
      throw new BuiltValueNullFieldError('Boards', 'currentUid');
    }
  }

  @override
  Board get current => __current ??= super.current;

  @override
  Boards rebuild(void Function(BoardsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BoardsBuilder toBuilder() => new BoardsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Boards &&
        map == other.map &&
        currentUid == other.currentUid;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, map.hashCode), currentUid.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Boards')
          ..add('map', map)
          ..add('currentUid', currentUid))
        .toString();
  }
}

class BoardsBuilder implements Builder<Boards, BoardsBuilder> {
  _$Boards _$v;

  MapBuilder<String, Board> _map;
  MapBuilder<String, Board> get map =>
      _$this._map ??= new MapBuilder<String, Board>();
  set map(MapBuilder<String, Board> map) => _$this._map = map;

  String _currentUid;
  String get currentUid => _$this._currentUid;
  set currentUid(String currentUid) => _$this._currentUid = currentUid;

  BoardsBuilder();

  BoardsBuilder get _$this {
    if (_$v != null) {
      _map = _$v.map?.toBuilder();
      _currentUid = _$v.currentUid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Boards other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Boards;
  }

  @override
  void update(void Function(BoardsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Boards build() {
    _$Boards _$result;
    try {
      _$result =
          _$v ?? new _$Boards._(map: map.build(), currentUid: currentUid);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'map';
        map.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Boards', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
