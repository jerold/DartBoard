import 'package:built_redux/built_redux.dart';
import 'package:built_redux/src/middleware.dart';
import 'package:path/path.dart';

import '../state/app.dart';
import '../state/users.dart';
import '../state/boards.dart';
import '../state/sessions.dart';
import '../state/categories.dart';
import '../state/items.dart';
import '../state/notes.dart';

import '../firebaseClient.dart';

import '../models/user.dart';
import '../models/board.dart';
import '../models/session.dart';
import '../models/item.dart';

////////////////////
/// Action Map
///////////////////

typedef MiddlewareHandler<T> = Null Function(
    MiddlewareApi<App, AppBuilder, AppActions> api,
    ActionHandler next,
    Action<T> action);

Middleware<App, AppBuilder, AppActions> createRefMiddleware(
        FirebaseClient client) =>
    (MiddlewareBuilder<App, AppBuilder, AppActions>()
          ..add<String>(CategoriesActionsNames.hide, _hideCategory(client))
          ..add<String>(CategoriesActionsNames.show, _showCategory(client))
          ..add<String>(ItemsActionsNames.editText, _editItemText(client))
          ..add<String>(ItemsActionsNames.addSupport, _addSupport(client))
          ..add<String>(ItemsActionsNames.removeSupport, _removeSupport(client))
          ..add<PollResponse>(
              ItemsActionsNames.addPollResponse, _addPollResponse(client))
          ..add<String>(
              ItemsActionsNames.removePollResponse, _removePollResponse(client))
          ..add<String>(ItemsActionsNames.hide, _hideItem(client))
          ..add<String>(ItemsActionsNames.show, _showItem(client))
          ..add<String>(NotesActionsNames.hide, _hideNote(client))
          ..add<String>(NotesActionsNames.show, _showNote(client))
          ..add<PairNotePayload>(NotesActionsNames.pair, _pair(client))
          ..add<PairNotePayload>(NotesActionsNames.unpair, _unpair(client))
          ..add<Null>(SessionsActionsNames.start, _startSession(client))
          ..add<Null>(SessionsActionsNames.end, _endSession(client))
          ..add<Null>(SessionsActionsNames.reset, _resetSession(client))
          ..add<String>(SessionsActionsNames.present, _present(client))
          ..add<Null>(SessionsActionsNames.shred, _shredSession(client))
          ..add<UpdateEntity<User>>(
              UsersActionsNames.update, _onUpdateUser(client))
          ..add<String>(UsersActionsNames.setCurrent, _onSetCurrentUser(client))
          ..add<UpdateEntity<Board>>(
              BoardsActionsNames.update, _onUpdateBoard(client))
          ..add<String>(
              BoardsActionsNames.setCurrent, _onSetCurrentBoard(client))
          ..add<Null>(BoardsActionsNames.shred, _shredBoard(client))
          ..add<UpdateEntity<Session>>(
              SessionsActionsNames.update, _onUpdateSession(client))
          ..add<String>(
              SessionsActionsNames.setCurrent, _onSetCurrentSession(client)))
        .build();

////////////////////
/// Handlers
///////////////////

// Update handlers

/// subscribe to the current user's boards
MiddlewareHandler<UpdateEntity<User>> _onUpdateUser(FirebaseClient client) =>
    (MiddlewareApi<App, AppBuilder, AppActions> api, ActionHandler next,
        Action<UpdateEntity<User>> action) {
      next(action);
      if (action.payload.uid == api.state.users.currentUid) {
        _updateCurrentUserSubs(client, api);
      }
    };

/// subscribe to the current boards's users
MiddlewareHandler<UpdateEntity<Board>> _onUpdateBoard(FirebaseClient client) =>
    (MiddlewareApi<App, AppBuilder, AppActions> api, ActionHandler next,
        Action<UpdateEntity<Board>> action) {
      next(action);
      if (action.payload.uid == api.state.boards.currentUid) {
        _updateCurrentBoardSubs(client, api);
      }
    };

/// subscribe to the current boards's users
MiddlewareHandler<UpdateEntity<Session>> _onUpdateSession(
        FirebaseClient client) =>
    (MiddlewareApi<App, AppBuilder, AppActions> api, ActionHandler next,
        Action<UpdateEntity<Session>> action) {
      next(action);
      if (action.payload.uid == api.state.sessions.currentUid) {
        _updateCurrentSessionSubs(client, api);
      }
    };

// Set current handlers
MiddlewareHandler<String> _onSetCurrentUser(FirebaseClient client) =>
    (MiddlewareApi<App, AppBuilder, AppActions> api, ActionHandler next,
        Action<String> action) {
      next(action);
      _updateCurrentUserSubs(client, api);
    };

