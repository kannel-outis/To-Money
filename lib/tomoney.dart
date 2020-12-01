// part of "../example/main.dart";

extension ToMoney on String {
  String toMoney() {
    if (!this.contains(".")) {
      List<String> characters = this.split("").reversed.toList();
      for (var i = 0; i < characters.length; i++) {
        if (i % 4 == 0) {
          characters.insert(i, ",");
        }
      }
      return characters.reversed.join().substring(0, characters.length - 1);
    } else {
      List<String> char = this.split(".").toList();
      List<String> characters = char[0].split("").reversed.toList();
      for (var i = 0; i < characters.length; i++) {
        if (i % 4 == 0) {
          characters.insert(i, ",");
        }
      }
      return characters.reversed.join().substring(0, characters.length - 1) +
          (".${char[1]}");
    }
  }
}
