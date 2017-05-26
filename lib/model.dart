library dartboard.model;

// import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'model.g.dart';

abstract class UserData implements Built<UserData, UserDataBuilder> {
	String get name;

  factory UserData([updates(UserDataBuilder b)]) = _$UserData;
  UserData._();
}
