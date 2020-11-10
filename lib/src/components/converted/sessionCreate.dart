import 'package:wui_builder/vhtml.dart';

VNode sessionCreate() => new Vdiv()
  ..className = "box"
  ..children = [
    new Vlabel()
      ..className = "label"
      ..text = 'Create a session',
    new Vdiv()
      ..className = "field"
      ..children = [
        new Vp()
          ..className = "control"
          ..children = [
            new Vinput()
              ..className = "input"
              ..type = "number",
          ],
      ],
    new Vdiv()
      ..className = "field is-grouped"
      ..children = [
        new Vp()
          ..className = "control"
          ..children = [
            new Va()
              ..className = "button is-primary"
              ..text = 'Create',
          ],
        new Vp()
          ..className = "control"
          ..children = [
            new Va()
              ..className = "button is-primary"
              ..text = 'Cancel',
          ],
      ],
  ];
