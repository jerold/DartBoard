// GENERATED CODE - DO NOT MODIFY BY HAND

part of note;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Note> _$noteSerializer = new _$NoteSerializer();

class _$NoteSerializer implements StructuredSerializer<Note> {
  @override
  final Iterable<Type> types = const [Note, _$Note];
  @override
  final String wireName = 'Note';

  @override
  Iterable<Object> serialize(Serializers serializers, Note object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'boardUid',
      serializers.serialize(object.boardUid,
          specifiedType: const FullType(String)),
      'sessionUid',
      serializers.serialize(object.sessionUid,
          specifiedType: const FullType(String)),
      'ownerUid',
      serializers.serialize(object.ownerUid,
          specifiedType: const FullType(String)),
      'itemUids',
      serializers.serialize(object.itemUids,
          specifiedType: const FullType(
              BuiltMap, const [const FullType(String), const FullType(bool)])),
      'text',
      serializers.serialize(object.text, specifiedType: const FullType(String)),
      'visible',
      serializers.serialize(object.visible,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  Note deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NoteBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'boardUid':
          result.boardUid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sessionUid':
          result.sessionUid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ownerUid':
          result.ownerUid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'itemUids':
          result.itemUids.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(bool)])));
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'visible':
          result.visible = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Note extends Note {
  @override
  final String uid;
  @override
  final String boardUid;
  @override
  final String sessionUid;
  @override
  final String ownerUid;
  @override
  final BuiltMap<String, bool> itemUids;
  @override
  final String text;
  @override
  final bool visible;

  factory _$Note([void Function(NoteBuilder) updates]) =>
      (new NoteBuilder()..update(updates)).build();

  _$Note._(
      {this.uid,
      this.boardUid,
      this.sessionUid,
      this.ownerUid,
      this.itemUids,
      this.text,
      this.visible})
      : super._() {
    if (boardUid == null) {
      throw new BuiltValueNullFieldError('Note', 'boardUid');
    }
    if (sessionUid == null) {
      throw new BuiltValueNullFieldError('Note', 'sessionUid');
    }
    if (ownerUid == null) {
      throw new BuiltValueNullFieldError('Note', 'ownerUid');
    }
    if (itemUids == null) {
      throw new BuiltValueNullFieldError('Note', 'itemUids');
    }
    if (text == null) {
      throw new BuiltValueNullFieldError('Note', 'text');
    }
    if (visible == null) {
      throw new BuiltValueNullFieldError('Note', 'visible');
    }
  }

  @override
  Note rebuild(void Function(NoteBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoteBuilder toBuilder() => new NoteBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Note &&
        uid == other.uid &&
        boardUid == other.boardUid &&
        sessionUid == other.sessionUid &&
        ownerUid == other.ownerUid &&
        itemUids == other.itemUids &&
        text == other.text &&
        visible == other.visible;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, uid.hashCode), boardUid.hashCode),
                        sessionUid.hashCode),
                    ownerUid.hashCode),
                itemUids.hashCode),
            text.hashCode),
        visible.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Note')
          ..add('uid', uid)
          ..add('boardUid', boardUid)
          ..add('sessionUid', sessionUid)
          ..add('ownerUid', ownerUid)
          ..add('itemUids', itemUids)
          ..add('text', text)
          ..add('visible', visible))
        .toString();
  }
}

class NoteBuilder implements Builder<Note, NoteBuilder> {
  _$Note _$v;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _boardUid;
  String get boardUid => _$this._boardUid;
  set boardUid(String boardUid) => _$this._boardUid = boardUid;

  String _sessionUid;
  String get sessionUid => _$this._sessionUid;
  set sessionUid(String sessionUid) => _$this._sessionUid = sessionUid;

  String _ownerUid;
  String get ownerUid => _$this._ownerUid;
  set ownerUid(String ownerUid) => _$this._ownerUid = ownerUid;

  MapBuilder<String, bool> _itemUids;
  MapBuilder<String, bool> get itemUids =>
      _$this._itemUids ??= new MapBuilder<String, bool>();
  set itemUids(MapBuilder<String, bool> itemUids) =>
      _$this._itemUids = itemUids;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  bool _visible;
  bool get visible => _$this._visible;
  set visible(bool visible) => _$this._visible = visible;

  NoteBuilder();

  NoteBuilder get _$this {
    if (_$v != null) {
      _uid = _$v.uid;
      _boardUid = _$v.boardUid;
      _sessionUid = _$v.sessionUid;
      _ownerUid = _$v.ownerUid;
      _itemUids = _$v.itemUids?.toBuilder();
      _text = _$v.text;
      _visible = _$v.visible;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Note other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Note;
  }

  @override
  void update(void Function(NoteBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Note build() {
    _$Note _$result;
    try {
      _$result = _$v ??
          new _$Note._(
              uid: uid,
              boardUid: boardUid,
              sessionUid: sessionUid,
              ownerUid: ownerUid,
              itemUids: itemUids.build(),
              text: text,
              visible: visible);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'itemUids';
        itemUids.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Note', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
