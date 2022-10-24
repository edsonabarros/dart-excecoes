import 'dart:convert';
import 'dart:io';

import 'package:meu_app_ex/models/Aluno.dart';
import 'package:meu_app_ex/models/ConsoleUtils.dart';

void execute() {
  print("Bem-vindo ao sistema de notas! ");
  print("Digite o nome do aluno: ");
  String nome = ConsoleUtils.lerStringComtext("Digite o nome do aluno: ");
  var aluno = Aluno(nome);

/* 
  try {
    double numero = double.parse(line ?? "");
    print(line);
  } catch (e) {
    print("Número inválido: $line");
  } finally {
    print("Executando finally");
  } */
}
