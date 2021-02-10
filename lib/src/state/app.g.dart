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

  final setAuthStatus =
      ActionDispatcher<AuthStatus>('AppActions-setAuthStatus');
  final clear = ActionDispatcher<Null>('AppActions-clear');
  final showModal = ActionDispatcher<Modal>('AppActions-showModal');
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
  static final setAuthStatus =
      ActionName<AuthStatus>('AppActions-setAuthStatus');
  static final clear = ActionName<Null>('AppActions-clear');
  static final showModal = ActionName<Modal>('AppActions-showModal');
  static final hideModal = ActionName<Null>('AppActions-hideModal');
  static final toggleMobileMenu =
      ActionName<Null>('AppActions-toggleMobileMenu');
  static final hideMobileMenu = ActionName<Null>('AppActions-hideMobileMenu');
  static final showMobileMenu = ActionName<Null>('AppActions-showMobileMenu');
}

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$App extends App {
  @override
  final AuthStatus authStatus;
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
  final BuiltList<Modal> modalQueue;
  Modal __visibleModal;
  BuiltList<Session> __currentBoardSessions;
  Board __usersLatestBoard;
  BuiltList<String> __sortedBuids;
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

  factory _$App([void Function(AppBuilder) updates]) =>
      (new AppBuilder()..update(updates)).build();

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
    if (authStatus == null) {
      throw new BuiltValueNullFieldError('App', 'authStatus');
    }
    if (users == null) {
      throw new BuiltValueNullFieldError('App', 'users');
    }
    if (boards == null) {
      throw new BuiltValueNullFieldError('App', 'boards');
    }
    if (sessions == null) {
      throw new BuiltValueNullFieldError('App', 'sessions');
    }
    if (categories == null) {
      throw new BuiltValueNullFieldError('App', 'categories');
    }
    if (items == null) {
      throw new BuiltValueNullFieldError('App', 'items');
    }
    if (notes == null) {
      throw new BuiltValueNullFieldError('App', 'notes');
    }
    if (showMobileMenu == null) {
      throw new BuiltValueNullFieldError('App', 'showMobileMenu');
    }
    if (modalQueue == null) {
      throw new BuiltValueNullFieldError('App', 'modalQueue');
    }
  }

  @override
  Modal get visibleModal => __visibleModal ??= super.visibleModal;

  @override
  BuiltList<Session> get currentBoardSessions =>
      __currentBoardSessions ??= super.currentBoardSessions;

  @override
  Board get usersLatestBoard => __usersLatestBoard ??= super.usersLatestBoard;

  @override
  BuiltList<String> get sortedBuids => __sortedBuids ??= super.sortedBuids;

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
  App rebuild(void Function(AppBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppBuilder toBuilder() => new AppBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is App &&
        authStatus == other.authStatus &&
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

  AuthStatus _authStatus;
  AuthStatus get authStatus => _$this._authStatus;
  set authStatus(AuthStatus authStatus) => _$this._authStatus = authStatus;

  UsersBuilder _users;
  UsersBuilder get users => _$this._users ??= new UsersBuilder();
  set users(UsersBuilder users) => _$this._users = users;

  BoardsBuilder _boards;
  BoardsBuilder get boards => _$this._boards ??= new BoardsBuilder();
  set boards(BoardsBuilder boards) => _$this._boards = boards;

  SessionsBuilder _sessions;
  SessionsBuilder get sessions => _$this._sessions ??= new SessionsBuilder();
  set sessions(SessionsBuilder sessions) => _$this._sessions = sessions;

  CategoriesBuilder _categories;
  CategoriesBuilder get categories =>
      _$this._categories ??= new CategoriesBuilder();
  set categories(CategoriesBuilder categories) =>
      _$this._categories = categories;

  ItemsBuilder _items;
  ItemsBuilder get items => _$this._items ??= new ItemsBuilder();
  set items(ItemsBuilder items) => _$this._items = items;

  NotesBuilder _notes;
  NotesBuilder get notes => _$this._notes ??= new NotesBuilder();
  set notes(NotesBuilder notes) => _$this._notes = notes;

  bool _showMobileMenu;
  bool get showMobileMenu => _$this._showMobileMenu;
  set showMobileMenu(bool showMobileMenu) =>
      _$this._showMobileMenu = showMobileMenu;

  ListBuilder<Modal> _modalQueue;
  ListBuilder<Modal> get modalQueue =>
      _$this._modalQueue ??= new ListBuilder<Modal>();
  set modalQueue(ListBuilder<Modal> modalQueue) =>
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
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$App;
  }

  @override
  void update(void Function(AppBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$App build() {
    _$App _$result;
    try {
      _$result = _$v ??
          new _$App._(
              authStatus: authStatus,
              users: users.build(),
              boards: boards.build(),
              sessions: sessions.build(),
              categories: categories.build(),
              items: items.build(),
              notes: notes.build(),
              showMobileMenu: showMobileMenu,
              modalQueue: modalQueue.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'users';
        users.build();
        _$failedField = 'boards';
        boards.build();
        _$failedField = 'sessions';
        sessions.build();
        _$failedField = 'categories';
        categories.build();
        _$failedField = 'items';
        items.build();
        _$failedField = 'notes';
        notes.build();

        _$failedField = 'modalQueue';
        modalQueue.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'App', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
