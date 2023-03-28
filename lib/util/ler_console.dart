import 'dart:convert';
import 'dart:io';

class Util {
  static String lerConsoleTexto(String texto) {
    print(texto);
    return lerConsole();
  }

  static String lerConsole() {
    return stdin.readLineSync(encoding: utf8) ?? '';
  }

  static double? lerValue() {
    var value = lerConsole();
    try {
      return double.parse(value);
    } catch (e) {
      return null;
    }
  }

  static dynamic lerValueComTexto(String texto) {
    print(texto);
    return lerValue();
  }
}
