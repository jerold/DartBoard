// GENERATED CODE - DO NOT MODIFY BY HAND

part of creationMiddleware;

// **************************************************************************
// Generator: BuiltReduxGenerator
// **************************************************************************

class _$CreationMiddlewareActions extends CreationMiddlewareActions {
  factory _$CreationMiddlewareActions() => _$CreationMiddlewareActions._();
  _$CreationMiddlewareActions._() : super._();

  final ActionDispatcher<CreateBoardPayload> board =
      ActionDispatcher<CreateBoardPayload>(
          'CreationMiddlewareActions-board');
  final ActionDispatcher<CreateSessionPayload> session =
      ActionDispatcher<CreateSessionPayload>(
          'CreationMiddlewareActions-session');
  final ActionDispatcher<Null> cloneSession =
      ActionDispatcher<Null>('CreationMiddlewareActions-cloneSession');
  final ActionDispatcher<CreateCategoryPayload> category =
      ActionDispatcher<CreateCategoryPayload>(
          'CreationMiddlewareActions-category');
  final ActionDispatcher<CreateItemPayload> item =
      ActionDispatcher<CreateItemPayload>('CreationMiddlewareActions-item');
  final ActionDispatcher<String> note =
      ActionDispatcher<String>('CreationMiddlewareActions-note');

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
  static final ActionName<CreateBoardPayload> board =
      ActionName<CreateBoardPayload>('CreationMiddlewareActions-board');
  static final ActionName<CreateSessionPayload> session =
      ActionName<CreateSessionPayload>('CreationMiddlewareActions-session');
  static final ActionName<Null> cloneSession =
      ActionName<Null>('CreationMiddlewareActions-cloneSession');
  static final ActionName<CreateCategoryPayload> category =
      ActionName<CreateCategoryPayload>(
          'CreationMiddlewareActions-category');
  static final ActionName<CreateItemPayload> item =
      ActionName<CreateItemPayload>('CreationMiddlewareActions-item');
  static final ActionName<String> note =
      ActionName<String>('CreationMiddlewareActions-note');
}
