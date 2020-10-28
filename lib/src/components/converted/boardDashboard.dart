import 'package:wui_builder/vhtml.dart';

VNode boardDashboard() => new Vdiv()
  ..children = [
    new Vsection()
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
                  ..text = 'Pick a Session',
                new Vh2()
                  ..className = "subtitle"
                  ..text = 'Be nice to your friends :)',
              ],
          ],
      ],
    new Vsection()
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
                    new Vsessioncard(),
                  ],
                new Vdiv()
                  ..className = "column is-one-third-desktop"
                  ..children = [
                    new Vsessioncreate(),
                  ],
              ],
          ],
      ],
  ];
