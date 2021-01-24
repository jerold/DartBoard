import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

VNode ModalBackground() => Vdiv()..className = 'modal-background';

VNode ManageContentModal() => Vdiv()
  ..className = 'modal-content'
  ..children = [
    Vdiv()
      ..className = 'box'
      ..children = [
        Vlabel()
          ..className = 'label has-text-centered'
          ..children = [
            Vp()
              ..className = 'menu-label'
              ..children = [
                Vspan()
                  ..className = 'icon is-small has-text-success'
                  ..children = [
                    Vi()
                      ..className = 'fa fa-leaf'
                      ..title = 'restore',
                  ],
              ],
          ],
      ],
    Vdiv()
      ..className = 'box'
      ..children = [
        Vh4()
          ..className = 'title'
          ..children = [
            Va()
              ..className = 'button is-white is-pulled-right'
              ..children = [
                Vspan()
                  ..className =
                      'icon {{category.visible ? "has-text-danger" : "has-text-success"}}'
                  ..children = [
                    Vi()
                      ..className =
                          'fa {{category.visible ? "fa-trash" : "fa-leaf"}} ',
                  ],
              ],
          ],
        Vdiv()
          ..className = 'field is-horizontal'
          ..children = [
            Vdiv()
              ..className = 'field-body'
              ..children = [
                Vdiv()
                  ..className = 'field is-grouped'
                  ..children = [
                    Vp()
                      ..className = 'control is-expanded'
                      ..children = [
                        VInputElement()
                          ..className = 'input {{category.colorClass()}}'
                          ..type = 'text'
                          ..placeholder = '{{item.text}}',
                      ],
                    Vdiv()
                      ..className = 'control'
                      ..children = [
                        Vbutton()
                          ..className = 'button is-white'
                          ..children = [
                            Vspan()
                              ..className = 'icon is-small'
                              ..children = [
                                Vi()
                                  ..className = 'fa fa-floppy-o'
                                  ..title = 'save changes',
                              ],
                          ],
                      ],
                    Vdiv()
                      ..className = 'control'
                      ..children = [
                        Vbutton()
                          ..className = 'button is-white'
                          ..children = [
                            Vspan()
                              ..className = 'icon is-small has-text-success'
                              ..children = [
                                Vi()
                                  ..className = 'fa fa-leaf'
                                  ..title = 'restore',
                              ],
                          ],
                      ],
                  ],
              ],
          ],
      ],
  ];

VNode ModalCloseButton() => Vbutton()..className = 'modal-close';
