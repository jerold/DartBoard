import 'package:wui_builder/vhtml.dart';

VNode modalBackground() => new Vdiv()..className = "modal-background";

VNode itemCreateModal() => new Vdiv()
  ..className = "modal-card"
  ..children = [
    new Vheader()
      ..className = "modal-card-head"
      ..children = [
        new Vp()
          ..className = "modal-card-title"
          ..text = '{{category.description}}',
      ],
    new Vsection()
      ..className = "modal-card-body"
      ..children = [
        new Vdiv()
          ..className = "field"
          ..children = [
            new Vp()
              ..className = "control"
              ..children = [
                new Vtextarea()
                  ..className = "textarea is-autofocused"
                  ..placeholder = "Let it out",
              ],
          ],
        new Vlabel()
          ..className = "label has-text-centered"
          ..children = [
            new Vp()
              ..className = "menu-label"
              ..text =
                  'Want to make it a survey? Add some options, and your team can vote!',
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
                          ..className = "input"
                          ..type = "text"
                          ..placeholder = "{{option}}",
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
                              ..className = "icon is-small has-text-danger"
                              ..children = [
                                new Vi()
                                  ..className = "fa fa-trash"
                                  ..title = "remove",
                              ],
                          ],
                      ],
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
                          ..className = "input"
                          ..type = "text"
                          ..placeholder = "option description...",
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
                                  ..className = "fa fa-plus"
                                  ..title = "add option",
                              ],
                          ],
                      ],
                  ],
              ],
          ],
      ],
    new Vfooter()
      ..className = "modal-card-foot"
      ..children = [
        new Va()
          ..className = "button is-success"
          ..text = 'Save',
        new Va()
          ..className = "button"
          ..text = 'Discard',
      ],
  ];

VNode modalCloseButton() => new Vbutton()..className = "modal-close";
