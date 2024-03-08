import 'vo_bank.dart';

class BankAccount {
  final Bank bank;
  int blance;
  final String? accountTypeName;

  BankAccount(
    this.bank,
    this.blance, {
      this.accountTypeName, //괄호 안에 들어가면 안넣어도 ㄱㅊ
    }
  );
}
