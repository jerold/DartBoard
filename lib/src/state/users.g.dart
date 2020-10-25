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

  final update = ActionDispatcher<User>('UsersActions-update');
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
  static final update = ActionName<User>('UsersActions-update');
  static final remove = ActionName<String>('UsersActions-remove');
  static final setCurrent = ActionName<String>('UsersActions-setCurrent');
  static final addBoardToCurrentUser =
      ActionName<String>('UsersActions-addBoardToCurrentUser');
}
