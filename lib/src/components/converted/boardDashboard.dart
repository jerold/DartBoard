import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

VNode boardDashboard() => Vdiv()
  ..children = [
    Vsection()
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
                  ..text = 'Pick a Session',
                Vh2()
                  ..className = "subtitle"
                  ..text = 'Be nice to your friends :)',
              ],
          ],
      ],
    Vsection()
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
                    Vsessioncard(),
                  ],
                Vdiv()
                  ..className = "column is-one-third-desktop"
                  ..children = [
                    Vsessioncreate(),
                  ],
              ],
          ],
      ],
  ];
