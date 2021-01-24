import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

VNode modalBackground() => Vdiv()..className = "modal-background";

VNode signInModal() => Vdiv()
  ..className = "modal-content"
  ..children = [
    Vdiv()
      ..className = "box"
      ..children = [
        Vlabel()
          ..className = "label has-text-centered"
          ..children = [
            Vimg()
              ..src =
                  "google_login/2x/btn_google_signin_light_normal_web@2x.png"
              ..width = "50%"
              ..height = "50%",
          ],
      ],
    Vdiv()
      ..className = "box"
      ..children = [
        Vlabel()
          ..className = "label has-text-centered"
          ..children = [
            Vh1()
              ..className = "subtitle is-h3"
              ..text = 'Sign in with your email',
          ],
        Vdiv()
          ..className = "field"
          ..children = [
            Vlabel()
              ..className = "label"
              ..text = 'Email',
            Vdiv()
              ..className = "control has-icons-left has-icons-right"
              ..children = [
                Vinput()
                  ..className = "input is-danger"
                  ..type = "email"
                  ..placeholder = "you@email.com",
                Vspan()
                  ..className = "icon is-small is-left"
                  ..children = [
                    Vi()..className = "fa fa-envelope",
                  ],
                Vspan()
                  ..className = "icon is-small is-right"
                  ..children = [
                    Vi()..className = "fa fa-exclamation-triangle",
                  ],
              ],
            Vp()
              ..className = "help is-danger"
              ..text = 'This email is invalid',
          ],
        Vdiv()
          ..className = "field"
          ..children = [
            Vlabel()
              ..className = "label"
              ..text = 'Password',
            Vdiv()
              ..className = "control has-icons-left has-icons-right"
              ..children = [
                Vinput()
                  ..className = "input is-warning"
                  ..type = "password"
                  ..placeholder = "Create a password",
                Vspan()
                  ..className = "icon is-small is-left"
                  ..children = [
                    Vi()..className = "fa fa-key",
                  ],
                Vspan()
                  ..className = "icon is-small is-right"
                  ..children = [
                    Vi()..className = "fa fa-check",
                  ],
              ],
            Vp()
              ..className = "help is-warning"
              ..text = 'Password meets length criteria',
          ],
        Vdiv()
          ..className = "field is-grouped"
          ..children = [
            Vdiv()
              ..className = "control"
              ..children = [
                Vbutton()
                  ..className = "button is-success"
                  ..text = 'Submit',
              ],
          ],
      ],
  ];

VNode modalCloseButton() => Vbutton()..className = "modal-close";
