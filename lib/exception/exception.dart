class Validacao implements Exception {
  String error() => 'Nome precisa ser prenchido';

  @override
  String toString() {
    return "Validacao: $error()";
  }
}
