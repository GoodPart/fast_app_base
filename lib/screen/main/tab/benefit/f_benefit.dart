import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/benefit/benefit_dummy.dart';
import 'package:fast_app_base/screen/main/tab/benefit/w_benefit_item.dart';
import 'package:flutter/material.dart';

class BenefitFragment extends StatefulWidget {
  const BenefitFragment({super.key});

  @override
  State<BenefitFragment> createState() => _BenefitFragmentState();
}

class _BenefitFragmentState extends State<BenefitFragment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.symmetric(vertical: 20),
      color: Colors.black,
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            height40,
            height10,
            "혜택".text.start.color(Colors.white).bold.size(24).make(),
            height40,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "내 포인트".text.start.color(Colors.white).bold.size(14).make(),
                Row(
                  children: [
                    "569 원".text.color(Colors.white).bold.size(14).make(),
                    width10,
                    Icon(Icons.arrow_forward_ios_rounded,color: Colors.white, size: 16,)
                  ],
                ),
              ],
            ),
            height40,
            "혜택 더 받기".text.start.color(Colors.white).bold.size(18).make(),
            height20,
            ...benefits.map((ele) => BenefitItem(benefit: ele))
          ],
        ),
      ),
    );
  }
}
