// GENERATED CODE - DO NOT MODIFY BY HAND

part of categories;

// **************************************************************************
// BuiltReduxGenerator
// **************************************************************************

// ignore_for_file: avoid_classes_with_only_static_members
// ignore_for_file: annotate_overrides
// ignore_for_file: overridden_fields
// ignore_for_file: type_annotate_public_apis

class _$CategoriesActions extends CategoriesActions {
  factory _$CategoriesActions() => _$CategoriesActions._();
  _$CategoriesActions._() : super._();

  final update = ActionDispatcher<Category>('CategoriesActions-update');
  final remove = ActionDispatcher<String>('CategoriesActions-remove');
  final setCurrent = ActionDispatcher<String>('CategoriesActions-setCurrent');
  final hide = ActionDispatcher<String>('CategoriesActions-hide');
  final show = ActionDispatcher<String>('CategoriesActions-show');

  @override
  void setDispatcher(Dispatcher dispatcher) {
    update.setDispatcher(dispatcher);
    remove.setDispatcher(dispatcher);
    setCurrent.setDispatcher(dispatcher);
    hide.setDispatcher(dispatcher);
    show.setDispatcher(dispatcher);
  }
}

class CategoriesActionsNames {
  static final update = ActionName<Category>('CategoriesActions-update');
  static final remove = ActionName<String>('CategoriesActions-remove');
  static final setCurrent = ActionName<String>('CategoriesActions-setCurrent');
  static final hide = ActionName<String>('CategoriesActions-hide');
  static final show = ActionName<String>('CategoriesActions-show');
}
