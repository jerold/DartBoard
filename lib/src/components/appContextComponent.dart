import 'dart:async';

import 'package:meta/meta.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_redux/built_redux.dart';
import 'package:retro/src/models/session.dart';
import 'package:wui_builder/components.dart';

import 'package:retro/src/models/board.dart';
import 'package:retro/src/models/user.dart';
import 'package:retro/src/state/app.dart';

// Same as the key const in app.dart
const _storeKey = 'storeKey';

const homeRoute = '/home';

String boardRoute(String boardUid) => '/board/${boardUid}';
final boardRoutePattern = boardRoute(':boardUid');

String sessionRoute(String boardUid, String sessionUid) => '/board/${boardUid}/session/${sessionUid}';
final sessionRoutePattern = sessionRoute(':boardUid', ':sessionUid');

abstract class AppContextComponent<P, S> extends CComponent<P, S, Store<App, AppBuilder, AppActions>> {
  final List<StateMapper<App, AppBuilder, dynamic>> _mappers;
  final List<StreamSubscription> _subs = <StreamSubscription>[];

  AppContextComponent(P props, this._mappers, {dynamic key}) : super(props, key: key);

  @override
  String get contextKey => _storeKey;

  Store<App, AppBuilder, AppActions> get store => contextValue;

  History get _history => findHistoryInContext(context);

  void routeToHome() {
    // store.actions.boards.setCurrent('');
    // store.actions.sessions.setCurrent('');
    _history.push(homeRoute);
  }

  void routeToBoard(String boardUid) {
    // store.actions.boards.setCurrent(boardUid);
    // store.actions.sessions.setCurrent('');
    _history.push(boardRoute(boardUid));
  }

  void routeToSession(String boardUid, String sessionUid) {
    // store.actions.boards.setCurrent(boardUid);
    // store.actions.sessions.setCurrent(sessionUid);
    _history.push(sessionRoute(boardUid, sessionUid));
  }

  @mustCallSuper
  @override
  void componentWillMount() {
    _mappers.forEach((mapper) {
      _subs.add(contextValue.substateStream(mapper).listen(_update));
    });
  }

  void _update(_) => update();

  @mustCallSuper
  @override
  void componentWillUnmount() {
    _subs.forEach((s) => s.cancel());
  }
}

/// Substate Mappers

AuthStatus authStatusMapper(App app) => app.authStatus;

bool showMobileMenuMapper(App app) => app.showMobileMenu;

User currentUserMapper(App app) => app.users.current;

BuiltMap<String, User> usersMapper(App app) => app.users.map;

Board currentBoardMapper(App app) => app.boards.current;

BuiltMap<String, Board> boardsMapper(App app) => app.boards.map;

Session currentSessionMapper(App app) => app.sessions.current;

BuiltMap<String, Session> sessionsMapper(App app) => app.sessions.map;

Modal visibleModalMapper(App app) => app.visibleModal;
