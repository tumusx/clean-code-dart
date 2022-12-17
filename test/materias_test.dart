import 'dart:math';

import 'package:clean_code_dart/clean_code_dart.dart';
import 'package:test/fake.dart';
import 'package:test/test.dart';

import '../bin/solid/DI/faculdade.dart';
import '../bin/solid/SRP/professor.dart';

void main() {
  final Faculdade faculdade = Faculdade(FakeAluno());
  final FakeAluno fakeAluno = FakeAluno();

  test('verificar se está atribuindo corretamente o nome do aluno', () {
    fakeAluno.nameAluno = "Murillo Alves da Silva";
    faculdade.cadastrarAlunoNaFaculdade();
    expect(fakeAluno.nameAluno, faculdade.alunos.nameAluno);
  });

  test("verificar se turma do aluno está sendo setada corretamente", () {
    fakeAluno.materiasDoAluno = ["Matematica Computacional", "Pesquisa Operacional", "Programacao Mobile"];
    faculdade.cadastrarAlunoNaFaculdade();
    expect(fakeAluno.materiasDoAluno, fakeAluno.materiasDoAluno);
  });
}

class FakeAluno implements Alunos {
  @override
  late int idadeAluno;

  @override
  late List<String> materiasDoAluno;

  @override
  late String nameAluno;

  @override
  late String turmaAluno;
}
