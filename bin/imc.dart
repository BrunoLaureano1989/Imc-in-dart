import 'package:imc/classes/pessoas.dart';
import 'package:imc/exception/exception.dart';
import 'package:imc/tabela/tabela.dart';
import 'package:imc/calc/calculo.dart';
import 'package:imc/util/ler_console.dart';

void main(List<String> arguments) {
  var pessoa1 = Pessoa();

  print('Verificacao de IMC');

  pessoa1.setNome(Util.lerConsoleTexto('Digite seu nome'));

  try {
    if (pessoa1.getNome().trim() == '') {
      throw Validacao();
    }
  } on Validacao {
    print(Validacao);
  } catch (e) {
    print(e);
  }

  pessoa1.setAltura(Util.lerValueComTexto('Digite sua altura'));

  pessoa1.setPeso(Util.lerValueComTexto('Digite seu peso'));

  var resultado = calculate(pessoa1.getAltura(), pessoa1.getPeso());

  print(
      '${pessoa1.getNome()} seu IMC é ${resultado.toStringAsFixed(2)} (${tabela(resultado).toString()})');
}
