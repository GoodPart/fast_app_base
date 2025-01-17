import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_arrow.dart';
import 'package:fast_app_base/common/widget/w_long_button.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'w_interest_stock.dart';

class MyStockFragment extends StatelessWidget {
  const MyStockFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [getMyAccount(context), height20, getMyContext(context), height40],
    );
  }

  Widget getMyAccount(BuildContext context) => Container(
        color: context.appColors.roundedLayoutBackground,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            height20,
            "계좌".text.make(),
            Row(
              children: [
                '443원'.text.size(20).bold.make(),
                Arrow(),
                emptyExpanded,
                RoundedContainer(
                  child: "채우기".text.size(20).make(),
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  radius: 8,
                ),
              ],
            ),
            height40,
            Line(color: context.appColors.divider,),
            height10,
            const LongButton(title: "주문내역"),
            const LongButton(title: "판매수익")
          ],
        ),
      );

  Widget getMyContext(BuildContext context) => Column(
    children: [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        color: context.appColors.roundedLayoutBackground,
        child: Column(
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween ,
               children: [
                 "관심주식".text.bold.make(),
                 "편집하기".text.color(Colors.grey).bold.make(),
               ],
             ),
             Tap(
               onTap: (){context.showSnackbar("기본");},
               child: Padding(
                 padding: const EdgeInsets.symmetric(vertical: 20),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                   children: [
                     "기본".text.make(),
                     Arrow(
                       direction: AxisDirection.up ,
                     ),
                   ],
                 ),
               ),
             ),
           ],
        ),
      ),
      InterestStockList().pSymmetric(h: 20),
    ],
  );
}
