import 'package:wui_builder/vhtml.dart';

VNode modalBackground() => new Vdiv()..className = "modal-background";

VNode confirmShredModal() => new Vdiv()
  ..className = "modal-card"
  ..children = [
    new Vsection()
      ..className = "modal-card-body"
      ..children = [
        new Vh1()
          ..className = "title"
          ..text = 'Warning!',
        new Vh3()
          ..className = "subtitle"
          ..text =
              'Having a {{typeToShred}} shredded is a non-recoverable action!',
        new Vp()
          ..text =
              'All {{typeToShred}} details will be perminently deleted. This includes any contributions made by other {{typeToShred}} participants.',
      ],
    new Vfooter()
      ..className = "modal-card-foot"
      ..children = [
        new Va()
          ..className = "button is-danger"
          ..text = 'Shred',
        new Va()
          ..className = "button"
          ..text = 'Cancel',
      ],
  ];

VNode modalCloseButton() => new Vbutton()..className = "modal-close";
