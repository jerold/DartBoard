// GENERATED CODE - DO NOT MODIFY BY HAND

part of notes;

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

class _$Notes extends Notes {
  @override
  final BuiltMap<String, Note> map;
  @override
  final String currentUid;
  Note __current;
  BuiltList<Note> __visible;

  factory _$Notes([void Function(NotesBuilder b) updates]) =>
      (NotesBuilder()..update(updates)).build();

  _$Notes._({this.map, this.currentUid}) : super._() {
    if (map == null) throw ArgumentError.notNull('map');
    if (currentUid == null) throw ArgumentError.notNull('currentUid');
  }

  @override
  Note get current => __current ??= super.current;

  @override
  BuiltList<Note> get visible => __visible ??= super.visible;

  @override
  Notes rebuild(void Function(NotesBuilder b) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NotesBuilder toBuilder() => NotesBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Notes) return false;
    return map == other.map && currentUid == other.currentUid;
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
      _$this._map ??= MapBuilder<String, Note>();
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
    if (other == null) throw ArgumentError.notNull('other');
    _$v = other as _$Notes;
  }

  @override
  void update(void Function(NotesBuilder b) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Notes build() {
    final _$result =
        _$v ?? _$Notes._(map: map?.build(), currentUid: currentUid);
    replace(_$result);
    return _$result;
  }
}

// **************************************************************************
// Generator: BuiltReduxGenerator
// **************************************************************************

class _$NotesActions extends NotesActions {
  factory _$NotesActions() => _$NotesActions._();
  _$NotesActions._() : super._();

  final ActionDispatcher<Note> update =
      ActionDispatcher<Note>('NotesActions-update');
  final ActionDispatcher<String> remove =
      ActionDispatcher<String>('NotesActions-remove');
  final ActionDispatcher<String> setCurrent =
      ActionDispatcher<String>('NotesActions-setCurrent');
  final ActionDispatcher<PairNotePayload> pair =
      ActionDispatcher<PairNotePayload>('NotesActions-pair');
  final ActionDispatcher<PairNotePayload> unpair =
      ActionDispatcher<PairNotePayload>('NotesActions-unpair');
  final ActionDispatcher<String> hide =
      ActionDispatcher<String>('NotesActions-hide');
  final ActionDispatcher<String> show =
      ActionDispatcher<String>('NotesActions-show');

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
  static final ActionName<Note> update =
      ActionName<Note>('NotesActions-update');
  static final ActionName<String> remove =
      ActionName<String>('NotesActions-remove');
  static final ActionName<String> setCurrent =
      ActionName<String>('NotesActions-setCurrent');
  static final ActionName<PairNotePayload> pair =
      ActionName<PairNotePayload>('NotesActions-pair');
  static final ActionName<PairNotePayload> unpair =
      ActionName<PairNotePayload>('NotesActions-unpair');
  static final ActionName<String> hide =
      ActionName<String>('NotesActions-hide');
  static final ActionName<String> show =
      ActionName<String>('NotesActions-show');
}