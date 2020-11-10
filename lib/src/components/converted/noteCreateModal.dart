import 'package:wui_builder/vhtml.dart';

VNode modalBackground() => new Vdiv()..className = "modal-background";

VNode noteCreateModal() => new Vdiv()
  ..className = "modal-card"
  ..children = [
    new Vheader()
      ..className = "modal-card-head"
      ..children = [
        new Vp()
          ..className = "modal-card-title"
          ..text = 'New Note',
      ],
    new Vsection()
      ..className = "modal-card-body"
      ..children = [
        new Vdiv()
          ..className = "field"
          ..children = [
            new Vp()
              ..className = "control"
              ..children = [
                new Vinput()
                  ..className = "input is-autofocused"
                  ..type = "text"
                  ..placeholder = "Type your note here...",
              ],
          ],
      ],
    new Vfooter()
      ..className = "modal-card-foot"
      ..children = [
        new Va()
          ..className = "button is-success"
          ..text = 'Save',
        new Va()
          ..className = "button"
          ..text = 'Discard',
      ],
  ];

VNode modalCloseButton() => new Vbutton()..className = "modal-close";
