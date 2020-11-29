// part of "../example/main.dart";

extension ToMoney on String {
  String toMoney() {
    int number = 0;
    if (!this.contains(".")) {
      List<String> characters = this.toString().split("").reversed.toList();
      for (var i = 0; i < characters.length; i++) {
        if (i % 4 == 0) {
          characters.insert(i, ",");
          number++;
        }
      }
      return characters.reversed
          .join()
          .substring(0, this.toString().length + number - 1);
    } else {
      List<String> char = this.split(".").toList();
      List<String> characters = char[0].split("").reversed.toList();
      for (var i = 0; i < characters.length; i++) {
        if (i % 4 == 0) {
          characters.insert(i, ",");
          number++;
        }
      }
      return characters.reversed
              .join()
              .substring(0, this.length + number - char[1].length - 2) +
          (".${char[1]}");
    }
  }
}
