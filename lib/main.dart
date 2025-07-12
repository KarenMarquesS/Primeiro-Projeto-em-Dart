import 'projetoConta/conta.dart';
import 'projetoConta/tipoContas/corrente.dart';
import 'projetoConta/tipoContas/poupanca.dart';

void main() {

  ContaCorrente contaTres = ContaCorrente('Gustavo', 52080.40);
  ContaPoupanca contaQuatro = ContaPoupanca('Karen', 1000000.10);

  List<Conta> contas = <Conta>[contaTres, contaQuatro];

  for (Conta conta in contas) {
    conta.imprimeSaldo();
  }

  contaQuatro.receber(300);
  contaQuatro.receber(500);
  contaTres.enviar(200);
  contaTres.receber(1300.20);
  contaQuatro.enviar(1000);
  contaQuatro.receber(3800.20);
  contaTres.receber(5689.45);
}