// TODO: unsub from old board?
MiddlewareHandler<String> _onSetCurrentBoard(FirebaseClient client) =>
    (MiddlewareApi<App, AppBuilder, AppActions> api, ActionHandler next,
        Action<String> action) {
      next(action);
      _updateCurrentBoardSubs(client, api);

      var userUid = api.state.users.currentUid;
      var boardUid = api.state.boards.currentUid;
      if (userUid != "" && boardUid != "") {
        client.setUsersLatestBoard(userUid, boardUid);
      }
    };

// TODO: unsub from old session?
MiddlewareHandler<String> _onSetCurrentSession(FirebaseClient client) =>
    (MiddlewareApi<App, AppBuilder, AppActions> api, ActionHandler next,
        Action<String> action) {
      next(action);
      _updateCurrentSessionSubs(client, api);
    };

// Shared functionality

_updateCurrentUserSubs(
    FirebaseClient client, MiddlewareApi<App, AppBuilder, AppActions> api) {
  final currentUid = api.state.users.currentUid;
  final user = api.state.users.map[currentUid];
  if (user != null) {
    final user = api.state.users.current;
    client.subToUser(currentUid);
    client.subToBoards(user.boardUids.keys);
  }
}

_updateCurrentBoardSubs(
    FirebaseClient client, MiddlewareApi<App, AppBuilder, AppActions> api) {
  final currentUid = api.state.boards.currentUid;
  final board = api.state.boards.map[currentUid];
  if (board != null) {
    client.subToSessions(currentUid);
    client.subToUsers(board.memberUids.keys);
  }
}

_updateCurrentSessionSubs(
    FirebaseClient client, MiddlewareApi<App, AppBuilder, AppActions> api) {
  final currentUid = api.state.sessions.currentUid;
  final session = api.state.sessions.map[currentUid];
  if (session != null) {
    client.subToCategories(session.boardUid, currentUid);
    client.subToItems(session.boardUid, currentUid);
    client.subToNotes(session.boardUid, currentUid);
  }
}

// Update Ref Properties

MiddlewareHandler<String> _addSupport(FirebaseClient client) =>
    (MiddlewareApi<App, AppBuilder, AppActions> api, ActionHandler next,
        Action<String> action) {
      next(action);
      var userUid = api.state.users.currentUid;
      var item = api.state.items.map[action.payload];
      if (item != null && userUid != "") {
        client.addSupport(userUid, item);
      }
    };

MiddlewareHandler<String> _editItemText(FirebaseClient client) =>
    (MiddlewareApi<App, AppBuilder, AppActions> api, ActionHandler next,
        Action<String> action) {
      next(action);
      var item = api.state.items.current;
      if (item != null) {
        client.editItemText(action.payload, item);
      }
    };

MiddlewareHandler<String> _removeSupport(FirebaseClient client) =>
    (MiddlewareApi<App, AppBuilder, AppActions> api, ActionHandler next,
        Action<String> action) {
      next(action);
      var userUid = api.state.users.currentUid;
      var item = api.state.items.map[action.payload];
      if (item != null && userUid != "") {
        client.removeSupport(userUid, item);
      }
    };

MiddlewareHandler<PollResponse> _addPollResponse(FirebaseClient client) =>
    (MiddlewareApi<App, AppBuilder, AppActions> api, ActionHandler next,
        Action<PollResponse> action) {
      next(action);
      var userUid = api.state.users.currentUid;
      var item = api.state.items.map[action.payload.itemUid];
      if (item != null && userUid != "") {
        client.addPollResponse(action.payload.option, userUid, item);
      }
    };

MiddlewareHandler<String> _removePollResponse(FirebaseClient client) =>
    (MiddlewareApi<App, AppBuilder, AppActions> api, ActionHandler next,
        Action<String> action) {
      next(action);
      var userUid = api.state.users.currentUid;
      var item = api.state.items.map[action.payload];
      if (item != null && userUid != "") {
        client.removePollResponse(userUid, item);
      }
    };

MiddlewareHandler<String> _hideCategory(FirebaseClient client) =>
    (MiddlewareApi<App, AppBuilder, AppActions> api, ActionHandler next,
        Action<String> action) {
      next(action);
      var category = api.state.categories.map[action.payload];
      if (category != null) {
        client.hideCategory(category);
      }
    };

MiddlewareHandler<String> _showCategory(FirebaseClient client) =>
    (MiddlewareApi<App, AppBuilder, AppActions> api, ActionHandler next,
        Action<String> action) {
      next(action);
      var category = api.state.categories.map[action.payload];
      if (category != null) {
        client.showCategory(category);
      }
    };

MiddlewareHandler<String> _hideItem(FirebaseClient client) =>
    (MiddlewareApi<App, AppBuilder, AppActions> api, ActionHandler next,
        Action<String> action) {
      next(action);
      var item = api.state.items.map[action.payload];
      if (item != null) {
        client.hideItem(item);
      }
    };

