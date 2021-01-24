import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

VNode BoardCreate() => Vdiv()
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
              ..placeholder = 'Name',
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
              ..placeholder = 'Description',
          ],
      ],
    Vdiv()
      ..className = 'field is-grouped'
      ..children = [
        Vp()
          ..className = 'control'
          ..children = [
            Va()
              ..className = 'button is-primary'
              ..text = 'Create',
          ],
        Vp()
          ..className = 'control'
          ..children = [
            Va()
              ..className = 'button is-primary'
              ..text = 'Cancel',
          ],
      ],
  ];
