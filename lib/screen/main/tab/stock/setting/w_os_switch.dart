import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OsSwitch extends StatelessWidget {
  final String value;
  final bool isOn;
  final ValueChanged<bool> onTap;

  const OsSwitch(this.value, this.isOn,{super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
    ? CupertinoSwitch(value: isOn, onChanged: onTap)
    : Switch(value: isOn, onChanged: onTap);
  }
}
