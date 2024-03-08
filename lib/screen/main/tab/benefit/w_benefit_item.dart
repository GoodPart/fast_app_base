import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/benefit/vo/vo_benefit.dart';
import 'package:flutter/material.dart';

class BenefitItem extends StatelessWidget {
  final Benefit benefit;
  const BenefitItem({super.key, required this.benefit});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Image.asset(benefit.imagePath,width: 50,),
          width10,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              benefit.title.text.size(12).color(Colors.white).make(),
              benefit.subTitle.text.size(14).color(Colors.blueAccent).make(),
            ],
          )
        ],
      ),
    );
  }
}
