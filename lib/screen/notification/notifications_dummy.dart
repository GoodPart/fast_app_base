import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/notification/vo/notification_type.dart';
import 'package:fast_app_base/screen/notification/vo/vo_notification.dart';

final notificationDummies = <TossNotification>[
  TossNotification(NotificationType.tossPay, "이번에 영화 한편 어때요? CGV 할인 쿠폰이 도착했습니다.", DateTime.now().subtract(27.minutes)),
  TossNotification(NotificationType.stock, "인적분할에 대해 알려드릴게요.", DateTime.now().subtract(1.hours)),
  TossNotification(NotificationType.walk, "1,000걸음 이상 걸었다면 포인트 받으세요.", DateTime.now().subtract(1.hours)),
  TossNotification(NotificationType.moneyTip, "유럽 식품 물가가 치솟고 있어요. \n박경수님, 유럽여행에 관심이 있따면 확인해보세요.", DateTime.now().subtract(1.hours)),
  TossNotification(NotificationType.walk, "1,000걸음 이상 걸었다면 포인트 받으세요.", DateTime.now().subtract(8.hours)),
  TossNotification(NotificationType.luck, "6월5일, 행분복권이 도착했어요.", DateTime.now().subtract(12.hours)),
  TossNotification(NotificationType.people, "띵동! 월요일 공동구매 보러가기", DateTime.now().subtract(1.days)),
]
;