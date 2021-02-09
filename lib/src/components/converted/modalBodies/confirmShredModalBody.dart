import 'package:retro/src/state/app.dart';
import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

import 'package:retro/src/components/appContextComponent.dart';

class ConfirmShredModalBody extends AppContextComponent<dynamic, dynamic> {
  ConfirmShredModalBody() : super(null, []);

  String get _typeToShred => store.state.visibleModal == Modal.confirmShredBoard ? 'board' : 'session';

  void _onClickConfirm([_]) {
    if (store.state.visibleModal == Modal.confirmShredBoard) {
      store.actions.boards.shred(null);
    } else if (store.state.visibleModal == Modal.confirmShredSession) {
      store.actions.sessions.shred(null);
    }
    store.actions.hideModal(null);
  }

  void _onClickCancel([_]) {
    store.actions.hideModal(null);
  }

  @override
  VNode render() => Vdiv()
    ..className = 'modal-card'
    ..children = [
      Vsection()
        ..className = 'modal-card-body'
        ..children = [
          Vh1()
            ..className = 'title'
            ..text = 'Warning!',
          Vh3()
            ..className = 'subtitle'
            ..text = 'Having a $_typeToShred shredded is a non-recoverable action!',
          Vp()
            ..text =
                'All $_typeToShred details will be perminently deleted. This includes any contributions made by other $_typeToShred participants.',
        ],
      Vfooter()
        ..className = 'modal-card-foot'
        ..children = [
          Va()
            ..className = 'button is-danger'
            ..text = 'Shred'
            ..onClick = _onClickConfirm,
          Va()
            ..className = 'button'
            ..text = 'Cancel'
            ..onClick = _onClickCancel,
        ],
    ];
}
