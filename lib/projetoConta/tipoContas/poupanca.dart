import '../conta.dart';

class ContaPoupanca extends Conta {
  double rendimento = 0.05;

  ContaPoupanca(super.titular, super._saldo);

  void calculaRendimento() {
    _saldo += _saldo * rendimento;
  }
}


/*Essa conta terá o método de rendimento de 5% ao mês, 
que será sobre o valor de saldo
E no mês seguinte irá apresentar o valor atualizado 
*/