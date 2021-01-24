import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

VNode modalBackground() => Vdiv()..className = "modal-background";

VNode noteCreateModal() => Vdiv()
  ..className = "modal-card"
  ..children = [
    Vheader()
      ..className = "modal-card-head"
      ..children = [
        Vp()
          ..className = "modal-card-title"
          ..text = 'Note',
      ],
    Vsection()
      ..className = "modal-card-body"
      ..children = [
        Vdiv()
          ..className = "field"
          ..children = [
            Vp()
              ..className = "control"
              ..children = [
                Vinput()
                  ..className = "input is-autofocused"
                  ..type = "text"
                  ..placeholder = "Type your note here...",
              ],
          ],
      ],
    Vfooter()
      ..className = "modal-card-foot"
      ..children = [
        Va()
          ..className = "button is-success"
          ..text = 'Save',
        Va()
          ..className = "button"
          ..text = 'Discard',
      ],
  ];

VNode modalCloseButton() => Vbutton()..className = "modal-close";
