import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

VNode NoteCreateModalBody() => Vdiv()
  ..className = 'modal-card'
  ..children = [
    Vheader()
      ..className = 'modal-card-head'
      ..children = [
        Vp()
          ..className = 'modal-card-title'
          ..text = 'Note',
      ],
    Vsection()
      ..className = 'modal-card-body'
      ..children = [
        Vdiv()
          ..className = 'field'
          ..children = [
            Vp()
              ..className = 'control'
              ..children = [
                VInputElement()
                  ..className = 'input is-autofocused'
                  ..type = 'text'
                  ..placeholder = 'Type your note here...',
              ],
          ],
      ],
    Vfooter()
      ..className = 'modal-card-foot'
      ..children = [
        Va()
          ..className = 'button is-success'
          ..text = 'Save',
        Va()
          ..className = 'button'
          ..text = 'Discard',
      ],
  ];
