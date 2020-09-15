// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'searchable_selection.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SearchableSelectionStore<T> on _SearchableSelectionStore<T>, Store {
  Computed<List<String>> _$filteredIdsComputed;

  @override
  List<String> get filteredIds => (_$filteredIdsComputed ??=
          Computed<List<String>>(() => super.filteredIds))
      .value;

  final _$itemSelectedAtom =
      Atom(name: '_SearchableSelectionStore.itemSelected');

  @override
  ObservableMap<String, bool> get itemSelected {
    _$itemSelectedAtom.context.enforceReadPolicy(_$itemSelectedAtom);
    _$itemSelectedAtom.reportObserved();
    return super.itemSelected;
  }

  @override
  set itemSelected(ObservableMap<String, bool> value) {
    _$itemSelectedAtom.context.conditionallyRunInAction(() {
      super.itemSelected = value;
      _$itemSelectedAtom.reportChanged();
    }, _$itemSelectedAtom, name: '${_$itemSelectedAtom.name}_set');
  }

  final _$currentSearchAtom =
      Atom(name: '_SearchableSelectionStore.currentSearch');

  @override
  String get currentSearch {
    _$currentSearchAtom.context.enforceReadPolicy(_$currentSearchAtom);
    _$currentSearchAtom.reportObserved();
    return super.currentSearch;
  }

  @override
  set currentSearch(String value) {
    _$currentSearchAtom.context.conditionallyRunInAction(() {
      super.currentSearch = value;
      _$currentSearchAtom.reportChanged();
    }, _$currentSearchAtom, name: '${_$currentSearchAtom.name}_set');
  }

  final _$_SearchableSelectionStoreActionController =
      ActionController(name: '_SearchableSelectionStore');

  @override
  dynamic clearSearch() {
    final _$actionInfo =
        _$_SearchableSelectionStoreActionController.startAction();
    try {
      return super.clearSearch();
    } finally {
      _$_SearchableSelectionStoreActionController.endAction(_$actionInfo);
    }
  }
}
