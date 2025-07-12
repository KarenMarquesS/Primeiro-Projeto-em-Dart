import 'dart:io';

void main() {
  List<String> notas = <String>[];
  cabecalho();
  menu(notas);
}

String getComando() {
  print(""" \n Escolha uma das opções abaixo
                1- Adicionar Nota
                2- Listar Notas
                3- Sair \n""");

  List<String> comandos = <String>['1', '2', '3'];
  String? entrada = '';

  entrada = stdin.readLineSync();

  /* Aqui a ! é para dizer uma NEGATIVA - ou seja - 
    NÃO ESTA NA LISTA DE COMANDOS
  */
  if (entrada == null || !comandos.contains(entrada)) {
    print('\n Opção inválida \n');
    getComando();
  }

  return entrada!;
}

List<String> adicNota(List<String> notas) {
  print('\n Informe a Nota \n');
  String? nota = '';

  nota = stdin.readLineSync();

  if (nota == null || nota.isEmpty) {
    print('\n Não foi possivel adicionar campo de nota vazio \n');
    adicNota(notas);
  }
  notas.add(nota!);

  return notas;
}

void listarNotas(List<String> notas) {
  print('\n Lista de Notas \n');
  /*   São 3 os parâmtros para o FOR 
         inicio         tamanho     percorre toda a lista */
  for (var i = 0; i < notas.length; i++) {
    print(notas[i]);
  }
}

void menu(List<String> notas) {
  String opcao = getComando();

  switch (opcao) {
    case '1':
      adicNota(notas);
      menu(notas); // para voltar ao menu

    case '2':
      listarNotas(notas);
      menu(notas); // para voltar ao menu

    case '3':
      print('\n Até breve!');
      break;
  }
}

void cabecalho() {
  print(""" 
_        _______ _________ _______  _______  _ 
( (    /|(  ___  )\__   __/(  ___  )(  ____ \( )
|  \  ( || (   ) |   ) (   | (   ) || (    \/| |
|   \ | || |   | |   | |   | (___) || (_____ | |
| (\ \) || |   | |   | |   |  ___  |(_____  )| |
| | \   || |   | |   | |   | (   ) |      ) |(_)
| )  \  || (___) |   | |   | )   ( |/\____) | _ 
|/    )_)(_______)   )_(   |/     \|\_______)(_)

""");
}
