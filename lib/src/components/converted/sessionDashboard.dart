import 'package:wui_builder/vhtml.dart';

VNode sessionDashboard() => new Vdiv()
  ..children = [
    new Vsection()
      ..className = "hero is-dark is-bold"
      ..children = [
        new Vdiv()
          ..className = "hero-body"
          ..children = [
            new Vdiv()
              ..className = "container"
              ..children = [
                new Vh1()
                  ..className = "title"
                  ..text = '{{board.title}}',
                new Vh2()
                  ..className = "subtitle"
                  ..text = '{{board.description}}',
                new Vh1()
                  ..className = "title"
                  ..children = [
                    new Vspan()
                      ..className = "{{heroCss()}}"
                      ..text = '"',
                    new Vspan()
                      ..className = "{{heroCss()}}"
                      ..text = '"',
                  ],
                new Vh2()
                  ..className = "subtitle"
                  ..text = '{{heroAuthor()}}',
                new Vp()
                  ..children = [
                    new Vspan()
                      ..className = "option-result"
                      ..children = [
                        new Vb()..text = '{{heroOptionResult(option)}}%',
                      ],
                  ],
                new Vbr(),
                new Vprogress()
                  ..className = "progress is-extra-small"
                  ..value = "{{heroTimeProgress}}"
                  ..max = "100"
                  ..text = '{{heroTimeProgress}}%',
              ],
          ],
        new Vdiv()
          ..className = "hero-foot"
          ..children = [
            new Vdiv()
              ..className = "container"
              ..children = [
                new Vnav()
                  ..className = "tabs is-boxed is-pulled-right"
                  ..children = [
                    new Vul()
                      ..children = [
                        new Vli()
                          ..children = [
                            new Va()
                              ..className = "nav-item"
                              ..children = [
                                new Vspan()
                                  ..className = "icon"
                                  ..children = [
                                    new Vi()..className = "fa fa-angle-left",
                                  ],
                                new Vspan()..text = 'Previous',
                              ],
                          ],
                        new Vli()
                          ..children = [
                            new Va()
                              ..className = "nav-item"
                              ..children = [
                                new Vspan()..text = 'Next',
                                new Vspan()
                                  ..className = "icon"
                                  ..children = [
                                    new Vi()..className = "fa fa-angle-right",
                                  ],
                              ],
                          ],
                        new Vli()
                          ..children = [
                            new Va()
                              ..className = "nav-item"
                              ..children = [
                                new Vspan()
                                  ..className = "icon"
                                  ..children = [
                                    new Vi()..className = "fa fa-play-circle-o",
                                  ],
                                new Vspan()..text = 'Begin Session',
                              ],
                          ],
                        new Vli()
                          ..children = [
                            new Va()
                              ..className = "nav-item"
                              ..children = [
                                new Vspan()
                                  ..className = "icon"
                                  ..children = [
                                    new Vi()..className = "fa fa-stop-circle-o",
                                  ],
                                new Vspan()..text = 'End Session',
                              ],
                          ],
                      ],
                    new Vul()
                      ..children = [
                        new Vli()
                          ..children = [
                            new Va()
                              ..className = "nav-item"
                              ..text = 'This session has ended.',
                          ],
                        new Vli()
                          ..children = [
                            new Va()
                              ..className = "nav-item"
                              ..children = [
                                new Vspan()
                                  ..className = "icon"
                                  ..children = [
                                    new Vi()..className = "fa fa-repeat",
                                  ],
                                new Vspan()..text = 'Reset',
                              ],
                          ],
                        new Vli()
                          ..children = [
                            new Va()
                              ..className = "nav-item"
                              ..children = [
                                new Vspan()
                                  ..className = "icon"
                                  ..children = [
                                    new Vi()..className = "fa fa-clone",
                                  ],
                                new Vspan()..text = 'Clone',
                              ],
                          ],
                      ],
                  ],
              ],
          ],
      ],
    new Vsection()
      ..className = "section reduced-vertical-padding"
      ..children = [
        new Vdiv()
          ..className = "container"
          ..children = [
            new Vdiv()
              ..className = "field is-grouped is-grouped-multiline"
              ..children = [
                new Vdiv()
                  ..className = "control"
                  ..children = [
                    new Vdiv(),
                  ],
                new Va()
                  ..children = [
                    new Vspan()
                      ..className = "icon"
                      ..title = "Add a note"
                      ..children = [
                        new Vi()..className = "fa fa-pencil",
                      ],
                  ],
              ],
          ],
      ],
    new Vsection()
      ..className = "section reduced-vertical-padding"
      ..children = [
        new Vdiv()
          ..className = "container"
          ..children = [
            new Vdiv()
              ..className = "columns is-hidden-mobile"
              ..children = [
                new Vdiv()..className = "column",
                new Vdiv()
                  ..className = "column {{catColumnClass()}}"
                  ..children = [
                    new Vh4()
                      ..className = "title is-4"
                      ..children = [
                        new Va()
                          ..title = "Add a new item."
                          ..children = [
                            new Vspan()
                              ..className = "icon"
                              ..children = [
                                new Vi()..className = "fa fa-plus",
                              ],
                          ],
                      ],
                    new Vh6()
                      ..className = "subtitle is-6"
                      ..text = '{{category.description}}',
                  ],
                new Vdiv()
                  ..className = "column"
                  ..children = [
                    new Vh4()
                      ..className = "subtitle is-4"
                      ..children = [
                        new Va()
                          ..children = [
                            new Vspan()
                              ..className = "icon"
                              ..children = [
                                new Vi()..className = "fa fa-plus",
                              ],
                            new Vspan()..text = 'New Topic',
                          ],
                      ],
                  ],
              ],
            new Vdiv()
              ..className = "columns"
              ..children = [
                new Vdiv()..className = "column",
                new Vdiv()
                  ..className = "column {{catColumnClass()}}"
                  ..children = [
                    new Vp()
                      ..className = "title is-4 is-hidden-tablet"
                      ..children = [
                        new Va()
                          ..title = "Add a new item."
                          ..children = [
                            new Vspan()
                              ..className = "icon"
                              ..children = [
                                new Vi()..className = "fa fa-plus",
                              ],
                          ],
                      ],
                    new Vp()
                      ..className = "subtitle is-6 is-hidden-tablet"
                      ..text = '{{category.description}}',
                    new Vp()
                      ..className =
                          "notification {{category.colorClass()}} {{isItemCovered(item) ? 'covered' : ''}}"
                      ..children = [
                        new Vbutton()..className = "delete",
                        new Vspan()
                          ..className = "icon"
                          ..children = [
                            new Vi()
                              ..className =
                                  "fa {{supported(item) ? 'fa-heart' : 'fa-heart-o'}}",
                          ],
                        new Vbr(),
                        new Vspan()
                          ..children = [
                            new Vbr(),
                            new Vspan()
                              ..className = "icon"
                              ..children = [
                                new Vi()
                                  ..className =
                                      "fa {{optionIsUsersResponse(item, option) ? 'fa-check-square-o' : 'fa-square-o'}}",
                              ],
                          ],
                      ],
                  ],
                new Vdiv()
                  ..className = "column is-hidden-tablet"
                  ..children = [
                    new Vh4()
                      ..className = "subtitle is-4"
                      ..children = [
                        new Va()
                          ..children = [
                            new Vspan()
                              ..className = "icon"
                              ..children = [
                                new Vi()..className = "fa fa-plus",
                              ],
                            new Vspan()..text = 'New Topic',
                          ],
                      ],
                  ],
                new Vdiv()..className = "column",
              ],
          ],
      ],
  ];
