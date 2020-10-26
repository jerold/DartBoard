// GENERATED CODE - DO NOT MODIFY BY HAND

part of creation_middleware;

// **************************************************************************
// BuiltReduxGenerator
// **************************************************************************

// ignore_for_file: avoid_classes_with_only_static_members
// ignore_for_file: annotate_overrides
// ignore_for_file: overridden_fields
// ignore_for_file: type_annotate_public_apis

class _$CreationMiddlewareActions extends CreationMiddlewareActions {
  factory _$CreationMiddlewareActions() => _$CreationMiddlewareActions._();
  _$CreationMiddlewareActions._() : super._();

  final board =
      ActionDispatcher<CreateBoardPayload>('CreationMiddlewareActions-board');
  final session = ActionDispatcher<CreateSessionPayload>(
      'CreationMiddlewareActions-session');
  final cloneSession =
      ActionDispatcher<Null>('CreationMiddlewareActions-cloneSession');
  final category = ActionDispatcher<CreateCategoryPayload>(
      'CreationMiddlewareActions-category');
  final item =
      ActionDispatcher<CreateItemPayload>('CreationMiddlewareActions-item');
  final note = ActionDispatcher<String>('CreationMiddlewareActions-note');

  @override
  void setDispatcher(Dispatcher dispatcher) {
    board.setDispatcher(dispatcher);
    session.setDispatcher(dispatcher);
    cloneSession.setDispatcher(dispatcher);
    category.setDispatcher(dispatcher);
    item.setDispatcher(dispatcher);
    note.setDispatcher(dispatcher);
  }
}

class CreationMiddlewareActionsNames {
  static final board =
      ActionName<CreateBoardPayload>('CreationMiddlewareActions-board');
  static final session =
      ActionName<CreateSessionPayload>('CreationMiddlewareActions-session');
  static final cloneSession =
      ActionName<Null>('CreationMiddlewareActions-cloneSession');
  static final category =
      ActionName<CreateCategoryPayload>('CreationMiddlewareActions-category');
  static final item =
      ActionName<CreateItemPayload>('CreationMiddlewareActions-item');
  static final note = ActionName<String>('CreationMiddlewareActions-note');
}
