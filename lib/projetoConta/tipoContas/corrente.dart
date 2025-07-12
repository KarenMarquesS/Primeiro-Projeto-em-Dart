import '../conta.dart';

class ContaCorrente extends Conta {
  double limite = 300;

  ContaCorrente(super.titular, super._saldo);

  @override
  void enviar(double valor) {
    if (_saldo + limite >= valor) {
      _saldo -= valor;
      imprimeSaldo();
    }

    super.enviar(valor);
  }
}


/*Essa conta terá um empresitmo para uso, e poderá ser usado pelo titular
  */