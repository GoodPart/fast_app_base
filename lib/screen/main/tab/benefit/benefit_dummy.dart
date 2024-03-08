import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/screen/main/tab/benefit/vo/vo_benefit.dart';

final benefitOpenApp = Benefit('$basePath/benefit/benefit_01.png', "친구와 함께 토스 켜고", "포인트 받기");
final benefitMission = Benefit('$basePath/benefit/benefit_02.png', "이번 주 미션하면", "얼마 받을지 보기");
final benefitLucky = Benefit('$basePath/benefit/benefit_03.png', "오늘의 행운복권", "포인트 받기");
final benefitLiveShow = Benefit('$basePath/benefit/benefit_04.png', "라이브 쇼핑 보고", "포인트 받기");
final benefitQuiz = Benefit('$basePath/benefit/benefit_05.png', "행운퀴즈 종료", "추가 혜택 보기");
final benefitWork = Benefit('$basePath/benefit/benefit_06.png', "만보기", "140원 받기");
final benefitWork1 = Benefit('$basePath/benefit/benefit_06.png', "만보기", "140원 받기");
final benefitWork2 = Benefit('$basePath/benefit/benefit_06.png', "만보기", "140원 받기");

final benefits = <Benefit>[
  benefitOpenApp,
  benefitMission,
  benefitLucky,
  benefitLiveShow,
  benefitQuiz,
  benefitWork,
  benefitWork1,
  benefitWork2,
];