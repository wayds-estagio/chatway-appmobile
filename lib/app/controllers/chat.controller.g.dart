// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ChatController on _ChatControllerBase, Store {
  Computed<List<Message>> _$listFilteredComputed;

  @override
  List<Message> get listFiltered => (_$listFilteredComputed ??=
          Computed<List<Message>>(() => super.listFiltered))
      .value;

  final _$storeAtom = Atom(name: '_ChatControllerBase.store');

  @override
  ObservableFuture<ChatStore> get store {
    _$storeAtom.context.enforceReadPolicy(_$storeAtom);
    _$storeAtom.reportObserved();
    return super.store;
  }

  @override
  set store(ObservableFuture<ChatStore> value) {
    _$storeAtom.context.conditionallyRunInAction(() {
      super.store = value;
      _$storeAtom.reportChanged();
    }, _$storeAtom, name: '${_$storeAtom.name}_set');
  }

  final _$connectionAtom = Atom(name: '_ChatControllerBase.connection');

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
      Atom(name: '_ChatControllerBase.inputMessageController');

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

  final _$inputMessageAtom = Atom(name: '_ChatControllerBase.inputMessage');

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

  final _$isAttendedAtom = Atom(name: '_ChatControllerBase.isAttended');

  @override
  bool get isAttended {
    _$isAttendedAtom.context.enforceReadPolicy(_$isAttendedAtom);
    _$isAttendedAtom.reportObserved();
    return super.isAttended;
  }

  @override
  set isAttended(bool value) {
    _$isAttendedAtom.context.conditionallyRunInAction(() {
      super.isAttended = value;
      _$isAttendedAtom.reportChanged();
    }, _$isAttendedAtom, name: '${_$isAttendedAtom.name}_set');
  }

  final _$chatAtom = Atom(name: '_ChatControllerBase.chat');

  @override
  Chat get chat {
    _$chatAtom.context.enforceReadPolicy(_$chatAtom);
    _$chatAtom.reportObserved();
    return super.chat;
  }

  @override
  set chat(Chat value) {
    _$chatAtom.context.conditionallyRunInAction(() {
      super.chat = value;
      _$chatAtom.reportChanged();
    }, _$chatAtom, name: '${_$chatAtom.name}_set');
  }

  final _$userAtom = Atom(name: '_ChatControllerBase.user');

  @override
  User get user {
    _$userAtom.context.enforceReadPolicy(_$userAtom);
    _$userAtom.reportObserved();
    return super.user;
  }

  @override
  set user(User value) {
    _$userAtom.context.conditionallyRunInAction(() {
      super.user = value;
      _$userAtom.reportChanged();
    }, _$userAtom, name: '${_$userAtom.name}_set');
  }

  final _$setHelpMessageAsyncAction = AsyncAction('setHelpMessage');

  @override
  Future setHelpMessage(String helpMessage) {
    return _$setHelpMessageAsyncAction
        .run(() => super.setHelpMessage(helpMessage));
  }

  final _$fetchAsyncAction = AsyncAction('fetch');

  @override
  Future<void> fetch() {
    return _$fetchAsyncAction.run(() => super.fetch());
  }

  final _$setInputMessageAsyncAction = AsyncAction('setInputMessage');

  @override
  Future setInputMessage(String value) {
    return _$setInputMessageAsyncAction.run(() => super.setInputMessage(value));
  }

  final _$_ChatControllerBaseActionController =
      ActionController(name: '_ChatControllerBase');

  @override
  dynamic sendHelpMessage(String textHelpMessage) {
    final _$actionInfo = _$_ChatControllerBaseActionController.startAction();
    try {
      return super.sendHelpMessage(textHelpMessage);
    } finally {
      _$_ChatControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic sendMessage(String textMessage) {
    final _$actionInfo = _$_ChatControllerBaseActionController.startAction();
    try {
      return super.sendMessage(textMessage);
    } finally {
      _$_ChatControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic clearInputMessage() {
    final _$actionInfo = _$_ChatControllerBaseActionController.startAction();
    try {
      return super.clearInputMessage();
    } finally {
      _$_ChatControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setIsAttended(bool value) {
    final _$actionInfo = _$_ChatControllerBaseActionController.startAction();
    try {
      return super.setIsAttended(value);
    } finally {
      _$_ChatControllerBaseActionController.endAction(_$actionInfo);
    }
  }
}
