import 'package:chatway/app/apis/home.api.dart';
import 'package:chatway/app/stores/home.store.dart';
import 'package:chatway/app/utils/api_response.dart';
import 'package:chatway/app/utils/const.dart';
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

  Future<HomeStore> getStoreApi() async {
    //await Future.delayed(const Duration(seconds: 2));

    List<String> list;
    var store = HomeStore();

    ApiResponse response = await HomeApi.getHelp(unidade: Consts.user.unidade);

    if (response.ok) {
      list = response.result;
      store.needHelpList = list.asObservable();

      return store;
    } else
      return null;
  }
}
