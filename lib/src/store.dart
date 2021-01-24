import 'dart:async';

import 'package:built_redux/built_redux.dart';
import 'package:firebase/firebase.dart' as firebase;

import 'package:retro/src/models/user.dart';
import 'package:retro/src/state/app.dart';
import 'package:retro/src/refs.dart';
import 'package:retro/src/streamSubManager.dart';
import 'package:retro/src/firebaseClient.dart';
import 'package:retro/src/middleware/creationMiddleware.dart';
import 'package:retro/src/middleware/refMiddleware.dart';
import 'package:retro/src/middleware/loggingMiddleware.dart';

class StoreService {
  Store<App, AppBuilder, AppActions> _store;
  FirebaseClient _client;

  final firebase.App _firebaseApp;
  final firebase.Database _firebaseDatabase;

  firebase.GoogleAuthProvider _firebaseGoogleAuthProvider;
  firebase.Auth _firebaseAuth;

  // Create a Redux store holding the state of the app.
  StoreService()
      : _firebaseApp = firebase.initializeApp(
          apiKey: 'AIzaSyDaBXYly0o2WF9v_MT3uiSkObyyAZ8aBJ0',
          authDomain: 'dart-board.firebaseapp.com',
          databaseURL: 'https://dart-board.firebaseio.com',
          storageBucket: 'dart-board.appspot.com',
        ),
        _firebaseDatabase = firebase.database() {
    _firebaseAuth = firebase.auth(_firebaseApp);
    _firebaseAuth.onAuthStateChanged.listen(_authChanged);
    _firebaseGoogleAuthProvider = firebase.GoogleAuthProvider();

    var actions = AppActions();
    _client =
        FirebaseClient(Refs(_firebaseDatabase), StreamSubManager(), actions);
    _store = Store<App, AppBuilder, AppActions>(
      createReducer(),
      App(),
      actions,
      middleware: [
        loggingMiddleware,
        createRefMiddleware(_client),
        createCreationMiddleware(_client),
      ],
    );
  }

  Store<App, AppBuilder, AppActions> get store => _store;

  Future signIn() async {
    _store.actions.setAuthStatus(AuthStatus.loading);
    try {
      await _firebaseAuth.signInWithRedirect(_firebaseGoogleAuthProvider);
    } catch (error) {
      try {
        await _firebaseAuth.signInWithPopup(_firebaseGoogleAuthProvider);
      } catch (error) {
        print('Failed to login: $error}');
        _store.actions.setAuthStatus(AuthStatus.signedOut);
      }
    }
  }

  Future signOut() async {
    _store.actions.setAuthStatus(AuthStatus.loading);
    await _firebaseAuth.signOut();
  }

  Future signInWithEmail(String email, String password) async {
    _store.actions.setAuthStatus(AuthStatus.loading);
    await _firebaseAuth.signInWithEmailAndPassword(email, password);
  }

  Future createEmailAccount(String email, String password) async {
    _store.actions.setAuthStatus(AuthStatus.loading);
    await _firebaseAuth.createUserWithEmailAndPassword(email, password);
  }

  Future _authChanged(firebase.User fbUser) async {
    if (fbUser == null) {
      _store.actions.clear(null);
      _store.actions.setAuthStatus(AuthStatus.signedOut);
      return;
    }

    final user = await _client.userFromFirebaseUser(fbUser);
    _store.actions.users.update(UpdateEntity<User>(fbUser.uid, user));
    _store.actions.users.setCurrent(user.uid);
    _store.actions.setAuthStatus(AuthStatus.signedIn);
  }
}
