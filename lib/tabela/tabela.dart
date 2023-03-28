dynamic tabela(double valor) {
  if (valor < 18.5) {
    return 'magreza';
  } else if (valor >= 18.5 && valor <= 24.9) {
    return 'peso normal';
  } else if (valor >= 25 && valor <= 29.9) {
    return 'Sobrepeso';
  } else if (valor >= 30 && valor <= 34.9) {
    return 'obesidade I';
  } else if (valor >= 35 && valor <= 40) {
    return 'obsidade II';
  } else {
    return 'obesidade III';
  }
}