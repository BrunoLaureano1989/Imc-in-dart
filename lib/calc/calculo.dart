calculate(double altura, double peso) {
  try {
    double valor = peso / (altura * altura);
    return valor;
  } catch (e) {
    return 0.0;
  }
}
