// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chats_open.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ChatsOpenStore on _ChatsOpenStoreBase, Store {
  final _$chatsAtom = Atom(name: '_ChatsOpenStoreBase.chats');

  @override
  ObservableList<Chat> get chats {
    _$chatsAtom.context.enforceReadPolicy(_$chatsAtom);
    _$chatsAtom.reportObserved();
    return super.chats;
  }

  @override
  set chats(ObservableList<Chat> value) {
    _$chatsAtom.context.conditionallyRunInAction(() {
      super.chats = value;
      _$chatsAtom.reportChanged();
    }, _$chatsAtom, name: '${_$chatsAtom.name}_set');
  }

  final _$_ChatsOpenStoreBaseActionController =
      ActionController(name: '_ChatsOpenStoreBase');

  @override
  dynamic addMessage(Chat value) {
    final _$actionInfo = _$_ChatsOpenStoreBaseActionController.startAction();
    try {
      return super.addMessage(value);
    } finally {
      _$_ChatsOpenStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeItem(Chat value) {
    final _$actionInfo = _$_ChatsOpenStoreBaseActionController.startAction();
    try {
      return super.removeItem(value);
    } finally {
      _$_ChatsOpenStoreBaseActionController.endAction(_$actionInfo);
    }
  }
}
