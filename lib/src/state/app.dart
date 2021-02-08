library app;

import 'package:intl/intl.dart';

import 'package:built_value/built_value.dart';
import 'package:built_redux/built_redux.dart';
import 'package:built_collection/built_collection.dart';

import './users.dart';
import './boards.dart';
import './sessions.dart';
import './categories.dart';
import './items.dart';
import './notes.dart';

import '../models/board.dart';
import '../models/session.dart';
import '../models/category.dart';
import '../models/item.dart';
import '../models/note.dart';

import '../middleware/creationMiddleware.dart';

part 'app.g.dart';

class UpdateEntity<T> {
  final String uid;
  final T entity;

  UpdateEntity(this.uid, this.entity);
}

class AuthStatus {
  static String loading = 'loading';

  static String signedIn = 'signed in';

  static String signedOut = 'signed out';
}

const String CONFIRM_SHRED_BOARD_MODAL = 'Confirm Shred Board Modal';
const String CONFIRM_SHRED_SESSION_MODAL = 'Confirm Shred Session Modal';
const String CREATE_CATEGORY_MODAL = 'Create Category Modal';
const String CREATE_ITEM_MODAL = 'Create Item Modal';
const String CREATE_NOTE_MODAL = 'Create Note Modal';
const String MANAGE_CONTENT_MODAL = 'Manage Content Modal';
const String SIGN_IN_MODAL = 'Sign In Modal';
const String NO_MODAL = 'No Modal';

int now() => DateTime.now().millisecondsSinceEpoch;

final _dateFormat = DateFormat.yMMMMd('en_US');
final _timeFormat = DateFormat.Hm('en_US');

String date(int epoch) => _dateFormat.format(DateTime.fromMillisecondsSinceEpoch(epoch));
String dateTime(int epoch) => '${time(epoch)} on ${date(epoch)}';
String time(int epoch) => _timeFormat.format(DateTime.fromMillisecondsSinceEpoch(epoch));

////////////////////
/// Actions
///////////////////

/// [AppActions]
abstract class AppActions extends ReduxActions {
  ActionDispatcher<String> setAuthStatus;

  ActionDispatcher<Null> clear;
  ActionDispatcher<String> showModal;
  ActionDispatcher<Null> hideModal;

  ActionDispatcher<Null> toggleMobileMenu;
  ActionDispatcher<Null> hideMobileMenu;
  ActionDispatcher<Null> showMobileMenu;

  UsersActions users;
  BoardsActions boards;
  SessionsActions sessions;
  CategoriesActions categories;
  ItemsActions items;
  NotesActions notes;

  CreationMiddlewareActions creation;

  // factory to create on instance of the generated implementation of AppActions
  AppActions._();
  factory AppActions() => _$AppActions();
}

////////////////////
/// State
///////////////////

/// [App]
abstract class App implements Built<App, AppBuilder> {
  /// [authStatus] indicates the auth status
  String get authStatus;

  /// [users]
  Users get users;

  /// [boards]
  Boards get boards;
  // Notes: sub to multiple boards to get board names and data for
  // each of a user's boards on dashboard.

  /// [Sessions]
  Sessions get sessions;
  // Notes: likely only need one session sub at a time. List of Sessions
  // could just have a timestamp for the session (available on board object).

  /// [Categories]
  Categories get categories;

  /// [Items]
  Items get items;

  /// [Notes]
  Notes get notes;

  bool get showMobileMenu;

  BuiltList<String> get modalQueue;

  // Built value boilerplate
  App._();
  factory App([Function(AppBuilder b) updates]) => _$App((AppBuilder b) => b
    ..authStatus = AuthStatus.loading
    ..users = Users().toBuilder()
    ..boards = Boards().toBuilder()
    ..sessions = Sessions().toBuilder()
    ..categories = Categories().toBuilder()
    ..items = Items().toBuilder()
    ..notes = Notes().toBuilder()
    ..showMobileMenu = false);

  @memoized
  String get visibleModal => modalQueue.isNotEmpty ? modalQueue.last : NO_MODAL;

  // TODO: do this or clear sessions everytime current board changes?
  @memoized
  BuiltList<Session> get currentBoardSessions => BuiltList<Session>(
        sessions.map.values.where((Session s) => s.boardUid == boards.currentUid),
      );

