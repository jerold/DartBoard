import 'package:wui_builder/vhtml.dart';

VNode sessionCard() => new Vdiv()
  ..className = "box is-primary"
  ..children = [
    new Va()
      ..className = "button is-danger is-pulled-right"
      ..text = 'Shred',
    new Vh3()
      ..className = "title"
      ..text = '{{session.state}}',
    new Vh5()
      ..className = "subtitle"
      ..text = '{{lastActive()}} {{isLatest() ? "(latest)" : ""}}',
    new Vbr(),
    new Va()
      ..className = "button is-primary"
      ..text = 'Go!',
  ];
