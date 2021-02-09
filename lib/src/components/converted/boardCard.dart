import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

import 'package:retro/src/models/board.dart';
import 'package:retro/src/models/user.dart';
import 'package:retro/src/state/app.dart';
import 'package:retro/src/components/appContextComponent.dart';

class BoardCardProps {
  String buid;
}

// Mappers for App state used in this component
Board Function(App) _boardMapper(String buid) => (App app) => boardsMapper(app)[buid];

class BoardCard extends AppContextComponent<dynamic, dynamic> {
  BoardCard(BoardCardProps props) : super(props, [_boardMapper(props.buid), currentUserMapper], key: props.buid);

  Board get _board => _boardMapper(key)(store.state);

  User get _currentUser => currentUserMapper(store.state);

  String get _lastActive => date(_currentUser.boardUids[_board.uid]);

  bool get _isLatest => store.state.usersLatestBoard?.uid == _board.uid;

  bool get _hasLatestSession => _board.latestSessionUid != null;

  bool get _canDeleteCard => _board?.ownerUid == _currentUser.uid;

  @override
  VNode render() => Vdiv()
    ..className = 'box is-primary'
    ..children = [
      Va()
        ..vif = _canDeleteCard
        ..className = 'button is-danger is-pulled-right'
        ..text = 'Shred'
        ..onClick = _onClickShred,
      Vh3()
        ..className = 'title'
        ..text = _board.title,
      Vh5()
        ..className = 'subtitle'
        ..text = '${_lastActive} ${_isLatest ? "(latest)" : ""}',
      Vp()..text = '${_board.description}',
      Vbr(),
      Vdiv()
        ..className = 'field is-grouped'
        ..children = [
          Vp()
            ..className = 'control'
            ..onClick = _onClickListOfSessions
            ..children = [
              Va()
                ..className = 'button is-primary'
                ..text = 'List of Sessions',
            ],
          Vp()
            ..vif = _hasLatestSession
            ..className = 'control'
            ..onClick = _onClickLatestSession
            ..children = [
              Va()
                ..className = 'button is-primary'
                ..text = 'Go to latest Session',
            ],
        ],
    ];

  void _onClickListOfSessions([_]) {
    routeToBoard(props.buid);
  }

  void _onClickLatestSession([_]) {
    routeToSession(props.buid, _board.latestSessionUid);
  }

  void _onClickShred([_]) {
    store.actions.boards.setCurrent(props.buid);
    store.actions.showModal(Modal.confirmShredBoard);
  }
}
