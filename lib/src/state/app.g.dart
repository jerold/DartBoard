// GENERATED CODE - DO NOT MODIFY BY HAND

part of app;

// **************************************************************************
// BuiltReduxGenerator
// **************************************************************************

// ignore_for_file: avoid_classes_with_only_static_members
// ignore_for_file: annotate_overrides
// ignore_for_file: overridden_fields
// ignore_for_file: type_annotate_public_apis

class _$AppActions extends AppActions {
  factory _$AppActions() => _$AppActions._();
  _$AppActions._() : super._();

  final setAuthStatus = ActionDispatcher<String>('AppActions-setAuthStatus');
  final clear = ActionDispatcher<Null>('AppActions-clear');
  final showModal = ActionDispatcher<String>('AppActions-showModal');
  final hideModal = ActionDispatcher<Null>('AppActions-hideModal');
  final toggleMobileMenu =
      ActionDispatcher<Null>('AppActions-toggleMobileMenu');
  final hideMobileMenu = ActionDispatcher<Null>('AppActions-hideMobileMenu');
  final showMobileMenu = ActionDispatcher<Null>('AppActions-showMobileMenu');

  final users = UsersActions();
  final boards = BoardsActions();
  final sessions = SessionsActions();
  final categories = CategoriesActions();
  final items = ItemsActions();
  final notes = NotesActions();
  final creation = CreationMiddlewareActions();

  @override
  void setDispatcher(Dispatcher dispatcher) {
    setAuthStatus.setDispatcher(dispatcher);
    clear.setDispatcher(dispatcher);
    showModal.setDispatcher(dispatcher);
    hideModal.setDispatcher(dispatcher);
    toggleMobileMenu.setDispatcher(dispatcher);
    hideMobileMenu.setDispatcher(dispatcher);
    showMobileMenu.setDispatcher(dispatcher);

    users.setDispatcher(dispatcher);
    boards.setDispatcher(dispatcher);
    sessions.setDispatcher(dispatcher);
    categories.setDispatcher(dispatcher);
    items.setDispatcher(dispatcher);
    notes.setDispatcher(dispatcher);
    creation.setDispatcher(dispatcher);
  }
}

class AppActionsNames {
  static final setAuthStatus = ActionName<String>('AppActions-setAuthStatus');
  static final clear = ActionName<Null>('AppActions-clear');
  static final showModal = ActionName<String>('AppActions-showModal');
  static final hideModal = ActionName<Null>('AppActions-hideModal');
  static final toggleMobileMenu =
      ActionName<Null>('AppActions-toggleMobileMenu');
  static final hideMobileMenu = ActionName<Null>('AppActions-hideMobileMenu');
  static final showMobileMenu = ActionName<Null>('AppActions-showMobileMenu');
}
