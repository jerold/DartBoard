import 'package:wui_builder/vhtml.dart';

VNode modalBackground() => new Vdiv()..className = "modal-background";

VNode manageContentModal() => new Vdiv()
  ..className = "modal-content"
  ..children = [
    new Vdiv()
      ..className = "box"
      ..children = [
        new Vlabel()
          ..className = "label has-text-centered"
          ..children = [
            new Vp()
              ..className = "menu-label"
              ..children = [
                new Vspan()
                  ..className = "icon is-small has-text-success"
                  ..children = [
                    new Vi()
                      ..className = "fa fa-leaf"
                      ..title = "restore",
                  ],
              ],
          ],
      ],
    new Vdiv()
      ..className = "box"
      ..children = [
        new Vh4()
          ..className = "title"
          ..children = [
            new Va()
              ..className = "button is-white is-pulled-right"
              ..children = [
                new Vspan()
                  ..className =
                      "icon {{category.visible ? 'has-text-danger' : 'has-text-success'}}"
                  ..children = [
                    new Vi()
                      ..className =
                          "fa {{category.visible ? 'fa-trash' : 'fa-leaf'}} ",
                  ],
              ],
          ],
        new Vdiv()
          ..className = "field is-horizontal"
          ..children = [
            new Vdiv()
              ..className = "field-body"
              ..children = [
                new Vdiv()
                  ..className = "field is-grouped"
                  ..children = [
                    new Vp()
                      ..className = "control is-expanded"
                      ..children = [
                        new Vinput()
                          ..className = "input {{category.colorClass()}}"
                          ..type = "text"
                          ..placeholder = "{{item.text}}",
                      ],
                    new Vdiv()
                      ..className = "control"
                      ..children = [
                        new Vbutton()
                          ..className = "button is-white"
                          ..children = [
                            new Vspan()
                              ..className = "icon is-small"
                              ..children = [
                                new Vi()
                                  ..className = "fa fa-floppy-o"
                                  ..title = "save changes",
                              ],
                          ],
                      ],
                    new Vdiv()
                      ..className = "control"
                      ..children = [
                        new Vbutton()
                          ..className = "button is-white"
                          ..children = [
                            new Vspan()
                              ..className = "icon is-small has-text-success"
                              ..children = [
                                new Vi()
                                  ..className = "fa fa-leaf"
                                  ..title = "restore",
                              ],
                          ],
                      ],
                  ],
              ],
          ],
      ],
  ];

VNode modalCloseButton() => new Vbutton()..className = "modal-close";
