import 'package:built_redux/built_redux.dart';
import 'package:wui_builder/components.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

import 'package:retro/src/store.dart';
import 'package:retro/src/state/app.dart';

import 'package:retro/src/components/converted/boardsDashboard.dart';
import 'package:retro/src/components/converted/sessionsDashboard.dart';
import 'package:retro/src/components/converted/sessionView.dart';

import 'package:retro/src/components/navBar.dart';

// Same as the key const in appContextComponent.dart
const _storeKey = 'storeKey';

class AppComponent extends NComponent {
  final StoreService _service;
  final History _history;

  AppComponent()
      : _service = StoreService(),
        _history = HashHistory();

  AppActions get actions => _service.store.actions;

  Store<App, AppBuilder, AppActions> get store => _service.store;

  @override
  Map<String, dynamic> getChildContext() => <String, dynamic>{
        _storeKey: _service.store,
        historyContextKey: _history,
      };

  @override
  VNode render() => Vdiv()
    ..children = [
      // Navigation
      NavBar(NavBarProps()
        ..signIn = _service.signIn
        ..signOut = _service.signOut),
      _routeContent,
    ];

  VNode get _routeContent => Router(routes: [
        Route(
          path: '/',
          componentFactory: (params) => BoardsDashboard(),
          useAsDefault: true,
        ),
        Route(
          path: '/board/:boardUid',
          componentFactory: (params) => SessionsDashboard(params['boardUid']),
        ),
        Route(
          path: '/board/:boardUid/session/:sessionUid',
          componentFactory: (params) =>
              SessionView(params['boardUid'], params['sessionUid']),
        ),
      ]);
}
