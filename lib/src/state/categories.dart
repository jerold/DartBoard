library categories;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_redux/built_redux.dart';

import '../models/category.dart';
import 'app.dart';

part 'categories.g.dart';

////////////////////
/// Actions
///////////////////

/// [CategoriesActions]
abstract class CategoriesActions extends ReduxActions {
  ActionDispatcher<UpdateEntity<Category>> update;
  ActionDispatcher<String> remove;
  ActionDispatcher<String> setCurrent;
  // update title
  // update description
  // show / hide
  ActionDispatcher<String> hide;
  ActionDispatcher<String> show;

  // factory to create on instance of the generated implementation of BoardsActions
  CategoriesActions._();
  factory CategoriesActions() => _$CategoriesActions();
}

////////////////////
/// State
///////////////////

/// [Categories]
abstract class Categories implements Built<Categories, CategoriesBuilder> {
  /// [map] contains a map of category uid to Category.
  BuiltMap<String, Category> get map;

  String get currentUid;

  // Built value boilerplate
  Categories._();
  factory Categories([Function(CategoriesBuilder b) updates]) =>
      _$Categories((CategoriesBuilder b) => b..currentUid = '');

  @memoized
  Category get current => map[currentUid];

  @memoized
  BuiltList<Category> get visible =>
      BuiltList<Category>(map.values.where((value) => value.visible));
}

////////////////////
/// Main Reducer
///////////////////

NestedReducerBuilder<App, AppBuilder, Categories, CategoriesBuilder>
    createCategoriesReducer() =>
        NestedReducerBuilder<App, AppBuilder, Categories, CategoriesBuilder>(
          (state) => state.categories,
          (builder) => builder.categories,
        )
          ..add(CategoriesActionsNames.update, _updateCategory)
          ..add(CategoriesActionsNames.remove, _removeCategory)
          ..add(CategoriesActionsNames.setCurrent, _setCurrentItem);

////////////////////
/// Reducers
///////////////////

CategoriesBuilder _updateCategory(Categories state,
        Action<UpdateEntity<Category>> action, CategoriesBuilder builder) =>
    builder
      ..map[action.payload.uid] =
          (action.payload.entity.toBuilder()..uid = action.payload.uid).build();

CategoriesBuilder _removeCategory(
        Categories state, Action<String> action, CategoriesBuilder builder) =>
    builder..map.remove(action.payload);

CategoriesBuilder _setCurrentItem(
        Categories state, Action<String> action, CategoriesBuilder builder) =>
    builder..currentUid = action.payload;
