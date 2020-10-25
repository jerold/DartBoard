// GENERATED CODE - DO NOT MODIFY BY HAND

part of app;

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

class _$App extends App {
  @override
  final String authStatus;
  @override
  final Users users;
  @override
  final Boards boards;
  @override
  final Sessions sessions;
  @override
  final Categories categories;
  @override
  final Items items;
  @override
  final Notes notes;
  @override
  final bool showMobileMenu;
  @override
  final BuiltList<String> modalQueue;
  String __visibleModal;
  BuiltList<Session> __currentBoardSessions;
  Board __usersLatestBoard;
  Session __boardsLatestSession;
  BuiltList<Category> __sessionCategories;
  BuiltList<Category> __visibleSessionCategories;
  BuiltList<Category> __manageableSessionCategories;
  BuiltList<Item> __sessionItems;
  BuiltList<Item> __visibleSessionItems;
  BuiltList<Item> __manageableSessionItems;
  BuiltList<Note> __sessionNotes;
  BuiltList<Note> __visibleSessionNotes;
  BuiltList<Note> __manageableSessionNotes;
  BuiltMap<String, int> __heroPollResults;

  factory _$App([void Function(AppBuilder b) updates]) =>
      (AppBuilder()..update(updates)).build();

  _$App._(
      {this.authStatus,
      this.users,
      this.boards,
      this.sessions,
      this.categories,
      this.items,
      this.notes,
      this.showMobileMenu,
      this.modalQueue})
      : super._() {
    if (authStatus == null) throw ArgumentError.notNull('authStatus');
    if (users == null) throw ArgumentError.notNull('users');
    if (boards == null) throw ArgumentError.notNull('boards');
    if (sessions == null) throw ArgumentError.notNull('sessions');
    if (categories == null) throw ArgumentError.notNull('categories');
    if (items == null) throw ArgumentError.notNull('items');
    if (notes == null) throw ArgumentError.notNull('notes');
    if (showMobileMenu == null) {
      throw ArgumentError.notNull('showMobileMenu');
    }
    if (modalQueue == null) throw ArgumentError.notNull('modalQueue');
  }

  @override
  String get visibleModal => __visibleModal ??= super.visibleModal;

  @override
  BuiltList<Session> get currentBoardSessions =>
      __currentBoardSessions ??= super.currentBoardSessions;

  @override
  Board get usersLatestBoard => __usersLatestBoard ??= super.usersLatestBoard;

  @override
  Session get boardsLatestSession =>
      __boardsLatestSession ??= super.boardsLatestSession;

  @override
  BuiltList<Category> get sessionCategories =>
      __sessionCategories ??= super.sessionCategories;

  @override
  BuiltList<Category> get visibleSessionCategories =>
      __visibleSessionCategories ??= super.visibleSessionCategories;

  @override
  BuiltList<Category> get manageableSessionCategories =>
      __manageableSessionCategories ??= super.manageableSessionCategories;

  @override
  BuiltList<Item> get sessionItems => __sessionItems ??= super.sessionItems;

  @override
  BuiltList<Item> get visibleSessionItems =>
      __visibleSessionItems ??= super.visibleSessionItems;

  @override
  BuiltList<Item> get manageableSessionItems =>
      __manageableSessionItems ??= super.manageableSessionItems;

  @override
  BuiltList<Note> get sessionNotes => __sessionNotes ??= super.sessionNotes;

  @override
  BuiltList<Note> get visibleSessionNotes =>
      __visibleSessionNotes ??= super.visibleSessionNotes;

  @override
  BuiltList<Note> get manageableSessionNotes =>
      __manageableSessionNotes ??= super.manageableSessionNotes;

  @override
  BuiltMap<String, int> get heroPollResults =>
      __heroPollResults ??= super.heroPollResults;

  @override
  App rebuild(void Function(AppBuilder b) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppBuilder toBuilder() => AppBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! App) return false;
    return authStatus == other.authStatus &&
        users == other.users &&
        boards == other.boards &&
        sessions == other.sessions &&
        categories == other.categories &&
        items == other.items &&
        notes == other.notes &&
        showMobileMenu == other.showMobileMenu &&
        modalQueue == other.modalQueue;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, authStatus.hashCode),
                                    users.hashCode),
                                boards.hashCode),
                            sessions.hashCode),
                        categories.hashCode),
                    items.hashCode),
                notes.hashCode),
            showMobileMenu.hashCode),
        modalQueue.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('App')
          ..add('authStatus', authStatus)
          ..add('users', users)
          ..add('boards', boards)
          ..add('sessions', sessions)
          ..add('categories', categories)
          ..add('items', items)
          ..add('notes', notes)
          ..add('showMobileMenu', showMobileMenu)
          ..add('modalQueue', modalQueue))
        .toString();
  }
}

class AppBuilder implements Builder<App, AppBuilder> {
  _$App _$v;

