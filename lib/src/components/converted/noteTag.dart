import 'package:wui_builder/vhtml.dart';

VNode noteTag() => new Vdiv()
  ..className = "tags has-addons is-unselectable pointer-hand"
  ..children = [
    new Vspan()
      ..className = "tag {{paired() ? 'is-primary' : 'is-dark'}}"
      ..text = '{{count}}',
    new Vspan()
      ..className = "tag is-light"
      ..children = [
        new Vbutton()..className = "delete is-small",
      ],
  ];
