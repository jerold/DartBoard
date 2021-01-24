import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

VNode modalBackground() => Vdiv()..className = "modal-background";

VNode confirmShredModal() => Vdiv()
  ..className = "modal-card"
  ..children = [
    Vsection()
      ..className = "modal-card-body"
      ..children = [
        Vh1()
          ..className = "title"
          ..text = 'Warning!',
        Vh3()
          ..className = "subtitle"
          ..text =
              'Having a {{typeToShred}} shredded is a non-recoverable action!',
        Vp()
          ..text =
              'All {{typeToShred}} details will be perminently deleted. This includes any contributions made by other {{typeToShred}} participants.',
      ],
    Vfooter()
      ..className = "modal-card-foot"
      ..children = [
        Va()
          ..className = "button is-danger"
          ..text = 'Shred',
        Va()
          ..className = "button"
          ..text = 'Cancel',
      ],
  ];

VNode modalCloseButton() => Vbutton()..className = "modal-close";
