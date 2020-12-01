import "../lib/tomoney.dart";

void main() {
  var money = '12345607890.00'.toMoney();
  var money2 = '1000000000'.toMoney();
  var money3 = '100.0033333'.toMoney();
  print(money);
  print(money2);
  print(money3);
}
