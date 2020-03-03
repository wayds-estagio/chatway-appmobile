// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chats_attended.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ChatsAttendedController on _ChatsAttendedControllerBase, Store {
  Computed<List<Chat>> _$listOutputComputed;

  @override
  List<Chat> get listOutput =>
      (_$listOutputComputed ??= Computed<List<Chat>>(() => super.listOutput))
          .value;

  final _$storeAtom = Atom(name: '_ChatsAttendedControllerBase.store');

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

  final _$connectionAtom =
      Atom(name: '_ChatsAttendedControllerBase.connection');

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

  final _$inputMessageControllerAtom =
      Atom(name: '_ChatsAttendedControllerBase.inputMessageController');

  @override
  TextEditingController get inputMessageController {
    _$inputMessageControllerAtom.context
        .enforceReadPolicy(_$inputMessageControllerAtom);
    _$inputMessageControllerAtom.reportObserved();
    return super.inputMessageController;
  }

  @override
  set inputMessageController(TextEditingController value) {
    _$inputMessageControllerAtom.context.conditionallyRunInAction(() {
      super.inputMessageController = value;
      _$inputMessageControllerAtom.reportChanged();
    }, _$inputMessageControllerAtom,
        name: '${_$inputMessageControllerAtom.name}_set');
  }

  final _$inputMessageAtom =
      Atom(name: '_ChatsAttendedControllerBase.inputMessage');

  @override
  String get inputMessage {
    _$inputMessageAtom.context.enforceReadPolicy(_$inputMessageAtom);
    _$inputMessageAtom.reportObserved();
    return super.inputMessage;
  }

  @override
  set inputMessage(String value) {
    _$inputMessageAtom.context.conditionallyRunInAction(() {
      super.inputMessage = value;
      _$inputMessageAtom.reportChanged();
    }, _$inputMessageAtom, name: '${_$inputMessageAtom.name}_set');
  }

  final _$fetchAsyncAction = AsyncAction('fetch');

  @override
  Future fetch() {
    return _$fetchAsyncAction.run(() => super.fetch());
  }

  final _$setInputMessageAsyncAction = AsyncAction('setInputMessage');

  @override
  Future setInputMessage(String value) {
    return _$setInputMessageAsyncAction.run(() => super.setInputMessage(value));
  }

  final _$_ChatsAttendedControllerBaseActionController =
      ActionController(name: '_ChatsAttendedControllerBase');

  @override
  dynamic clearInputMessage() {
    final _$actionInfo =
        _$_ChatsAttendedControllerBaseActionController.startAction();
    try {
      return super.clearInputMessage();
    } finally {
      _$_ChatsAttendedControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic sendMessage(String textMessage, String chatId) {
    final _$actionInfo =
        _$_ChatsAttendedControllerBaseActionController.startAction();
    try {
      return super.sendMessage(textMessage, chatId);
    } finally {
      _$_ChatsAttendedControllerBaseActionController.endAction(_$actionInfo);
    }
  }
}
