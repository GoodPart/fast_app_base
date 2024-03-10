import 'package:fast_app_base/common/util/local_json.dart';
import 'package:fast_app_base/screen/main/tab/stock/vo_simple_stock.dart';
import 'package:get/get.dart';

class SearchStockData extends GetxController {
  List<SimpleStock> stocks = [];
  RxList<String> searchHistoryList = <String>[].obs;
  RxList<SimpleStock> autoCompleteList= <SimpleStock>[].obs;

  @override
  void onInit() {
    searchHistoryList.addAll(["1", "2", '3', '4']);
    loadLocalStockJson();
    super.onInit();
  }

  Future<void> loadLocalStockJson() async{
    final jsonList = await LocalJson.getObjectList<SimpleStock>("json/stock_item.json");
    stocks.addAll(jsonList);
  }
}