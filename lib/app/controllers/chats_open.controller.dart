import 'package:chatway/app/apis/chat.api.dart';
import 'package:chatway/app/models/chat.model.dart';
import 'package:chatway/app/stores/chats_open.store.dart';
import 'package:chatway/app/utils/api_response.dart';
import 'package:chatway/app/utils/const.dart';
import 'package:mobx/mobx.dart';
import 'package:signalr_client/signalr_client.dart';
part 'chats_open.controller.g.dart';

class ChatsOpenController = _ChatsOpenControllerBase with _$ChatsOpenController;

abstract class _ChatsOpenControllerBase with Store {
  @observable
  ObservableFuture<ChatsOpenStore> store;
  @observable
  HubConnection connection;

  @computed
  List<Chat> get listOutput {
    if (store.value == null) return List<Chat>();
    return store.value.chats;
  }

  _ChatsOpenControllerBase() {
    fetch();
  }

  @action
  fetch() async {
    store = getChatPendente().asObservable();
    await createSignalRConnection();
  }

  Future<void> refreshList() async {
    store = getChatPendente().asObservable();
  }

  Future<void> createSignalRConnection() async {
    connection =
        HubConnectionBuilder().withUrl("${Consts.baseURL}/ChatWay").build();

    await connection.start();
    connection.invoke("LinkChatToGroup", args: ["Atendente"]);

    connection.on("ReceiveDebug", (data) {
      print("> ReceiveDebug ${data.toString()}");
    });

    connection.on("ReceiveChatOpen", (data) {
      print("> ReceiveChatOpen ${data[0].toString()}");
      //final receiveMessage = Message.fromJson(data[0]);
    });
  }

  Future<ChatsOpenStore> getChatPendente() async {
    var store = ChatsOpenStore();
    List<Chat> chats;

    ApiResponse response =
        await ChatApi.getChatPendente("5e5e52eba1a94923c47e710c");

    if (response.ok) {
      chats = response.result;
      store.chats = chats.asObservable();

      return store;
    } else
      return store;
  }
}
