import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/stock/vo_popular_stock.dart';
import 'package:flutter/material.dart';

class PopularStockItem extends StatelessWidget {
  final PopularStock stockItem;
  final int number;

  const PopularStockItem(
      {super.key, required this.stockItem, required this.number});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 40,
          child: number.text.make(),
        ),
        width10,
        width10,
        width10,
        stockItem.name.text.make(),
        emptyExpanded,
        stockItem.todayPercentageString.text
            .color(stockItem.getPriceColor(context))
            .make(),
      ],
    ).pSymmetric(v: 25);
  }
}
