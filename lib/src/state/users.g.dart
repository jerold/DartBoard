// GENERATED CODE - DO NOT MODIFY BY HAND

part of users;

// **************************************************************************
// BuiltReduxGenerator
// **************************************************************************

// ignore_for_file: avoid_classes_with_only_static_members
// ignore_for_file: annotate_overrides
// ignore_for_file: overridden_fields
// ignore_for_file: type_annotate_public_apis

class _$UsersActions extends UsersActions {
  factory _$UsersActions() => _$UsersActions._();
  _$UsersActions._() : super._();

  final update = ActionDispatcher<UpdateEntity<User>>('UsersActions-update');
  final remove = ActionDispatcher<String>('UsersActions-remove');
  final setCurrent = ActionDispatcher<String>('UsersActions-setCurrent');
  final addBoardToCurrentUser =
      ActionDispatcher<String>('UsersActions-addBoardToCurrentUser');

  @override
  void setDispatcher(Dispatcher dispatcher) {
    update.setDispatcher(dispatcher);
    remove.setDispatcher(dispatcher);
    setCurrent.setDispatcher(dispatcher);
    addBoardToCurrentUser.setDispatcher(dispatcher);
  }
}

class UsersActionsNames {
  static final update = ActionName<UpdateEntity<User>>('UsersActions-update');
  static final remove = ActionName<String>('UsersActions-remove');
  static final setCurrent = ActionName<String>('UsersActions-setCurrent');
  static final addBoardToCurrentUser =
      ActionName<String>('UsersActions-addBoardToCurrentUser');
}

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Users extends Users {
  @override
  final BuiltMap<String, User> map;
  @override
  final String currentUid;
  User __current;
  bool __loggedIn;

  factory _$Users([void Function(UsersBuilder) updates]) =>
      (new UsersBuilder()..update(updates)).build();

  _$Users._({this.map, this.currentUid}) : super._() {
    if (map == null) {
      throw new BuiltValueNullFieldError('Users', 'map');
    }
    if (currentUid == null) {
      throw new BuiltValueNullFieldError('Users', 'currentUid');
    }
  }

  @override
  User get current => __current ??= super.current;

  @override
  bool get loggedIn => __loggedIn ??= super.loggedIn;

  @override
  Users rebuild(void Function(UsersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersBuilder toBuilder() => new UsersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Users && map == other.map && currentUid == other.currentUid;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, map.hashCode), currentUid.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Users')
          ..add('map', map)
          ..add('currentUid', currentUid))
        .toString();
  }
}

class UsersBuilder implements Builder<Users, UsersBuilder> {
  _$Users _$v;

  MapBuilder<String, User> _map;
  MapBuilder<String, User> get map =>
      _$this._map ??= new MapBuilder<String, User>();
  set map(MapBuilder<String, User> map) => _$this._map = map;

  String _currentUid;
  String get currentUid => _$this._currentUid;
  set currentUid(String currentUid) => _$this._currentUid = currentUid;

  UsersBuilder();

  UsersBuilder get _$this {
    if (_$v != null) {
      _map = _$v.map?.toBuilder();
      _currentUid = _$v.currentUid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Users other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Users;
  }

  @override
  void update(void Function(UsersBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Users build() {
    _$Users _$result;
    try {
      _$result = _$v ?? new _$Users._(map: map.build(), currentUid: currentUid);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'map';
        map.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Users', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
