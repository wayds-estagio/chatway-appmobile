import 'package:chatway/app/models/chat_server.model.dart';
import 'package:chatway/app/models/message.model.dart';
import 'package:chatway/app/models/user.model.dart';
import 'package:chatway/app/pages/chat/chat.store.dart';
import 'package:chatway/app/utils/const.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:signalr_client/signalr_client.dart';
part 'chat.controller.g.dart';

class ChatController = _ChatControllerBase with _$ChatController;

abstract class _ChatControllerBase with Store {
  // *-----------------------------------------------------------------------------------
  @observable
  ObservableFuture<ChatStore> store;
  @observable
  HubConnection connection;
  @observable
  TextEditingController inputMessageController = TextEditingController();
  @observable
  String inputMessage = '';

  var user = User(
    id: "UserID usuario Test",
    nome: "Motorista Test",
    login: "test@dev.com",
    senha: "123",
    unidade: "Unidade Test",
    empresa: "Empresa Test",
    tipo: "Motorista",
    dispositivo: "Dispositivo Test",
    datacriacao: DateTime.now(),
  );

  var chatServer = ChatServer(
    motorista: "Motorista Test",
    unidade: "Unidade Test",
    concluido: false,
  );
  // *-----------------------------------------------------------------------------------

  @computed
  List<Message> get listFiltered {
    if (store.value == null) return List<Message>();

    return store.value.messages.reversed.toList();
  }

  // *-----------------------------------------------------------------------------------
  @action
  setHelpMessage(String textHelpMessage) async {
    await fetch();

    if (textHelpMessage != "Outro") {
      sendMessagem(textHelpMessage);
    }
  }

  @action
  sendMessagem(String textMessagem) {
    final message = Message(
      content: textMessagem,
      isYou: true,
      timestamp: DateTime.now(),
      isRead: false,
      isSent: false,
    );
    print("> sendMessage: ${message.toString()}");
    print("> sendMessagem: ${chatServer.toString()}");

    store.value.addMessage(message);
    connection.invoke("Send", args: [message, chatServer.id]);

    clearInputMessage();
  }

  @action
  clearInputMessage() {
    inputMessageController.clear();
    inputMessage = "";
  }

  @action
  fetch() async {
    store = getStore().asObservable();
    await createSignalRConnection();
  }

  @action
  setInputMessage(String value) async => inputMessage = value;

  // *-----------------------------------------------------------------------------------
  Future<ChatStore> getStore() async {
    var store = ChatStore();
    return store;
  }

  Future<void> getChatId() async {
    chatServer.datacriacao = DateTime.now();
    await connection.invoke("GetIdChat", args: [chatServer]);
  }

  Future<void> createSignalRConnection() async {
    connection =
        HubConnectionBuilder().withUrl("${Consts.baseURL}/ChatWay").build();

    await connection.start();
    await getChatId();

    // !-------------------------------------------------------------------
    connection.on("ReceiveChatId", (data) {
      print("> ReceiveChatId ${data.toString()}");
      chatServer.id = data.toString();

      connection.invoke("AddId", args: [chatServer.id]);
    });

    connection.on("Receive", (data) {
      print("> Receive ${data.toString()}");

      final receiveMessage = Message(
        content: data.toString(),
        isYou: false,
        timestamp: DateTime.now(),
        isRead: false,
        isSent: false,
      );
      store.value.addMessage(receiveMessage);
    });
    // !-------------------------------------------------------------------
  }
}
