import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

import 'package:retro/src/components/converted/boardCard.dart';
import 'package:retro/src/components/converted/boardCreate.dart';

VNode BoardsDashboard() => Vdiv()
  ..children = [
    Vsection()
      ..className = 'hero is-dark'
      ..children = [
        Vdiv()
          ..className = 'hero-body'
          ..children = [
            Vdiv()
              ..className = 'container'
              ..children = [
                Vh1()
                  ..className = 'title'
                  ..text = 'Getting Started',
                Vh2()
                  ..className = 'subtitle'
                  ..text = 'Create or select a board below',
              ],
          ],
      ],
    Vsection()
      ..className = 'section'
      ..children = [
        Vdiv()
          ..className = 'container'
          ..children = [
            Vdiv()
              ..className = 'columns is-multiline is-mobile'
              ..children = [
                Vdiv()
                  ..className = 'column is-one-third-desktop'
                  ..children = [
                    BoardCreate(),
                  ],
                Vdiv()
                  ..className = 'column is-half-tablet is-one-third-desktop'
                  ..children = [
                    BoardCard(),
                  ],
              ],
          ],
      ],
  ];