  String _authStatus;
  String get authStatus => _$this._authStatus;
  set authStatus(String authStatus) => _$this._authStatus = authStatus;

  UsersBuilder _users;
  UsersBuilder get users => _$this._users ??= UsersBuilder();
  set users(UsersBuilder users) => _$this._users = users;

  BoardsBuilder _boards;
  BoardsBuilder get boards => _$this._boards ??= BoardsBuilder();
  set boards(BoardsBuilder boards) => _$this._boards = boards;

  SessionsBuilder _sessions;
  SessionsBuilder get sessions => _$this._sessions ??= SessionsBuilder();
  set sessions(SessionsBuilder sessions) => _$this._sessions = sessions;

  CategoriesBuilder _categories;
  CategoriesBuilder get categories =>
      _$this._categories ??= CategoriesBuilder();
  set categories(CategoriesBuilder categories) =>
      _$this._categories = categories;

  ItemsBuilder _items;
  ItemsBuilder get items => _$this._items ??= ItemsBuilder();
  set items(ItemsBuilder items) => _$this._items = items;

  NotesBuilder _notes;
  NotesBuilder get notes => _$this._notes ??= NotesBuilder();
  set notes(NotesBuilder notes) => _$this._notes = notes;

  bool _showMobileMenu;
  bool get showMobileMenu => _$this._showMobileMenu;
  set showMobileMenu(bool showMobileMenu) =>
      _$this._showMobileMenu = showMobileMenu;

  ListBuilder<String> _modalQueue;
  ListBuilder<String> get modalQueue =>
      _$this._modalQueue ??= ListBuilder<String>();
  set modalQueue(ListBuilder<String> modalQueue) =>
      _$this._modalQueue = modalQueue;

  AppBuilder();

  AppBuilder get _$this {
    if (_$v != null) {
      _authStatus = _$v.authStatus;
      _users = _$v.users?.toBuilder();
      _boards = _$v.boards?.toBuilder();
      _sessions = _$v.sessions?.toBuilder();
      _categories = _$v.categories?.toBuilder();
      _items = _$v.items?.toBuilder();
      _notes = _$v.notes?.toBuilder();
      _showMobileMenu = _$v.showMobileMenu;
      _modalQueue = _$v.modalQueue?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(App other) {
    if (other == null) throw ArgumentError.notNull('other');
    _$v = other as _$App;
  }

  @override
  void update(void Function(AppBuilder b) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$App build() {
    final _$result = _$v ??
        _$App._(
            authStatus: authStatus,
            users: users?.build(),
            boards: boards?.build(),
            sessions: sessions?.build(),
            categories: categories?.build(),
            items: items?.build(),
            notes: notes?.build(),
            showMobileMenu: showMobileMenu,
            modalQueue: modalQueue?.build());
    replace(_$result);
    return _$result;
  }
}

// **************************************************************************
// Generator: BuiltReduxGenerator
// **************************************************************************

class _$AppActions extends AppActions {
  factory _$AppActions() => _$AppActions._();
  _$AppActions._() : super._();

  final ActionDispatcher<String> setAuthStatus =
      ActionDispatcher<String>('AppActions-setAuthStatus');
  final ActionDispatcher<Null> clear =
      ActionDispatcher<Null>('AppActions-clear');
  final ActionDispatcher<String> showModal =
      ActionDispatcher<String>('AppActions-showModal');
  final ActionDispatcher<Null> hideModal =
      ActionDispatcher<Null>('AppActions-hideModal');
  final ActionDispatcher<Null> toggleMobileMenu =
      ActionDispatcher<Null>('AppActions-toggleMobileMenu');
  final ActionDispatcher<Null> hideMobileMenu =
      ActionDispatcher<Null>('AppActions-hideMobileMenu');
  final ActionDispatcher<Null> showMobileMenu =
      ActionDispatcher<Null>('AppActions-showMobileMenu');
  final UsersActions users = UsersActions();
  final BoardsActions boards = BoardsActions();
  final SessionsActions sessions = SessionsActions();
  final CategoriesActions categories = CategoriesActions();
  final ItemsActions items = ItemsActions();
  final NotesActions notes = NotesActions();
  final CreationMiddlewareActions creation = CreationMiddlewareActions();

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
  static final ActionName<String> setAuthStatus =
      ActionName<String>('AppActions-setAuthStatus');
  static final ActionName<Null> clear =
      ActionName<Null>('AppActions-clear');
  static final ActionName<String> showModal =
      ActionName<String>('AppActions-showModal');
  static final ActionName<Null> hideModal =
      ActionName<Null>('AppActions-hideModal');
  static final ActionName<Null> toggleMobileMenu =
      ActionName<Null>('AppActions-toggleMobileMenu');
  static final ActionName<Null> hideMobileMenu =
      ActionName<Null>('AppActions-hideMobileMenu');
  static final ActionName<Null> showMobileMenu =
      ActionName<Null>('AppActions-showMobileMenu');
}
