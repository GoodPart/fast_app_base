import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

class StockDetailScreen extends StatelessWidget {
  final String stockName;
  const StockDetailScreen({super.key, required this.stockName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: stockName.text.make(),
      ),
      body: stockName.text.make(),
    );
  }
}
