import 'package:wui_builder/vhtml.dart';

VNode boardCard() => new Vdiv()
  ..className = "box is-primary"
  ..children = [
    new Va()
      ..className = "button is-danger is-pulled-right"
      ..text = 'Shred',
    new Vh3()
      ..className = "title"
      ..text = '{{board.title}}',
    new Vh5()
      ..className = "subtitle"
      ..text = '{{lastActive()}} {{isLatest() ? "(latest)" : ""}}',
    new Vp()..text = '{{board.description}}',
    new Vbr(),
    new Va()
      ..className = "button is-primary"
      ..text = 'List of Sessions',
    new Va()
      ..className = "button is-primary"
      ..text = 'Go to latest Session',
  ];
