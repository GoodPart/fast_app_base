import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';
import 'package:flutter/material.dart';

class BankAccountWidget extends StatelessWidget {
  final BankAccount account;

  const BankAccountWidget({super.key, required this.account});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          account.bank.logoImagePath,
          width: 40,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              (account.accountTypeName ?? "${account.bank.name} 통장")
                  .text
                  .start
                  .white
                  .size(12)
                  .make(),
              ("${account.blance}원").text.white.bold.start.size(18).make(),
            ],
          ).pSymmetric(h: 20, v: 10),
        ),
        RoundedContainer(
            backgroundColor: context.appColors.buttonBackground,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            radius: 10,
            child: "송금".text.white.bold.make()),
      ],
    );
  }
}
