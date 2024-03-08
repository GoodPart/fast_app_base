import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import './vo/vo_notification.dart';
class NotificationItemWidget extends StatefulWidget {
  final TossNotification notification;
  const NotificationItemWidget({super.key, required this.notification});

  @override
  State<NotificationItemWidget> createState() => _NotificationItemWidgetState();
}

class _NotificationItemWidgetState extends State<NotificationItemWidget> {
  @override
  Widget build(BuildContext context) {

    return Container(
      color: widget.notification.isRead ? context.backgroundColor : context.appColors.unreadColor,
      child: Column(
        children: [
          Row(
            children: [Image.asset(widget.notification.type.iconPath)],
          ),widget.notification.description.text.make(),
        ],
      ),
    );
  }
}
