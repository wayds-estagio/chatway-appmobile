import 'package:chatway/app/models/chat.model.dart';
import 'package:mobx/mobx.dart';
part 'chats_open.store.g.dart';

class ChatsOpenStore = _ChatsOpenStoreBase with _$ChatsOpenStore;

abstract class _ChatsOpenStoreBase with Store {
  @observable
  ObservableList<Chat> chats = ObservableList<Chat>().asObservable();

  @action
  addMessage(Chat value) {
    chats.insert(0, value);
  }

  @action
  removeItem(Chat value) {
    chats.removeWhere((item) => item == value);
  }
}
