import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

VNode geratedElement1() => Vsection()
  ..className = "hero is-dark"
  ..children = [
    Vdiv()
      ..className = "hero-body"
      ..children = [
        Vdiv()
          ..className = "container"
          ..children = [
            Vh1()
              ..className = "title"
              ..text = 'Getting Started',
            Vh2()
              ..className = "subtitle"
              ..text = 'Create or select a board below',
          ],
      ],
  ];

VNode geratedElement2() => Vsection()
  ..className = "section"
  ..children = [
    Vdiv()
      ..className = "container"
      ..children = [
        Vdiv()
          ..className = "columns is-multiline is-mobile"
          ..children = [
            Vdiv()
              ..className = "column is-half-tablet is-one-third-desktop"
              ..children = [
                Vboardcard(),
              ],
            Vdiv()
              ..className = "column is-one-third-desktop"
              ..children = [
                Vboardcreate(),
              ],
          ],
      ],
  ];
