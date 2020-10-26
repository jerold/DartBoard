// GENERATED CODE - DO NOT MODIFY BY HAND

part of sessions;

// **************************************************************************
// BuiltReduxGenerator
// **************************************************************************

// ignore_for_file: avoid_classes_with_only_static_members
// ignore_for_file: annotate_overrides
// ignore_for_file: overridden_fields
// ignore_for_file: type_annotate_public_apis

class _$SessionsActions extends SessionsActions {
  factory _$SessionsActions() => _$SessionsActions._();
  _$SessionsActions._() : super._();

  final update = ActionDispatcher<Session>('SessionsActions-update');
  final remove = ActionDispatcher<String>('SessionsActions-remove');
  final setCurrent = ActionDispatcher<String>('SessionsActions-setCurrent');
  final start = ActionDispatcher<Null>('SessionsActions-start');
  final end = ActionDispatcher<Null>('SessionsActions-end');
  final reset = ActionDispatcher<Null>('SessionsActions-reset');
  final present = ActionDispatcher<String>('SessionsActions-present');
  final shred = ActionDispatcher<Null>('SessionsActions-shred');

  @override
  void setDispatcher(Dispatcher dispatcher) {
    update.setDispatcher(dispatcher);
    remove.setDispatcher(dispatcher);
    setCurrent.setDispatcher(dispatcher);
    start.setDispatcher(dispatcher);
    end.setDispatcher(dispatcher);
    reset.setDispatcher(dispatcher);
    present.setDispatcher(dispatcher);
    shred.setDispatcher(dispatcher);
  }
}

class SessionsActionsNames {
  static final update = ActionName<Session>('SessionsActions-update');
  static final remove = ActionName<String>('SessionsActions-remove');
  static final setCurrent = ActionName<String>('SessionsActions-setCurrent');
  static final start = ActionName<Null>('SessionsActions-start');
  static final end = ActionName<Null>('SessionsActions-end');
  static final reset = ActionName<Null>('SessionsActions-reset');
  static final present = ActionName<String>('SessionsActions-present');
  static final shred = ActionName<Null>('SessionsActions-shred');
}
