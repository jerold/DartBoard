library users;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_redux/built_redux.dart';

import '../models/user.dart';
import 'app.dart';

part 'users.g.dart';

////////////////////
/// Actions
///////////////////

/// [UsersActions]
abstract class UsersActions extends ReduxActions {
  ActionDispatcher<UpdateEntity<User>> update;
  ActionDispatcher<String> remove;
  ActionDispatcher<String> setCurrent;

  ActionDispatcher<String> addBoardToCurrentUser;

  // factory to create on instance of the generated implementation of UsersActions
  UsersActions._();
  factory UsersActions() => _$UsersActions();
}

////////////////////
/// State
///////////////////

/// [Users]
abstract class Users implements Built<Users, UsersBuilder> {
  /// [map] contains a map of user.id to User
  BuiltMap<String, User> get map;

  String get currentUid;

  // Built value boilerplate
  Users._();
  factory Users([Function(UsersBuilder b) updates]) =>
      _$Users((UsersBuilder b) => b..currentUid = '');

  @memoized
  User get current => map[currentUid];

  @memoized
  bool get loggedIn => currentUid != '';
}

////////////////////
/// Main Reducer
///////////////////

NestedReducerBuilder<App, AppBuilder, Users, UsersBuilder>
    createUsersReducer() =>
        NestedReducerBuilder<App, AppBuilder, Users, UsersBuilder>(
          (state) => state.users,
          (builder) => builder.users,
        )
          ..add<UpdateEntity<User>>(UsersActionsNames.update, _updateUser)
          ..add<String>(UsersActionsNames.remove, _removeUser)
          ..add<String>(UsersActionsNames.setCurrent, _setCurrentUser);

////////////////////
/// Reducers
///////////////////

UsersBuilder _updateUser(
        Users state, Action<UpdateEntity<User>> action, UsersBuilder builder) =>
    builder
      ..map[action.payload.uid] =
          (action.payload.entity.toBuilder()..uid = action.payload.uid).build();

UsersBuilder _removeUser(
        Users state, Action<String> action, UsersBuilder builder) =>
    builder..map.remove(action.payload);

UsersBuilder _setCurrentUser(
        Users state, Action<String> action, UsersBuilder builder) =>
    builder..currentUid = action.payload;
