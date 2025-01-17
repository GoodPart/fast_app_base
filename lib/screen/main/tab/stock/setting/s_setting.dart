import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/datetime_extension.dart';
import 'package:fast_app_base/common/data/preference/app_preferences.dart';
import 'package:fast_app_base/common/data/preference/prefs.dart';
import 'package:fast_app_base/common/widget/w_big_button.dart';
import 'package:fast_app_base/screen/main/tab/stock/setting/d_number.dart';
import 'package:fast_app_base/screen/main/tab/stock/setting/w_switch_menu.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool isPushOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "설정".text.make(),
      ),
      body: ListView(
        children: [
          //switch
          Obx(
            () => SwitchMenu("푸시 설정", Prefs.isPushOnRx.get(), onTap: (isOn) {
              Prefs.isPushOnRx.set(isOn);
            }),
          ),
          Obx(() => Slider(
              value: Prefs.sliderPosition.get(),
              onChanged: (value) {
                Prefs.sliderPosition.set(value);
              })),
          Obx(
            () => BigButton(
                "날짜 ${Prefs.birthday.get() == null ? "" : Prefs.birthday.get()?.formattedDate}",
                onTap: () async {
              final date = await showDatePicker(
                  context: context,
                  firstDate: DateTime.now().subtract(90.days),
                  lastDate: DateTime.now().add(90.days));
              if (date != null) {
                Prefs.birthday.set(date);
              }
            }),
          ),
          Obx(
            () => BigButton(
            "저장된 숫자 ${Prefs.number.get()}",
            onTap: () async {
              final number = await NumberDialog().show();
              if(number != null) {
                Prefs.number.set(number);
              }
            }),
          )
          //slider

          //date time

          //number
        ],
      ),
    );
  }
}
