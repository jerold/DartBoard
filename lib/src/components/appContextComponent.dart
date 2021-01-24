import 'dart:async';

import 'package:meta/meta.dart';

import 'package:built_redux/built_redux.dart';
import 'package:wui_builder/components.dart';

import 'package:retro/src/state/app.dart';

// Same as the key const in app.dart
const _storeKey = 'storeKey';

abstract class AppContextComponent<P, S>
    extends CComponent<P, S, Store<App, AppBuilder, AppActions>> {
  final List<StateMapper<App, AppBuilder, dynamic>> _mappers;
  final List<StreamSubscription> _subs = <StreamSubscription>[];

  AppContextComponent(P props, this._mappers, {dynamic key})
      : super(props, key: key);

  @override
  String get contextKey => _storeKey;

  Store<App, AppBuilder, AppActions> get store => contextValue;

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
