part of dartboard;

@Component(
  selector: 'boards',
  templateUrl: 'package:dartboard/src/boards_template.html',
)
class BoardsComponent {
  final Router _router;
  final RouteParams _routeParams;

  BoardsComponent(this._router, this._routeParams);

  Future<Null> goToBoard(String id) => _router.navigate(['Board', {'id': id}]);

  Future<Null> goToBoardSession(String id, String session) => _router.navigate(['Board', {'id': id, 'session': session}]);

  goToLobby() {
    // client.actions.closeGame();
    _router.navigate(['Lobby']);
  }
}