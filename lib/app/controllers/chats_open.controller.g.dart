// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chats_open.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ChatsOpenController on _ChatsOpenControllerBase, Store {
  Computed<List<Chat>> _$listOutputComputed;

  @override
  List<Chat> get listOutput =>
      (_$listOutputComputed ??= Computed<List<Chat>>(() => super.listOutput))
          .value;

  final _$storeAtom = Atom(name: '_ChatsOpenControllerBase.store');

  @override
  ObservableFuture<ChatsOpenStore> get store {
    _$storeAtom.context.enforceReadPolicy(_$storeAtom);
    _$storeAtom.reportObserved();
    return super.store;
  }

  @override
  set store(ObservableFuture<ChatsOpenStore> value) {
    _$storeAtom.context.conditionallyRunInAction(() {
      super.store = value;
      _$storeAtom.reportChanged();
    }, _$storeAtom, name: '${_$storeAtom.name}_set');
  }

  final _$connectionAtom = Atom(name: '_ChatsOpenControllerBase.connection');

  @override
  HubConnection get connection {
    _$connectionAtom.context.enforceReadPolicy(_$connectionAtom);
    _$connectionAtom.reportObserved();
    return super.connection;
  }

  @override
  set connection(HubConnection value) {
    _$connectionAtom.context.conditionallyRunInAction(() {
      super.connection = value;
      _$connectionAtom.reportChanged();
    }, _$connectionAtom, name: '${_$connectionAtom.name}_set');
  }

  final _$fetchAsyncAction = AsyncAction('fetch');

  @override
  Future fetch() {
    return _$fetchAsyncAction.run(() => super.fetch());
  }
}
