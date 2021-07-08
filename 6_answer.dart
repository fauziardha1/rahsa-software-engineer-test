import 'dart:math';

main() {
  List<String> plainText = [
    "have a nice day",
    "feed the dog",
    "chillout",
    "if man was meant to stay on the ground god would have given us roots",
  ];

  for (var text in plainText) {
    String chipText, decText = '';

    print("Plaintext : $text");
    chipText = enkripsi(text);
    decText = dekripsi(chipText);
    print("Hasil enkripsi : ${chipText}");
    print("Hasil decripsi : ${decText} \n");
  }
}

String enkripsi(String plainText) {
  String text = plainText.replaceAll(" ", "");
  int length = text.length;
  int width = sqrt(length).ceil();
  String result = '';

  for (var i = 0; i < width; i++) {
    for (var j = i; j < length; j += width) {
      result += text[j];
    }
    result += " ";
  }
  return result;
}

String dekripsi(String text) {
  List<String> splitText = text.split(" ");
  String result = "";
  for (var positon = 0; positon < splitText[0].length; positon++) {
    for (var i = 0; i < splitText.length; i++) {
      if (positon < splitText[i].length) {
        result += splitText[i][positon];
      }
    }
  }

  return result;
}
