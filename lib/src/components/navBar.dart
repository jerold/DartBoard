import 'package:retro/src/models/user.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

import 'package:retro/src/state/app.dart';
import 'package:retro/src/components/appContextComponent.dart';

class NavBarProps {
  Function signIn;
  Function signOut;
}

class NavBar extends AppContextComponent<NavBarProps, dynamic> {
  NavBar(NavBarProps props)
      : super(props, [
          showMobileMenuMapper,
          currentUserMapper,
          authStatusMapper,
        ]);

  bool get _showMobileMenu => showMobileMenuMapper(store.state);

  bool get _signedIn => currentUserMapper(store.state) != null;

  User get _currentUser => currentUserMapper(store.state);

  String get _currentUserName => _currentUser != null ? _currentUser.name : 'Anonomous';

  String get _authStatus => authStatusMapper(store.state);

  @override
  VNode render() => Vnav()
    ..classes = ['navbar', 'is-transparent', 'is-fixed-top']
    ..children = [
      VDivElement()
        ..classes = ['container']
        ..children = [
          VDivElement()
            ..classes = ['navbar-brand']
            ..children = [
              Vspan()
                ..classes = ['navbar-item']
                ..innerHtml = _signedIn ? 'Signed in as:&nbsp;<b>$_currentUserName</b>' : '',
              Vspan()
                ..classes = ['navbar-burger', 'burger']
                ..children = [
                  Vspan(),
                  Vspan(),
                  Vspan(),
                ]
                ..onClick = _toggleMobileMenu,
            ],
          _navMenu,
        ],
    ];

  VNode get _navMenu {
    final menuClasses = ['navbar-menu'];
    if (_showMobileMenu) menuClasses.add('is-active');

    final menuChildren = <VNode>[];
    menuChildren.add(_signInOutButton);

    return VDivElement()
      ..classes = menuClasses
      ..children = [
        VDivElement()
          ..classes = ['navbar-end']
          ..children = menuChildren,
      ];
  }

  VNode get _signInOutButton {
    var icon = 'fa-sign-in';
    var label = 'Sign in';
    if (_signedIn) {
      icon = 'fa-sign-out';
      label = 'Sign out';
    }
    return Vspan()
      ..classes = ['navbar-item']
      ..children = [
        Va()
          ..classes = ['button', 'is-info', _authStatus == AuthStatus.loading ? 'is-loading' : 'is-inverted']
          ..children = [
            Vspan()
              ..classes = ['icon']
              ..children = [
                Vi()..classes = ['fa', icon]
              ],
            Vspan()..innerHtml = label
          ]
          ..onClick = _toggleAuth,
      ];
  }

  void _toggleAuth([_]) {
    if (_signedIn) {
      props.signOut();
    } else {
      props.signIn();
    }
    if (_showMobileMenu) {
      store.actions.hideMobileMenu();
    }
  }

  void _toggleMobileMenu([_]) {
    if (_showMobileMenu) {
      store.actions.hideMobileMenu();
    } else {
      store.actions.showMobileMenu();
    }
  }
}
