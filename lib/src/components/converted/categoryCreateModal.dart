import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

VNode modalBackground() => Vdiv()..className = "modal-background";

VNode categoryCreateModal() => Vdiv()
  ..className = "modal-card"
  ..children = [
    Vheader()
      ..className = "modal-card-head"
      ..children = [
        Vp()
          ..className = "modal-card-title"
          ..text = 'Topic',
      ],
    Vsection()
      ..className = "modal-card-body"
      ..children = [
        Vdiv()
          ..className = "field"
          ..children = [
            Vlabel()
              ..className = "label"
              ..text = 'Title',
            Vp()
              ..className = "control"
              ..children = [
                Vinput()
                  ..className = "input is-autofocused"
                  ..type = "text"
                  ..placeholder = "Set a theme...",
              ],
          ],
        Vdiv()
          ..className = "field"
          ..children = [
            Vlabel()
              ..className = "label"
              ..text = 'Description',
            Vp()
              ..className = "control"
              ..children = [
                Vinput()
                  ..className = "input"
                  ..type = "text"
                  ..placeholder = "Add some context...",
              ],
          ],
        Vdiv()
          ..className = "field"
          ..children = [
            Vlabel()
              ..className = "label"
              ..text = 'Card Color',
            Vdiv()
              ..className = "field is-grouped"
              ..children = [
                Vdiv()
                  ..className = "control"
                  ..children = [
                    Vbutton()
                      ..className =
                          "button {{color}} {{color != selectedColor ? 'is-outlined' : ''}}"
                      ..text = '{{colorLabel(color)}}',
                  ],
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
