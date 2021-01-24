// GENERATED CODE - DO NOT MODIFY BY HAND

part of notes;

// **************************************************************************
// BuiltReduxGenerator
// **************************************************************************

// ignore_for_file: avoid_classes_with_only_static_members
// ignore_for_file: annotate_overrides
// ignore_for_file: overridden_fields
// ignore_for_file: type_annotate_public_apis

class _$NotesActions extends NotesActions {
  factory _$NotesActions() => _$NotesActions._();
  _$NotesActions._() : super._();

  final update = ActionDispatcher<UpdateEntity<Note>>('NotesActions-update');
  final remove = ActionDispatcher<String>('NotesActions-remove');
  final setCurrent = ActionDispatcher<String>('NotesActions-setCurrent');
  final pair = ActionDispatcher<PairNotePayload>('NotesActions-pair');
  final unpair = ActionDispatcher<PairNotePayload>('NotesActions-unpair');
  final hide = ActionDispatcher<String>('NotesActions-hide');
  final show = ActionDispatcher<String>('NotesActions-show');

  @override
  void setDispatcher(Dispatcher dispatcher) {
    update.setDispatcher(dispatcher);
    remove.setDispatcher(dispatcher);
    setCurrent.setDispatcher(dispatcher);
    pair.setDispatcher(dispatcher);
    unpair.setDispatcher(dispatcher);
    hide.setDispatcher(dispatcher);
    show.setDispatcher(dispatcher);
  }
}

class NotesActionsNames {
  static final update = ActionName<UpdateEntity<Note>>('NotesActions-update');
  static final remove = ActionName<String>('NotesActions-remove');
  static final setCurrent = ActionName<String>('NotesActions-setCurrent');
  static final pair = ActionName<PairNotePayload>('NotesActions-pair');
  static final unpair = ActionName<PairNotePayload>('NotesActions-unpair');
  static final hide = ActionName<String>('NotesActions-hide');
  static final show = ActionName<String>('NotesActions-show');
}

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Notes extends Notes {
  @override
  final BuiltMap<String, Note> map;
  @override
  final String currentUid;
  Note __current;
  BuiltList<Note> __visible;

  factory _$Notes([void Function(NotesBuilder) updates]) =>
      (new NotesBuilder()..update(updates)).build();

  _$Notes._({this.map, this.currentUid}) : super._() {
    if (map == null) {
      throw new BuiltValueNullFieldError('Notes', 'map');
    }
    if (currentUid == null) {
      throw new BuiltValueNullFieldError('Notes', 'currentUid');
    }
  }

  @override
  Note get current => __current ??= super.current;

  @override
  BuiltList<Note> get visible => __visible ??= super.visible;

  @override
  Notes rebuild(void Function(NotesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotesBuilder toBuilder() => new NotesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Notes && map == other.map && currentUid == other.currentUid;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, map.hashCode), currentUid.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Notes')
          ..add('map', map)
          ..add('currentUid', currentUid))
        .toString();
  }
}

class NotesBuilder implements Builder<Notes, NotesBuilder> {
  _$Notes _$v;

  MapBuilder<String, Note> _map;
  MapBuilder<String, Note> get map =>
      _$this._map ??= new MapBuilder<String, Note>();
  set map(MapBuilder<String, Note> map) => _$this._map = map;

  String _currentUid;
  String get currentUid => _$this._currentUid;
  set currentUid(String currentUid) => _$this._currentUid = currentUid;

  NotesBuilder();

  NotesBuilder get _$this {
    if (_$v != null) {
      _map = _$v.map?.toBuilder();
      _currentUid = _$v.currentUid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Notes other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Notes;
  }

  @override
  void update(void Function(NotesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Notes build() {
    _$Notes _$result;
    try {
      _$result = _$v ?? new _$Notes._(map: map.build(), currentUid: currentUid);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'map';
        map.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Notes', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
