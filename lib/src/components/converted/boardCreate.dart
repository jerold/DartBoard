import 'package:wui_builder/vhtml.dart';

VNode boardCreate() => new Vdiv()
  ..className = "box"
  ..children = [
    new Vlabel()
      ..className = "label"
      ..text = 'Create a board',
    new Vdiv()
      ..className = "field"
      ..children = [
        new Vp()
          ..className = "control"
          ..children = [
            new Vinput()
              ..className = "input"
              ..type = "text"
              ..placeholder = "Name",
          ],
      ],
    new Vdiv()
      ..className = "field"
      ..children = [
        new Vp()
          ..className = "control"
          ..children = [
            new Vtextarea()
              ..className = "textarea"
              ..placeholder = "Description",
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
