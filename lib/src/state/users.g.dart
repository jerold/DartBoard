// GENERATED CODE - DO NOT MODIFY BY HAND

part of users;

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

class _$Users extends Users {
  @override
  final BuiltMap<String, User> map;
  @override
  final String currentUid;
  User __current;
  bool __loggedIn;

  factory _$Users([void Function(UsersBuilder b) updates]) =>
      (UsersBuilder()..update(updates)).build();

  _$Users._({this.map, this.currentUid}) : super._() {
    if (map == null) throw ArgumentError.notNull('map');
    if (currentUid == null) throw ArgumentError.notNull('currentUid');
  }

  @override
  User get current => __current ??= super.current;

  @override
  bool get loggedIn => __loggedIn ??= super.loggedIn;

  @override
  Users rebuild(void Function(UsersBuilder b) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersBuilder toBuilder() => UsersBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Users) return false;
    return map == other.map && currentUid == other.currentUid;
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
      _$this._map ??= MapBuilder<String, User>();
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
    if (other == null) throw ArgumentError.notNull('other');
    _$v = other as _$Users;
  }

  @override
  void update(void Function(UsersBuilder b) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Users build() {
    final _$result =
        _$v ?? _$Users._(map: map?.build(), currentUid: currentUid);
    replace(_$result);
    return _$result;
  }
}

// **************************************************************************
// Generator: BuiltReduxGenerator
// **************************************************************************

class _$UsersActions extends UsersActions {
  factory _$UsersActions() => _$UsersActions._();
  _$UsersActions._() : super._();

  final ActionDispatcher<User> update =
      ActionDispatcher<User>('UsersActions-update');
  final ActionDispatcher<String> remove =
      ActionDispatcher<String>('UsersActions-remove');
  final ActionDispatcher<String> setCurrent =
      ActionDispatcher<String>('UsersActions-setCurrent');
  final ActionDispatcher<String> addBoardToCurrentUser =
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
  static final ActionName<User> update =
      ActionName<User>('UsersActions-update');
  static final ActionName<String> remove =
      ActionName<String>('UsersActions-remove');
  static final ActionName<String> setCurrent =
      ActionName<String>('UsersActions-setCurrent');
  static final ActionName<String> addBoardToCurrentUser =
      ActionName<String>('UsersActions-addBoardToCurrentUser');
}
