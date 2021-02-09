import 'package:wui_builder/vhtml.dart';
import 'package:wui_builder/wui_builder.dart';

import 'package:retro/src/state/app.dart';

import 'package:retro/src/components/converted/modalBodies/categoryCreateModalBody.dart';
import 'package:retro/src/components/converted/modalBodies/confirmShredModalBody.dart';
import 'package:retro/src/components/converted/modalBodies/itemCreateModalBody.dart';
import 'package:retro/src/components/converted/modalBodies/manageContentModalBody.dart';
import 'package:retro/src/components/converted/modalBodies/noteCreateModalBody.dart';
import 'package:retro/src/components/appContextComponent.dart';

class Modals extends AppContextComponent<dynamic, dynamic> {
  Modals() : super(null, [visibleModalMapper]);

  bool get _modalIsVisible => visibleModalMapper(store.state) != Modal.none;

  @override
  VNode render() => VDivElement()
    ..className = 'modal is-active'
    ..children = [
      VDivElement()..className = 'modal-background',
      _visibleModalBody,
      VButtonElement()
        ..className = 'modal-close'
        ..onClick = onClickCloseModal,
    ];

  VNode get _visibleModalBody {
    switch (visibleModalMapper(store.state)) {
      case Modal.createCategory:
        return CategoryCreateModalBody();
      case Modal.createItem:
        return ItemCreateModalBody();
      case Modal.createNote:
        return NoteCreateModalBody();
      case Modal.manageContent:
        return ManageContentModalBody();
      case Modal.confirmShredBoard:
      case Modal.confirmShredSession:
        return ConfirmShredModalBody();
      default:
        return null;
    }
  }

  void onClickCloseModal([_]) {
    store.actions.hideModal();
  }
}
