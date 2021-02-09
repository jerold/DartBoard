import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';
import 'package:built_collection/built_collection.dart';

import 'package:retro/src/models/board.dart';
import 'package:retro/src/components/appContextComponent.dart';

import 'package:retro/src/components/converted/boardCard.dart';
import 'package:retro/src/components/converted/boardCreate.dart';

class BoardsDashboard extends AppContextComponent<dynamic, dynamic> {
  BoardsDashboard()
      : super(null, [
          boardsMapper,
        ]);

  @override
  void componentWillMount() {
    super.componentWillMount();

    store.actions.sessions.setCurrent('');
    store.actions.boards.setCurrent('');
  }

  BuiltMap<String, Board> get _boards => boardsMapper(store.state);

  @override
  VNode render() => Vdiv()
    ..children = [
      Vsection()
        ..className = 'hero is-dark'
        ..children = [
          Vdiv()
            ..className = 'hero-body'
            ..children = [
              Vdiv()
                ..className = 'container'
                ..children = [
                  Vh1()
                    ..className = 'title'
                    ..text = 'Getting Started',
                  Vh2()
                    ..className = 'subtitle'
                    ..text = 'Create or select a board below',
                ],
            ],
        ],
      Vsection()
        ..className = 'section'
        ..children = [
          Vdiv()
            ..className = 'container'
            ..children = [
              Vdiv()
                ..className = 'columns is-multiline is-mobile'
                ..children = ([]
                  ..add(Vdiv()
                    ..className = 'column is-one-third-desktop'
                    ..children = [
                      BoardCreate(),
                    ])
                  ..addAll(_boardCards)),
            ],
        ],
    ];

  Iterable<VNode> get _boardCards => _boards.keys.map(
        (buid) => Vdiv()
          ..className = 'column is-half-tablet is-one-third-desktop'
          ..children = [
            BoardCard(BoardCardProps()..buid = buid),
          ],
      );
}
