import 'package:wui_builder/vhtml.dart';

VNode itemCard() => new Vdiv()
  ..className = "box is-primary"
  ..children = [
    new Vdiv()
      ..className = "columns is-mobile"
      ..children = [
        new Vdiv()
          ..className = "column is-narrow"
          ..children = [
            new Vspan()
              ..className = "icon is-danger"
              ..children = [
                new Vi()
                  ..className =
                      "fa {{supported() ? 'fa-heart' : 'fa-heart-o'}}",
              ],
          ],
        new Vdiv()
          ..className = "column"
          ..children = [
            new Vp()..text = '{{item.text}}',
          ],
      ],
  ];