MiddlewareHandler<String> _showItem(FirebaseClient client) =>
    (MiddlewareApi<App, AppBuilder, AppActions> api, ActionHandler next,
        Action<String> action) {
      next(action);
      var item = api.state.items.map[action.payload];
      if (item != null) {
        client.showItem(item);
      }
    };

MiddlewareHandler<String> _hideNote(FirebaseClient client) =>
    (MiddlewareApi<App, AppBuilder, AppActions> api, ActionHandler next,
        Action<String> action) {
      next(action);
      var note = api.state.notes.map[action.payload];
      if (note != null) {
        client.hideNote(note);
      }
    };

MiddlewareHandler<String> _showNote(FirebaseClient client) =>
    (MiddlewareApi<App, AppBuilder, AppActions> api, ActionHandler next,
        Action<String> action) {
      next(action);
      var note = api.state.notes.map[action.payload];
      if (note != null) {
        client.showNote(note);
      }
    };

MiddlewareHandler<PairNotePayload> _pair(FirebaseClient client) =>
    (MiddlewareApi<App, AppBuilder, AppActions> api, ActionHandler next,
        Action<PairNotePayload> action) {
      next(action);
      var item = api.state.items.map[action.payload.itemUid];
      var note = api.state.notes.map[action.payload.noteUid];
      if (item != null && note != null) {
        if (!note.itemUids.containsKey(action.payload.itemUid)) {
          client.pair(item, note);
        }
      }
    };

MiddlewareHandler<PairNotePayload> _unpair(FirebaseClient client) =>
    (MiddlewareApi<App, AppBuilder, AppActions> api, ActionHandler next,
        Action<PairNotePayload> action) {
      next(action);
      var item = api.state.items.map[action.payload.itemUid];
      var note = api.state.notes.map[action.payload.noteUid];
      if (item != null && note != null) {
        if (note.itemUids.containsKey(action.payload.itemUid)) {
          client.unpair(item, note);
        }
      }
    };

MiddlewareHandler<Null> _startSession(FirebaseClient client) =>
    (MiddlewareApi<App, AppBuilder, AppActions> api, ActionHandler next,
        Action<Null> action) {
      next(action);
      var epoch = now();
      var session = api.state.sessions.current;
      if (session != null) {
        client.startSession(session, epoch);
      }
    };

MiddlewareHandler<Null> _endSession(FirebaseClient client) =>
    (MiddlewareApi<App, AppBuilder, AppActions> api, ActionHandler next,
        Action<Null> action) {
      next(action);
      var epoch = now();
      var session = api.state.sessions.current;
      if (session != null) {
        client.endSession(session, epoch);
      }
    };

MiddlewareHandler<String> _resetSession(FirebaseClient client) =>
    (MiddlewareApi<App, AppBuilder, AppActions> api, ActionHandler next,
        Action<String> action) {
      next(action);
      var session = api.state.sessions.current;
      var items = api.state.sessionItems;
      if (session != null) {
        client.resetSession(session, items);
      }
    };

MiddlewareHandler<String> _shredBoard(FirebaseClient client) =>
    (MiddlewareApi<App, AppBuilder, AppActions> api, ActionHandler next,
        Action<String> action) {
      next(action);
      var board = api.state.boards.current;
      if (board != null) {
        client.shredBoard(board);
      }
    };

MiddlewareHandler<String> _shredSession(FirebaseClient client) =>
    (MiddlewareApi<App, AppBuilder, AppActions> api, ActionHandler next,
        Action<String> action) {
      next(action);
      var session = api.state.sessions.current;
      if (session != null) {
        var board = api.state.boards.map[session.boardUid];
        if (board != null) {
          if (board.latestSessionUid == api.state.sessions.currentUid) {
            client.clearBoardsLatestSession(session.boardUid);
          }
          client.shredSession(session, board);
        }
      }
    };

MiddlewareHandler<String> _present(FirebaseClient client) =>
    (MiddlewareApi<App, AppBuilder, AppActions> api, ActionHandler next,
        Action<String> action) {
      next(action);
      var epoch = now();
      var session = api.state.sessions.current;
      if (session != null) {
        var oldItemUid = api.state.sessions.current.presentedUid;
        if (action.payload != oldItemUid) {
          if (oldItemUid != "") {
            var oldItemStartTime = api.state.sessions.current.presentedDate;
            var oldItem = api.state.items.map[oldItemUid];
            if (oldItem != null) {
              client.updateItemTime(oldItem, epoch - oldItemStartTime);
            }
          }
        }
        // present  item
        if (action.payload != "") {
          var item = api.state.items.map[action.payload];
          if (Item != null) {
            client.present(item, epoch);
          }
        }
      }
    };
