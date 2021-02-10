import 'package:retro_board/src/state/app.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

import 'package:retro_board/src/components/appContextComponent.dart';

class LoginSplashProps {
  Function signIn;
  Function signOut;
}

class LoginSplash extends AppContextComponent<LoginSplashProps, dynamic> {
  LoginSplash(LoginSplashProps props) : super(props, []);

  @override
  VNode render() => Vdiv()
    ..children = [
      Vsection()
        ..className = 'hero is-dark is-medium'
        ..children = [
          Vdiv()
            ..className = 'hero-body'
            ..children = [
              Vdiv()
                ..className = 'container'
                ..children = [
                  Vdiv()
                    ..className = 'columns'
                    ..children = [
                      Vdiv()
                        ..className = 'column is-half'
                        ..children = [
                          Vh1()
                            ..className = 'title'
                            ..text = 'Welcome to Retro Board',
                          Vh5()
                            ..className = 'subtitle is-h5'
                            ..text =
                                'A collaborative whiteboard to help you and your team go over all the things that impact the way you operate.',
                        ],
                      Vdiv()
                        ..className = 'column'
                        ..children = [
                          Vdiv()
                            ..className = 'box'
                            ..children = [
                              Varticle()
                                ..className = 'media'
                                ..children = [
                                  Vdiv()
                                    ..className = 'media-content'
                                    ..children = [
                                      Vdiv()
                                        ..className = 'content'
                                        ..children = [
                                          Vlabel()
                                            ..className = 'label has-text-centered'
                                            ..children = [
                                              VImageElement()
                                                ..src = 'google_login/2x/btn_google_signin_dark_normal_web@2x.png'
                                                ..width = 194
                                                ..height = 46,
                                            ],
                                          Vhr(),
                                          Vlabel()
                                            ..className = 'label has-text-centered'
                                            ..children = [
                                              Vh4()..text = 'You can also make an account using your email.',
                                            ],
                                          Vdiv()
                                            ..className = 'field'
                                            ..children = [
                                              Vlabel()
                                                ..className = 'label'
                                                ..text = 'Email',
                                              Vdiv()
                                                ..className = 'control has-icons-left has-icons-right'
                                                ..children = [
                                                  VInputElement()
                                                    ..className = 'input'
                                                    ..type = 'email'
                                                    ..placeholder = 'you@email.com',
                                                  Vspan()
                                                    ..className = 'icon is-small is-left'
                                                    ..children = [
                                                      Vi()..className = 'fa fa-envelope',
                                                    ],
                                                  Vspan()
                                                    ..className = 'icon is-small is-right'
                                                    ..children = [
                                                      Vi()..className = 'fa fa-exclamation-triangle',
                                                    ],
                                                ],
                                            ],
                                          Vdiv()
                                            ..className = 'field'
                                            ..children = [
                                              Vlabel()
                                                ..className = 'label'
                                                ..text = 'Password',
                                              Vdiv()
                                                ..className = 'control has-icons-left has-icons-right'
                                                ..children = [
                                                  VInputElement()
                                                    ..className = 'input'
                                                    ..type = 'password'
                                                    ..placeholder = 'Create a password',
                                                  Vspan()
                                                    ..className = 'icon is-small is-left'
                                                    ..children = [
                                                      Vi()..className = 'fa fa-key',
                                                    ],
                                                  Vspan()
                                                    ..className = 'icon is-small is-right'
                                                    ..children = [
                                                      Vi()..className = 'fa fa-check',
                                                    ],
                                                ],
                                            ],
                                          Vdiv()
                                            ..className = 'field is-grouped'
                                            ..children = [
                                              Vdiv()
                                                ..className = 'control'
                                                ..children = [
                                                  Vbutton()
                                                    ..className = 'button is-success'
                                                    ..text = 'Sign In'
                                                    ..onClick = _onClickSignIn,
                                                  Vbutton()
                                                    ..className = 'button is-link'
                                                    ..text = 'Sign Up',
                                                ],
                                            ],
                                        ],
                                    ],
                                ],
                            ],
                        ],
                    ],
                ],
            ],
        ],
    ];

  void _onClickSignIn([_]) {
    props.signIn();
  }
}
