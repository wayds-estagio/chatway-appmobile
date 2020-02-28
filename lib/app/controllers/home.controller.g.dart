// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  Computed<List<String>> _$listFilteredComputed;

  @override
  List<String> get listFiltered => (_$listFilteredComputed ??=
          Computed<List<String>>(() => super.listFiltered))
      .value;

  final _$storeAtom = Atom(name: '_HomeControllerBase.store');

  @override
  ObservableFuture<HomeStore> get store {
    _$storeAtom.context.enforceReadPolicy(_$storeAtom);
    _$storeAtom.reportObserved();
    return super.store;
  }

  @override
  set store(ObservableFuture<HomeStore> value) {
    _$storeAtom.context.conditionallyRunInAction(() {
      super.store = value;
      _$storeAtom.reportChanged();
    }, _$storeAtom, name: '${_$storeAtom.name}_set');
  }

  final _$fetchStoreAsyncAction = AsyncAction('fetchStore');

  @override
  Future fetchStore() {
    return _$fetchStoreAsyncAction.run(() => super.fetchStore());
  }
}
