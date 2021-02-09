import 'package:built_redux/built_redux.dart';
import 'package:wui_builder/components.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

import 'package:retro/src/store.dart';
import 'package:retro/src/state/app.dart';

import 'package:retro/src/components/appContextComponent.dart';
import 'package:retro/src/components/navBar.dart';

import 'package:retro/src/components/converted/boardsDashboard.dart';
import 'package:retro/src/components/converted/sessionsDashboard.dart';
import 'package:retro/src/components/converted/sessionView.dart';

import 'package:retro/src/components/converted/loginSplash.dart';
import 'package:retro/src/components/converted/modals.dart';

// Same as the key const in appContextComponent.dart
const _storeKey = 'storeKey';

class AppComponent extends NComponent {
  final StoreService _service;
  final History _history;

  AppComponent()
      : _service = StoreService(),
        _history = HashHistory() {
    _service.store.substateStream(authStatusMapper).listen(_update);
    _service.store.substateStream(visibleModalMapper).listen(_update);
  }

  AppActions get actions => _service.store.actions;

  Store<App, AppBuilder, AppActions> get store => _service.store;

  bool get _signedIn => currentUserMapper(store.state) != null;

  bool get _modalIsVisible => visibleModalMapper(_service.store.state) != Modal.none;

  @override
  Map<String, dynamic> getChildContext() => <String, dynamic>{
        _storeKey: _service.store,
        historyContextKey: _history,
      };

  void _update(_) => update();

  @override
  VNode render() => VDivElement()
    ..children = [
      // Navigation
      NavBar(NavBarProps()
        ..signIn = _service.signIn
        ..signOut = _service.signOut),
      VDivElement()
        ..vif = _signedIn
        ..children = [_routeContent],
      LoginSplash(LoginSplashProps()
        ..signIn = _service.signIn
        ..signOut = _service.signOut)
        ..vif = !_signedIn,
      Modals()..vif = _modalIsVisible,
    ];

  VNode get _routeContent => Router(routes: [
        Route(
          path: homeRoute,
          componentFactory: (params) => BoardsDashboard(),
          useAsDefault: true,
        ),
        Route(
          path: boardRoutePattern,
          componentFactory: (params) => SessionsDashboard(params['boardUid']),
        ),
        Route(
          path: sessionRoutePattern,
          componentFactory: (params) => SessionView(params['boardUid'], params['sessionUid']),
        ),
      ]);
}
