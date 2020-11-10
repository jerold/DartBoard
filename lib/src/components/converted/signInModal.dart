import 'package:wui_builder/vhtml.dart';

VNode modalBackground() => new Vdiv()..className = "modal-background";

VNode signInModal() => new Vdiv()
  ..className = "modal-content"
  ..children = [
    new Vdiv()
      ..className = "box"
      ..children = [
        new Vlabel()
          ..className = "label has-text-centered"
          ..children = [
            new Vimg()
              ..src =
                  "google_login/2x/btn_google_signin_light_normal_web@2x.png"
              ..width = "50%"
              ..height = "50%",
          ],
      ],
    new Vdiv()
      ..className = "box"
      ..children = [
        new Vlabel()
          ..className = "label has-text-centered"
          ..children = [
            new Vh1()
              ..className = "subtitle is-h3"
              ..text = 'Sign in with your email',
          ],
        new Vdiv()
          ..className = "field"
          ..children = [
            new Vlabel()
              ..className = "label"
              ..text = 'Email',
            new Vdiv()
              ..className = "control has-icons-left has-icons-right"
              ..children = [
                new Vinput()
                  ..className = "input is-danger"
                  ..type = "email"
                  ..placeholder = "you@email.com",
                new Vspan()
                  ..className = "icon is-small is-left"
                  ..children = [
                    new Vi()..className = "fa fa-envelope",
                  ],
                new Vspan()
                  ..className = "icon is-small is-right"
                  ..children = [
                    new Vi()..className = "fa fa-exclamation-triangle",
                  ],
              ],
            new Vp()
              ..className = "help is-danger"
              ..text = 'This email is invalid',
          ],
        new Vdiv()
          ..className = "field"
          ..children = [
            new Vlabel()
              ..className = "label"
              ..text = 'Password',
            new Vdiv()
              ..className = "control has-icons-left has-icons-right"
              ..children = [
                new Vinput()
                  ..className = "input is-warning"
                  ..type = "password"
                  ..placeholder = "Create a password",
                new Vspan()
                  ..className = "icon is-small is-left"
                  ..children = [
                    new Vi()..className = "fa fa-key",
                  ],
                new Vspan()
                  ..className = "icon is-small is-right"
                  ..children = [
                    new Vi()..className = "fa fa-check",
                  ],
              ],
            new Vp()
              ..className = "help is-warning"
              ..text = 'Password meets length criteria',
          ],
        new Vdiv()
          ..className = "field is-grouped"
          ..children = [
            new Vdiv()
              ..className = "control"
              ..children = [
                new Vbutton()
                  ..className = "button is-success"
                  ..text = 'Submit',
              ],
          ],
      ],
  ];

VNode modalCloseButton() => new Vbutton()..className = "modal-close";
