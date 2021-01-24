import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

VNode sessionCard() => Vdiv()
  ..className = "box is-primary"
  ..children = [
    Va()
      ..className = "button is-danger is-pulled-right"
      ..text = 'Shred',
    Vh3()
      ..className = "title"
      ..text = '{{session.state}}',
    Vh5()
      ..className = "subtitle"
      ..text = '{{lastActive()}} {{isLatest() ? "(latest)" : ""}}',
    Vbr(),
    Va()
      ..className = "button is-primary"
      ..text = 'Go!',
  ];
