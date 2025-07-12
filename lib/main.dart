import 'projetoConta/conta.dart';
import 'projetoConta/tipoContas/corrente.dart';
import 'projetoConta/tipoContas/poupanca.dart';

void main() {

  ContaCorrente contaTres = ContaCorrente('Gustavo', 52080.40);
  ContaPoupanca contaQuatro = ContaPoupanca('Karen', 1000000.10);

  List<Conta> contas = <Conta>[contaUm, contaDois];

  for (Conta conta in contas) {
    conta.imprimeSaldo();
  }

  ContaCorrente.receber(300);
  ContaCorrente.receber(500);
  ContaPoupanca.enviar(200);
  ContaPoupanca.receber(1300.20);
  ContaCorrente.enviar(1000);
  ContaCorrente.receber(3800.20);
  ContaPoupanca.receber(5689.45);
}
