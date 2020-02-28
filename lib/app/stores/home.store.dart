import 'package:mobx/mobx.dart';
part 'home.store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  @observable
  ObservableList<String> needHelpList = ObservableList<String>().asObservable();

  @action
  addNeedHelp(String value) => needHelpList.add(value);

  @action
  removeNeedHelp(String value) =>
      needHelpList.removeWhere((item) => item == value);
}
