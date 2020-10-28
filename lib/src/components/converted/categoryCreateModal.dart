import 'package:wui_builder/vhtml.dart';

VNode modalBackground() => new Vdiv()..className = "modal-background";

VNode categoryCreateModal() => new Vdiv()
  ..className = "modal-card"
  ..children = [
    new Vheader()
      ..className = "modal-card-head"
      ..children = [
        new Vp()
          ..className = "modal-card-title"
          ..text = 'New Topic',
      ],
    new Vsection()
      ..className = "modal-card-body"
      ..children = [
        new Vdiv()
          ..className = "field"
          ..children = [
            new Vlabel()
              ..className = "label"
              ..text = 'Title',
            new Vp()
              ..className = "control"
              ..children = [
                new Vinput()
                  ..className = "input is-autofocused"
                  ..type = "text"
                  ..placeholder = "Set a theme...",
              ],
          ],
        new Vdiv()
          ..className = "field"
          ..children = [
            new Vlabel()
              ..className = "label"
              ..text = 'Description',
            new Vp()
              ..className = "control"
              ..children = [
                new Vinput()
                  ..className = "input"
                  ..type = "text"
                  ..placeholder = "Add some context...",
              ],
          ],
        new Vdiv()
          ..className = "field"
          ..children = [
            new Vlabel()
              ..className = "label"
              ..text = 'Card Color',
            new Vdiv()
              ..className = "field is-grouped"
              ..children = [
                new Vdiv()
                  ..className = "control"
                  ..children = [
                    new Vbutton()
                      ..className =
                          "button {{color}} {{color != selectedColor ? 'is-outlined' : ''}}"
                      ..text = '{{colorLabel(color)}}',
                  ],
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
