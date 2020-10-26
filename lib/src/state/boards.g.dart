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

  final update = ActionDispatcher<Board>('BoardsActions-update');
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
  static final update = ActionName<Board>('BoardsActions-update');
  static final remove = ActionName<String>('BoardsActions-remove');
  static final setCurrent = ActionName<String>('BoardsActions-setCurrent');
  static final shred = ActionName<Null>('BoardsActions-shred');
}
