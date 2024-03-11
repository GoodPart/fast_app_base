import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_image_button.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/s_search_stock.dart';
import 'package:flutter/material.dart';

import 'tab/f_my_stock.dart';
import 'tab/f_todays_discovery.dart';

class StockFragment extends StatefulWidget {
  const StockFragment({super.key});

  @override
  State<StockFragment> createState() => _StockFragmentState();
}

class _StockFragmentState extends State<StockFragment> with TickerProviderStateMixin {
  late final TabController controller = TabController(length: 2, vsync: this);
  int currentIndex = 0;

  @override
  void dispose() {

    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor:  context.appColors.appBarBackground,
          surfaceTintColor: context.appColors.appBarBackground,
          pinned: true,
          actions: [
            ImageButton(
                onTap: () {
                  Nav.push(SearchStockScreen());
                },
                imagePath: '$basePath/icon/stock_search.png'),
            ImageButton(
                onTap: () {
                  context.showSnackbar("날짜");
                },
                imagePath: '$basePath/icon/stock_calendar.png'),
            ImageButton(
                onTap: () {
                  context.showSnackbar("설정");
                },
                imagePath: '$basePath/icon/stock_settings.png'),
          ],
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              title,
              tabBar,
              if(currentIndex == 0)
                MyStockFragment()
              else
                TodaysDiscoveryFragment()
            ],
          ),
        )
      ],
    );
  }
  Widget get title => Container(
    color: context.appColors.roundedLayoutBackground,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        "토스증권".text.size(24).bold.white.make(),
        width10,
        width10,
        Row(
          children: [
            "S&P 500".text.size(13).bold.color(context.appColors.text).make(),
            width10,
            3919.29.toComma().text.size(13).bold.color(Colors.red).make(),
          ],
        )
      ],
    ).pOnly(left: 20),
  );
  Widget get tabBar => Container(
    color: context.appColors.roundedLayoutBackground,
    child: Column(
      children: [
        TabBar(
          onTap: (newIndex) {
            setState(() {
              currentIndex = newIndex;
            });
          },
          labelStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          labelPadding: const EdgeInsets.symmetric(vertical: 20),
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: Colors.white,
            controller: controller,
            tabs: [
          "내 주식".text.make(),
          "오늘의 발견".text.make()
        ]),
        Line()
      ],
    ),
  );
  Widget get myAccount => Placeholder();
  Widget get height20 => Placeholder();
  Widget get myStocks => Placeholder();
}
