// GENERATED CODE - DO NOT MODIFY BY HAND

part of dartboard.model;

// **************************************************************************
// Generator: BuiltValueGenerator
// Target: abstract class UserData
// **************************************************************************

class _$UserData extends UserData {
  @override
  final String name;

  factory _$UserData([updates(UserDataBuilder b)]) =>
      (new UserDataBuilder()..update(updates)).build();

  _$UserData._({this.name}) : super._() {
    if (name == null) throw new ArgumentError.notNull('name');
  }

  @override
  UserData rebuild(updates(UserDataBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  UserDataBuilder toBuilder() => new UserDataBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (other is! UserData) return false;
    return name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc(0, name.hashCode));
  }

  @override
  String toString() {
    return 'UserData {'
        'name=${name.toString()},\n'
        '}';
  }
}

class UserDataBuilder implements Builder<UserData, UserDataBuilder> {
  UserData _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  UserDataBuilder();

  UserDataBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserData other) {
    _$v = other;
  }

  @override
  void update(updates(UserDataBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  UserData build() {
    final result = _$v ?? new _$UserData._(name: name);
    replace(result);
    return result;
  }
}
