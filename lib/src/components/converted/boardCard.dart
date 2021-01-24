import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

VNode BoardCard() => Vdiv()
  ..className = 'box is-primary'
  ..children = [
    Va()
      ..className = 'button is-danger is-pulled-right'
      ..text = 'Shred',
    Vh3()
      ..className = 'title'
      ..text = '{{board.title}}',
    Vh5()
      ..className = 'subtitle'
      ..text = '{{lastActive()}} {{isLatest() ? "(latest)" : ""}}',
    Vp()..text = '{{board.description}}',
    Vbr(),

    Vdiv()
      ..className = 'field is-grouped'
      ..children = [
        Vp()
          ..className = 'control'
          ..children = [
            Va()
              ..className = 'button is-primary'
              ..text = 'List of Sessions',
          ],
        Vp()
          ..className = 'control'
          ..children = [
            Va()
              ..className = 'button is-primary'
              ..text = 'Go to latest Session',
          ],
      ],

    // Vbr(),
    // Va()
    //   ..className = 'button is-primary'
    //   ..text = 'List of Sessions',
    // Va()
    //   ..className = 'button is-primary'
    //   ..text = 'Go to latest Session',
  ];
