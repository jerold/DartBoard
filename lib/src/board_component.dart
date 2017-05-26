part of dartboard;

@Component(
  selector: 'board',
  templateUrl: 'package:dartboard/src/board_template.html',
)
class BoardComponent implements OnInit {
  final Router _router;
  final RouteParams _routeParams;

  String id;
  String session;

  BoardComponent(this._router, this._routeParams);

  Future<Null> ngOnInit() async {
    id = _routeParams.get('id');
    session = _routeParams.get('session');
    // if (uid != '') client.actions.openGame(uid);
  }
}