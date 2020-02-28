// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStoreBase, Store {
  final _$needHelpListAtom = Atom(name: '_HomeStoreBase.needHelpList');

  @override
  ObservableList<String> get needHelpList {
    _$needHelpListAtom.context.enforceReadPolicy(_$needHelpListAtom);
    _$needHelpListAtom.reportObserved();
    return super.needHelpList;
  }

  @override
  set needHelpList(ObservableList<String> value) {
    _$needHelpListAtom.context.conditionallyRunInAction(() {
      super.needHelpList = value;
      _$needHelpListAtom.reportChanged();
    }, _$needHelpListAtom, name: '${_$needHelpListAtom.name}_set');
  }

  final _$_HomeStoreBaseActionController =
      ActionController(name: '_HomeStoreBase');

  @override
  dynamic addNeedHelp(String value) {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction();
    try {
      return super.addNeedHelp(value);
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeNeedHelp(String value) {
    final _$actionInfo = _$_HomeStoreBaseActionController.startAction();
    try {
      return super.removeNeedHelp(value);
    } finally {
      _$_HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }
}
