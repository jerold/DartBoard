import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

VNode ItemCard() => Vdiv()
  ..className = 'box is-primary'
  ..children = [
    Vdiv()
      ..className = 'columns is-mobile'
      ..children = [
        Vdiv()
          ..className = 'column is-narrow'
          ..children = [
            Vspan()
              ..className = 'icon is-danger'
              ..children = [
                Vi()
                  ..className =
                      'fa {{supported() ? "fa-heart" : "fa-heart-o"}}',
              ],
          ],
        Vdiv()
          ..className = 'column'
          ..children = [
            Vp()..text = '{{item.text}}',
          ],
      ],
  ];
