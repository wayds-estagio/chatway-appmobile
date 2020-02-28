import 'package:chatway/app/apis/home.api.dart';
import 'package:chatway/app/models/help.model.dart';
import 'package:chatway/app/stores/home.store.dart';
import 'package:chatway/app/utils/api_response.dart';
import 'package:mobx/mobx.dart';

part 'home.controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  ObservableFuture<HomeStore> store;

  @computed
  List<String> get listFiltered {
    if (store.value == null) return List<String>();
    return store.value.needHelpList.toList();
  }

  _HomeControllerBase() {
    fetchStore();
  }

  @action
  fetchStore() async {
    store = getStoreApi().asObservable();
  }

  Future<HomeStore> getStore() async {
    await Future.delayed(const Duration(seconds: 2));

    var list = List<String>();
    list.add("Ajuda 1");
    list.add("Ajuda 2");
    list.add("Ajuda 3");
    list.add("Outro");

    var store = HomeStore();

    store.needHelpList = list.asObservable();

    return store;
  }

  Future<HomeStore> getStoreApi() async {
    //await Future.delayed(const Duration(seconds: 2));

    NeedHelp list;
    var store = HomeStore();

    ApiResponse response = await HomeApi.getHelp();

    if (response.ok) {
      list = response.result;
      store.needHelpList = list.precisoAjuda.asObservable();

      return store;
    } else {
      return null;
    }
  }
}
