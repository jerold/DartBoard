// GENERATED CODE - DO NOT MODIFY BY HAND

part of items;

// **************************************************************************
// BuiltReduxGenerator
// **************************************************************************

// ignore_for_file: avoid_classes_with_only_static_members
// ignore_for_file: annotate_overrides
// ignore_for_file: overridden_fields
// ignore_for_file: type_annotate_public_apis

class _$ItemsActions extends ItemsActions {
  factory _$ItemsActions() => _$ItemsActions._();
  _$ItemsActions._() : super._();

  final update = ActionDispatcher<Item>('ItemsActions-update');
  final remove = ActionDispatcher<String>('ItemsActions-remove');
  final setCurrent = ActionDispatcher<String>('ItemsActions-setCurrent');
  final editText = ActionDispatcher<String>('ItemsActions-editText');
  final addSupport = ActionDispatcher<String>('ItemsActions-addSupport');
  final removeSupport = ActionDispatcher<String>('ItemsActions-removeSupport');
  final addPollResponse =
      ActionDispatcher<PollResponse>('ItemsActions-addPollResponse');
  final removePollResponse =
      ActionDispatcher<String>('ItemsActions-removePollResponse');
  final hide = ActionDispatcher<String>('ItemsActions-hide');
  final show = ActionDispatcher<String>('ItemsActions-show');

  @override
  void setDispatcher(Dispatcher dispatcher) {
    update.setDispatcher(dispatcher);
    remove.setDispatcher(dispatcher);
    setCurrent.setDispatcher(dispatcher);
    editText.setDispatcher(dispatcher);
    addSupport.setDispatcher(dispatcher);
    removeSupport.setDispatcher(dispatcher);
    addPollResponse.setDispatcher(dispatcher);
    removePollResponse.setDispatcher(dispatcher);
    hide.setDispatcher(dispatcher);
    show.setDispatcher(dispatcher);
  }
}

class ItemsActionsNames {
  static final update = ActionName<Item>('ItemsActions-update');
  static final remove = ActionName<String>('ItemsActions-remove');
  static final setCurrent = ActionName<String>('ItemsActions-setCurrent');
  static final editText = ActionName<String>('ItemsActions-editText');
  static final addSupport = ActionName<String>('ItemsActions-addSupport');
  static final removeSupport = ActionName<String>('ItemsActions-removeSupport');
  static final addPollResponse =
      ActionName<PollResponse>('ItemsActions-addPollResponse');
  static final removePollResponse =
      ActionName<String>('ItemsActions-removePollResponse');
  static final hide = ActionName<String>('ItemsActions-hide');
  static final show = ActionName<String>('ItemsActions-show');
}
