import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

import '../vo_stock.dart';

class StockItem extends StatelessWidget {
  final Stock stock;
  const StockItem(this.stock,{super.key});

  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.symmetric(vertical: 10), child: Row(
      children: [
        Image.asset(stock.stockImagePath, width: 50,),
        width10,
        width10,
        stock.name.text.size(18).make(),
        emptyExpanded,
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            stock.todayPercentageString.text.color(stock.getPriceColor(context)).make(),
            "${stock.currentPrice.toComma()}원".text.color(context.appColors.lessImportant).make(),
          ],
        )
      ],
    ),);
  }
}
