import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

VNode NoteTag() => Vdiv()
  ..className = 'tags has-addons is-unselectable pointer-hand'
  ..children = [
    Vspan()
      ..className = 'tag {{paired() ? "is-primary" : "is-dark"}}'
      ..text = '{{count}}',
    Vspan()
      ..className = 'tag is-light'
      ..children = [
        Vbutton()..className = 'delete is-small',
      ],
  ];
