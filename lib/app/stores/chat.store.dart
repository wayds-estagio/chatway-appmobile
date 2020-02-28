import 'package:chatway/app/models/message.model.dart';
import 'package:mobx/mobx.dart';
part 'chat.store.g.dart';

class ChatStore = _ChatStoreBase with _$ChatStore;

abstract class _ChatStoreBase with Store {
  @observable
  ObservableList<Message> messages = ObservableList<Message>().asObservable();

  @action
  addMessage(Message value) {
    messages.insert(0, value);
  }

  @action
  removeItem(Message value) {
    messages.removeWhere((item) => item == value);
  }
}
