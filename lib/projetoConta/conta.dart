// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class Conta {
  String titular;
  double _saldo;
  Conta(     
     this.titular,
     this._saldo,
  );

  

  void receber(double valor) {
    _saldo += valor;
    imprimeSaldo();
  }

   void enviar(double valor) {
    _saldo -= valor;
    imprimeSaldo();
  }

  void imprimeSaldo(){
    print('Saldo atual da $titular é de R\$$_saldo');
  }
}
