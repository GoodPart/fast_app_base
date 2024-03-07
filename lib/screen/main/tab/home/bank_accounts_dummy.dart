import 'package:fast_app_base/screen/main/tab/home/banks_dummy.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';

final bankAccountShinhan1 = BankAccount(bankShinhan, 3000000, accountTypeName: "신한 주거래 우대통장(저축예금)");
final bankAccountShinhan2 = BankAccount(bankShinhan, 30000000, accountTypeName: "예금 통장");
final bankAccountShinhan3 = BankAccount(bankShinhan, 300000000, accountTypeName: "적금 통장");
final bankAccountToss = BankAccount(bankTtoss, 30000000000);
final bankAccountKakao = BankAccount(bankKakao, 400000, accountTypeName: "카카오 통장");

// 리스트 생성
final bankAccounts = [bankAccountShinhan1,
  bankAccountShinhan2,
  bankAccountShinhan3,
  bankAccountToss,
  bankAccountKakao,];