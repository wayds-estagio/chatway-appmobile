import 'package:chatway/app/apis/chat.api.dart';
import 'package:chatway/app/models/chat.model.dart';
import 'package:chatway/app/stores/chats_open.store.dart';
import 'package:chatway/app/utils/api_response.dart';
import 'package:chatway/app/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:signalr_client/signalr_client.dart';

import '../models/message.model.dart';
part 'chats_attended.controller.g.dart';

class ChatsAttendedController = _ChatsAttendedControllerBase
    with _$ChatsAttendedController;

abstract class _ChatsAttendedControllerBase with Store {
  @observable
  ObservableFuture<ChatsOpenStore> store;
  @observable
  HubConnection connection;
  @observable
  TextEditingController inputMessageController = TextEditingController();
  @observable
  String inputMessage = '';

  @computed
  List<Chat> get listOutput {
    if (store.value == null) return List<Chat>();
    return store.value.chats;
  }

  _ChatsAttendedControllerBase() {
    fetch();
  }

  @action
  fetch() async {
    store = getChatAtendidos().asObservable();
    await createSignalRConnection();
  }

  @action
  setInputMessage(String value) async => inputMessage = value;

  @action
  clearInputMessage() {
    inputMessageController.clear();
    inputMessage = "";
  }

  @action
  sendMessage(String textMessage, String chatId) {
    final message = Message(
      content: textMessage,
      sender: "asdas",
      receiver: chatId,
      time: DateTime.now(),
    );

    connection.invoke("Send", args: [message, chatId]);

    clearInputMessage();
  }

  Future<void> refreshList() async {
    store = getChatAtendidos().asObservable();
  }

  Future<void> createSignalRConnection() async {
    connection =
        HubConnectionBuilder().withUrl("${Consts.baseURL}/ChatWay").build();

    await connection.start();
    connection.invoke("LinkChatToGroup", args: ["Atendente"]);

    connection.on("ReceiveDebug", (data) {
      print("> ReceiveDebug ${data.toString()}");
    });

    connection.on("ReceiveNewChat", (data) {
      print("> ReceiveNewChat ${data.toString()}");

      store = getChatAtendidos().asObservable();
    });

    connection.on("ReceiveChatOpen", (data) {
      // print("> ReceiveChatOpen ${data[0].toString()}");
      print("> ReceiveChatOpen");
      final receiveMessage = Message.fromJson(data[0]);

      var chat = store.value.chats
          .firstWhere((chat) => chat.id == receiveMessage.receiver);
      store.value.chats.remove(chat);

      chat.mensagens.insert(0, receiveMessage);
      store.value.chats.insert(0, chat);

      //store.value.chats = store.value.chats;

      //final receiveMessage = Message.fromJson(data[0]);
    });
  }

  Future<ChatsOpenStore> getChatAtendidos() async {
    var store = ChatsOpenStore();
    List<Chat> chats;

    ApiResponse response =
        await ChatApi.getChatAtendidos("5e5e52eba1a94923c47e710c");

    if (response.ok) {
      chats = response.result;
      store.chats = chats.asObservable();

      return store;
    } else
      return store;
  }
}