  @memoized
  Board get usersLatestBoard {
    var maxUid = '';
    var maxTime = 0;
    users.current.boardUids.forEach((uid, time) {
      if (time > maxTime) {
        maxUid = uid;
        maxTime = time;
      }
    });
    return boards.map[maxUid];
  }

  @memoized
  Session get boardsLatestSession => sessions.map[boards.current.latestSessionUid];

  @memoized
  BuiltList<Category> get sessionCategories => BuiltList<Category>(
        categories.map.values.where((Category c) => c.sessionUid == sessions.currentUid),
      );

  @memoized
  BuiltList<Category> get visibleSessionCategories => BuiltList<Category>(
        categories.visible.where((Category c) => c.sessionUid == sessions.currentUid),
      );

  @memoized
  BuiltList<Category> get manageableSessionCategories => sessionCategories;

  @memoized
  BuiltList<Item> get sessionItems => BuiltList<Item>(
        items.map.values.where((Item i) => i.sessionUid == sessions.currentUid),
      );

  @memoized
  BuiltList<Item> get visibleSessionItems => BuiltList<Item>(
        items.visible.where((Item i) => i.sessionUid == sessions.currentUid),
      );

  @memoized
  BuiltList<Item> get manageableSessionItems => BuiltList<Item>(
        sessionItems.where((Item i) => i.ownerUid == users.currentUid),
      );

  @memoized
  BuiltList<Note> get sessionNotes => BuiltList<Note>(
        notes.map.values.where((Note n) => n.sessionUid == sessions.currentUid),
      );

  @memoized
  BuiltList<Note> get visibleSessionNotes => BuiltList<Note>(
        notes.visible.where((Note n) => n.sessionUid == sessions.currentUid),
      );

  @memoized
  BuiltList<Note> get manageableSessionNotes => BuiltList<Note>(
        sessionNotes.where((Note n) => n.ownerUid == users.currentUid),
      );

  Item get hero => items.map[sessions.current?.presentedUid];

  @memoized
  BuiltMap<String, int> get heroPollResults {
    var results = MapBuilder<String, int>();
    if (hero != null) {
      hero.pollOptions.forEach((option) {
        results[option] = hero.optionPercentage(option);
      });
    }
    return results.build();
  }
}

////////////////////
/// Main Reducer
///////////////////

Reducer<App, AppBuilder, dynamic> createReducer() => (ReducerBuilder<App, AppBuilder>()
      ..add<String>(AppActionsNames.setAuthStatus, _setAuthStatus)
      ..add<Null>(AppActionsNames.clear, _clear)
      ..add<String>(AppActionsNames.showModal, _showModal)
      ..add<Null>(AppActionsNames.hideModal, _hideModal)
      ..add<Null>(AppActionsNames.toggleMobileMenu, _toggleMobileMenu)
      ..add<Null>(AppActionsNames.hideMobileMenu, _hideMobileMenu)
      ..add<Null>(AppActionsNames.showMobileMenu, _showMobileMenu)
      ..combineNested(createBoardsReducer())
      ..combineNested(createCategoriesReducer())
      ..combineNested(createItemsReducer())
      ..combineNested(createNotesReducer())
      ..combineNested(createSessionsReducer())
      ..combineNested(createUsersReducer()))
    .build();

////////////////////
/// Reducers
///////////////////

AppBuilder _setAuthStatus(App state, Action<String> action, AppBuilder b) => b..authStatus = action.payload;

AppBuilder _clear(App state, Action<Null> action, AppBuilder b) => b
  ..users = Users().toBuilder()
  ..boards = Boards().toBuilder()
  ..sessions = Sessions().toBuilder()
  ..categories = Categories().toBuilder()
  ..items = Items().toBuilder()
  ..notes = Notes().toBuilder();

AppBuilder _showModal(App state, Action<String> action, AppBuilder b) => b..modalQueue.add(action.payload);

AppBuilder _hideModal(App state, Action<String> action, AppBuilder b) => b..modalQueue.removeLast();

AppBuilder _toggleMobileMenu(App state, Action<String> action, AppBuilder b) =>
    b..showMobileMenu = !state.showMobileMenu;

AppBuilder _hideMobileMenu(App state, Action<Null> action, AppBuilder b) => b..showMobileMenu = false;

AppBuilder _showMobileMenu(App state, Action<Null> action, AppBuilder b) => b..showMobileMenu = true;
