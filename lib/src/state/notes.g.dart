// GENERATED CODE - DO NOT MODIFY BY HAND

part of notes;

// **************************************************************************
// BuiltReduxGenerator
// **************************************************************************

// ignore_for_file: avoid_classes_with_only_static_members
// ignore_for_file: annotate_overrides
// ignore_for_file: overridden_fields
// ignore_for_file: type_annotate_public_apis

class _$NotesActions extends NotesActions {
  factory _$NotesActions() => _$NotesActions._();
  _$NotesActions._() : super._();

  final update = ActionDispatcher<Note>('NotesActions-update');
  final remove = ActionDispatcher<String>('NotesActions-remove');
  final setCurrent = ActionDispatcher<String>('NotesActions-setCurrent');
  final pair = ActionDispatcher<PairNotePayload>('NotesActions-pair');
  final unpair = ActionDispatcher<PairNotePayload>('NotesActions-unpair');
  final hide = ActionDispatcher<String>('NotesActions-hide');
  final show = ActionDispatcher<String>('NotesActions-show');

  @override
  void setDispatcher(Dispatcher dispatcher) {
    update.setDispatcher(dispatcher);
    remove.setDispatcher(dispatcher);
    setCurrent.setDispatcher(dispatcher);
    pair.setDispatcher(dispatcher);
    unpair.setDispatcher(dispatcher);
    hide.setDispatcher(dispatcher);
    show.setDispatcher(dispatcher);
  }
}

class NotesActionsNames {
  static final update = ActionName<Note>('NotesActions-update');
  static final remove = ActionName<String>('NotesActions-remove');
  static final setCurrent = ActionName<String>('NotesActions-setCurrent');
  static final pair = ActionName<PairNotePayload>('NotesActions-pair');
  static final unpair = ActionName<PairNotePayload>('NotesActions-unpair');
  static final hide = ActionName<String>('NotesActions-hide');
  static final show = ActionName<String>('NotesActions-show');
}
