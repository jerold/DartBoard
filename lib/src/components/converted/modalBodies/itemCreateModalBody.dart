import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

VNode ItemCreateModalBody() => Vdiv()
  ..className = 'modal-card'
  ..children = [
    Vheader()
      ..className = 'modal-card-head'
      ..children = [
        Vp()
          ..className = 'modal-card-title'
          ..text = '{{category.description}}',
      ],
    Vsection()
      ..className = 'modal-card-body'
      ..children = [
        Vdiv()
          ..className = 'field'
          ..children = [
            Vp()
              ..className = 'control'
              ..children = [
                VTextAreaElement()
                  ..className = 'textarea is-autofocused'
                  ..placeholder = 'Let it out',
              ],
          ],
        Vlabel()
          ..className = 'label has-text-centered'
          ..children = [
            Vp()
              ..className = 'menu-label'
              ..text = 'Want to make it a survey? Add some options, and your team can vote!',
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
                          ..className = 'input'
                          ..type = 'text'
                          ..placeholder = '{{option}}',
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
                              ..className = 'icon is-small has-text-danger'
                              ..children = [
                                Vi()
                                  ..className = 'fa fa-trash'
                                  ..title = 'remove',
                              ],
                          ],
                      ],
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
                          ..className = 'input'
                          ..type = 'text'
                          ..placeholder = 'option description...',
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
                                  ..className = 'fa fa-plus'
                                  ..title = 'add option',
                              ],
                          ],
                      ],
                  ],
              ],
          ],
      ],
    Vfooter()
      ..className = 'modal-card-foot'
      ..children = [
        Va()
          ..className = 'button is-success'
          ..text = 'Save',
        Va()
          ..className = 'button'
          ..text = 'Discard',
      ],
  ];
