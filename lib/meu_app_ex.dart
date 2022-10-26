import 'dart:io';
import 'package:meu_app_ex/exception/nome_invalido_exception.dart';
import 'package:meu_app_ex/models/aluno.dart';
import 'package:meu_app_ex/models/console_utils.dart';

void execute() {
  print("Bem-vindo ao sistema de notas! ");
  String nome = ConsoleUtils.lerStringComTexto("Digite o nome do aluno: ");

  try {
    if (nome.trim() == "") {
      throw NomeInvalidoException();
    }
  } on NomeInvalidoException {
    print(NomeInvalidoException);
    exit(0);
  } catch (e) {
    print(e);
    exit(0);
  }

  var a = Aluno(nome);
  double? nota;
  do {
    nota = ConsoleUtils.lerDoubleComTextoComSaida(
        "Digite a nota ou S para sair", "S");

    if (nota != null) {
      a.adicionarNota(nota);
    }
  } while (nota != null);
  print("As notas digitadas foram: ${a.getNotas()}");
  print("A média das notas foi: ${a.retornaMedia()}");
  if (a.aprovado(7)) {
    print("O aluno ${a.getNome()} foi aprovado");
  } else {
    print("O aluno ${a.getNome()} foi reprovado");
  }
}
