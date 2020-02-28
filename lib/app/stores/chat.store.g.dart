// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ChatStore on _ChatStoreBase, Store {
  final _$messagesAtom = Atom(name: '_ChatStoreBase.messages');

  @override
  ObservableList<Message> get messages {
    _$messagesAtom.context.enforceReadPolicy(_$messagesAtom);
    _$messagesAtom.reportObserved();
    return super.messages;
  }

  @override
  set messages(ObservableList<Message> value) {
    _$messagesAtom.context.conditionallyRunInAction(() {
      super.messages = value;
      _$messagesAtom.reportChanged();
    }, _$messagesAtom, name: '${_$messagesAtom.name}_set');
  }

  final _$_ChatStoreBaseActionController =
      ActionController(name: '_ChatStoreBase');

  @override
  dynamic addMessage(Message value) {
    final _$actionInfo = _$_ChatStoreBaseActionController.startAction();
    try {
      return super.addMessage(value);
    } finally {
      _$_ChatStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeItem(Message value) {
    final _$actionInfo = _$_ChatStoreBaseActionController.startAction();
    try {
      return super.removeItem(value);
    } finally {
      _$_ChatStoreBaseActionController.endAction(_$actionInfo);
    }
  }
}
