import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/data/preference/app_preferences.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/s_stock_detail.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/search_stock_data.dart';
import 'package:flutter/material.dart';

class SearchHistoryStockList extends StatefulWidget {
  const SearchHistoryStockList({super.key});

  @override
  State<SearchHistoryStockList> createState() => _SearchHistoryStockListState();
}

class _SearchHistoryStockListState extends State<SearchHistoryStockList>
    with SearchStockDataProvider {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: searchData.searchHistoryList.isNotEmpty ? 65 : 20,
      child: Obx(
        () => ListView.builder(
          itemBuilder: (context, index) {
            final stockName = searchData.searchHistoryList[index];
            return Container(
            margin: EdgeInsets.only(right: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Tap(onTap: (){
                      Nav.push(StockDetailScreen(stockName: stockName));
                    }, child: stockName.text.make(), ),
                    Tap(onTap: () {
                      searchData.removeHistory(stockName);
                    }, child: Icon(Icons.close))
                  ],
                )
                    .box
                    .withRounded(value: 6)
                    .color(context.appColors.roundedLayoutBackground)
                    .p8
                    .make(),
              ],
            ),
          );
          },
          itemCount: searchData.searchHistoryList.length,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
