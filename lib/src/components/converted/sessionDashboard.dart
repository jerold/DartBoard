import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

VNode SessionDashboard() => Vdiv()
  ..children = [
    Vsection()
      ..className = 'hero is-dark is-bold'
      ..children = [
        Vdiv()
          ..className = 'hero-body'
          ..children = [
            Vdiv()
              ..className = 'container'
              ..children = [
                Vh1()
                  ..className = 'title'
                  ..text = '{{board.title}}',
                Vh2()
                  ..className = 'subtitle'
                  ..text = '{{board.description}}',
                Vh1()
                  ..className = 'title'
                  ..children = [
                    Vspan()
                      ..className = '{{heroCss()}}'
                      ..text = ''',
                    Vspan()
                      ..className = '{{heroCss()}}'
                      ..text = ''',
                  ],
                Vh2()
                  ..className = 'subtitle'
                  ..text = '{{heroAuthor()}}',
                Vp()
                  ..children = [
                    Vspan()
                      ..className = 'option-result'
                      ..children = [
                        Vb()..text = '{{heroOptionResult(option)}}%',
                      ],
                  ],
                Vbr(),
                VProgressElement()
                  ..className = 'progress is-extra-small'
                  ..value = '{{heroTimeProgress}}'
                  ..max = '100'
                  ..text = '{{heroTimeProgress}}%',
              ],
          ],
        Vdiv()
          ..className = 'hero-foot'
          ..children = [
            Vdiv()
              ..className = 'container'
              ..children = [
                Vnav()
                  ..className = 'tabs is-boxed is-pulled-right'
                  ..children = [
                    Vul()
                      ..children = [
                        Vli()
                          ..children = [
                            Va()
                              ..className = 'nav-item'
                              ..children = [
                                Vspan()
                                  ..className = 'icon'
                                  ..children = [
                                    Vi()..className = 'fa fa-angle-left',
                                  ],
                                Vspan()..text = 'Previous',
                              ],
                          ],
                        Vli()
                          ..children = [
                            Va()
                              ..className = 'nav-item'
                              ..children = [
                                Vspan()..text = 'Next',
                                Vspan()
                                  ..className = 'icon'
                                  ..children = [
                                    Vi()..className = 'fa fa-angle-right',
                                  ],
                              ],
                          ],
                        Vli()
                          ..children = [
                            Va()
                              ..className = 'nav-item'
                              ..children = [
                                Vspan()
                                  ..className = 'icon'
                                  ..children = [
                                    Vi()..className = 'fa fa-play-circle-o',
                                  ],
                                Vspan()..text = 'Begin Session',
                              ],
                          ],
                        Vli()
                          ..children = [
                            Va()
                              ..className = 'nav-item'
                              ..children = [
                                Vspan()
                                  ..className = 'icon'
                                  ..children = [
                                    Vi()..className = 'fa fa-stop-circle-o',
                                  ],
                                Vspan()..text = 'End Session',
                              ],
                          ],
                      ],
                    Vul()
                      ..children = [
                        Vli()
                          ..children = [
                            Va()
                              ..className = 'nav-item'
                              ..text = 'This session has ended.',
                          ],
                        Vli()
                          ..children = [
                            Va()
                              ..className = 'nav-item'
                              ..children = [
                                Vspan()
                                  ..className = 'icon'
                                  ..children = [
                                    Vi()..className = 'fa fa-repeat',
                                  ],
                                Vspan()..text = 'Reset',
                              ],
                          ],
                        Vli()
                          ..children = [
                            Va()
                              ..className = 'nav-item'
                              ..children = [
                                Vspan()
                                  ..className = 'icon'
                                  ..children = [
                                    Vi()..className = 'fa fa-clone',
                                  ],
                                Vspan()..text = 'Clone',
                              ],
                          ],
                      ],
                  ],
              ],
          ],
      ],
    Vsection()
      ..className = 'section reduced-vertical-padding'
      ..children = [
        Vdiv()
          ..className = 'container'
          ..children = [
            Vdiv()
              ..className = 'field is-grouped is-grouped-multiline'
              ..children = [
                Vdiv()
                  ..className = 'control'
                  ..children = [
                    Vdiv(),
                  ],
                Va()
                  ..children = [
                    Vspan()
                      ..className = 'icon'
                      ..title = 'Add a note'
                      ..children = [
                        Vi()..className = 'fa fa-pencil',
                      ],
                  ],
              ],
          ],
      ],
    Vsection()
      ..className = 'section reduced-vertical-padding'
      ..children = [
        Vdiv()
          ..className = 'container'
          ..children = [
            Vdiv()
              ..className = 'columns is-hidden-mobile'
              ..children = [
                Vdiv()..className = 'column',
                Vdiv()
                  ..className = 'column {{catColumnClass()}}'
                  ..children = [
                    Vh4()
                      ..className = 'title is-4'
                      ..children = [
                        Va()
                          ..title = 'Add a item.'
                          ..children = [
                            Vspan()
                              ..className = 'icon'
                              ..children = [
                                Vi()..className = 'fa fa-plus',
                              ],
                          ],
                      ],
                    Vh6()
                      ..className = 'subtitle is-6'
                      ..text = '{{category.description}}',
                  ],
                Vdiv()
                  ..className = 'column'
                  ..children = [
                    Vh4()
                      ..className = 'subtitle is-4'
                      ..children = [
                        Va()
                          ..children = [
                            Vspan()
                              ..className = 'icon'
                              ..children = [
                                Vi()..className = 'fa fa-plus',
                              ],
                            Vspan()..text = 'Topic',
                          ],
                      ],
                  ],
              ],
            Vdiv()
              ..className = 'columns'
              ..children = [
                Vdiv()..className = 'column',
                Vdiv()
                  ..className = 'column {{catColumnClass()}}'
                  ..children = [
                    Vp()
                      ..className = 'title is-4 is-hidden-tablet'
                      ..children = [
                        Va()
                          ..title = 'Add a item.'
                          ..children = [
                            Vspan()
                              ..className = 'icon'
                              ..children = [
                                Vi()..className = 'fa fa-plus',
                              ],
                          ],
                      ],
                    Vp()
                      ..className = 'subtitle is-6 is-hidden-tablet'
                      ..text = '{{category.description}}',
                    Vp()
                      ..className =
                          'notification {{category.colorClass()}} {{isItemCovered(item) ? 'covered' : ''}}'
                      ..children = [
                        Vbutton()..className = 'delete',
                        Vspan()
                          ..className = 'icon'
                          ..children = [
                            Vi()
                              ..className =
                                  'fa {{supported(item) ? 'fa-heart' : 'fa-heart-o'}}',
                          ],
                        Vbr(),
                        Vspan()
                          ..children = [
                            Vbr(),
                            Vspan()
                              ..className = 'icon'
                              ..children = [
                                Vi()
                                  ..className =
                                      'fa {{optionIsUsersResponse(item, option) ? 'fa-check-square-o' : 'fa-square-o'}}',
                              ],
                          ],
                      ],
                  ],
                Vdiv()
                  ..className = 'column is-hidden-tablet'
                  ..children = [
                    Vh4()
                      ..className = 'subtitle is-4'
                      ..children = [
                        Va()
                          ..children = [
                            Vspan()
                              ..className = 'icon'
                              ..children = [
                                Vi()..className = 'fa fa-plus',
                              ],
                            Vspan()..text = 'Topic',
                          ],
                      ],
                  ],
                Vdiv()..className = 'column',
              ],
          ],
      ],
  ];
