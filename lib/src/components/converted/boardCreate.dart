import 'dart:html';

import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

import 'package:retro_board/src/components/appContextComponent.dart';
import 'package:retro_board/src/middleware/creationMiddleware.dart';

final _emptyBoardPayload = CreateBoardPayload('', '');

class BoardCreate extends AppContextComponent<dynamic, CreateBoardPayload> {
  BoardCreate() : super(null, []);

  @override
  CreateBoardPayload getInitialState() => _emptyBoardPayload;

  @override
  VNode render() => Vdiv()
    ..className = 'box'
    ..children = [
      Vlabel()
        ..className = 'label'
        ..text = 'Create a board',
      Vdiv()
        ..className = 'field'
        ..children = [
          Vp()
            ..className = 'control'
            ..children = [
              VInputElement()
                ..className = 'input'
                ..type = 'text'
                ..placeholder = 'Title'
                ..value = state.title
                ..onKeyUp = _onKeyUpTitle,
            ],
        ],
      Vdiv()
        ..className = 'field'
        ..children = [
          Vp()
            ..className = 'control'
            ..children = [
              VTextAreaElement()
                ..className = 'textarea'
                ..placeholder = 'Description'
                ..value = state.description
                ..onKeyUp = _onKeyUpDescription,
            ],
        ],
      Vdiv()
        ..className = 'field is-grouped'
        ..children = [
          Vp()
            ..className = 'control'
            ..children = [
              VAnchorElement()
                ..className = 'button is-primary${!_canCreate ? " is-disabled" : ""}'
                ..text = 'Create'
                ..onClick = _createBoard,
            ],
        ],
    ];

  bool get _canCreate => state.title.isNotEmpty || state.title.isNotEmpty;

  void _onKeyUpTitle(KeyboardEvent e) {
    if (e.keyCode == KeyCode.ENTER) {
      _createBoard();
    } else {
      setState((_, prev) => CreateBoardPayload((e.target as InputElement).value, state.description));
    }
  }

  void _onKeyUpDescription(KeyboardEvent e) {
    if (e.keyCode == KeyCode.ENTER) {
      _createBoard();
    } else {
      setState((_, prev) => CreateBoardPayload(prev.title, (e.target as TextAreaElement).value));
    }
  }

  void _createBoard([_]) {
    if (_canCreate) {
      store.actions.creation.board(state);
      setState((_, __) => _emptyBoardPayload);
    }
  }
}
