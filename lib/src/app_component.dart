part of dartboard;

@Component(
  selector: 'app',
  styleUrls: const ['package:dartboard/src/bulma.css'],
  templateUrl: 'package:dartboard/src/app_template.html',
  directives: const [ROUTER_DIRECTIVES, BoardComponent, BoardsComponent],
)
@RouteConfig(const [
  const Redirect(path: '/', redirectTo: const ['Boards']),
  const Redirect(path: '/index.html', redirectTo: const ['Boards']),
  const Route(path: '/boards', name: 'Boards', component: BoardsComponent, useAsDefault: true),
  const Route(path: '/board/:id/:session', name: 'BoardSession', component: BoardComponent),
  const Route(path: '/board/:id', name: 'Board', component: BoardComponent),
])
class AppComponent {

  bool userSelected = true;
  bool showMobileMenu = false;

  UserData theUser = new UserData((UserDataBuilder b) => b
    ..name = "Jerold"
  );

  void signOut() {}

  void signIn() {}
}