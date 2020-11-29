import "../lib/tomoney.dart";

void main() {
  var money = '123456789.00'.toMoney();
  var money2 = '12345678900000'.toMoney();
  var money3 = '123456789000000000000000000000000.00'.toMoney();
  print(money);
  print(money2);
  print(money3);
}
