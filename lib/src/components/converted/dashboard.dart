import 'package:wui_builder/vhtml.dart';

VNode geratedElement1() => new Vsection()
  ..className = "hero is-dark"
  ..children = [
    new Vdiv()
      ..className = "hero-body"
      ..children = [
        new Vdiv()
          ..className = "container"
          ..children = [
            new Vh1()
              ..className = "title"
              ..text = 'Getting Started',
            new Vh2()
              ..className = "subtitle"
              ..text = 'Create or select a board below',
          ],
      ],
  ];

VNode geratedElement2() => new Vsection()
  ..className = "section"
  ..children = [
    new Vdiv()
      ..className = "container"
      ..children = [
        new Vdiv()
          ..className = "columns is-multiline is-mobile"
          ..children = [
            new Vdiv()
              ..className = "column is-half-tablet is-one-third-desktop"
              ..children = [
                new Vboardcard(),
              ],
            new Vdiv()
              ..className = "column is-one-third-desktop"
              ..children = [
                new Vboardcreate(),
              ],
          ],
      ],
  ];
