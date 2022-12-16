import 'dart:ffi';

class Professor {
  late String nameProfessor;
  late List<String> materiasProfessor;
  late int idadeProfessor;
  late List<String> turmarProfessor;

  Professor(this.nameProfessor, this.materiasProfessor, this.idadeProfessor, this.turmarProfessor);
}

class Alunos {
  late String nameAluno;
  late List<String> materiasDoAluno;
  late int idadeAluno;
  late String turmaAluno;

  Alunos(this.idadeAluno, this.nameAluno, this.materiasDoAluno, this.turmaAluno);
  Alunos.construtorSemParametros();

  @override
  String toString() {
    return this.nameAluno + "\n" + this.turmaAluno + "\n" + this.idadeAluno.toString() + "\n" + this.materiasDoAluno.toString();
  }
}

abstract class IAlunoRepository {
  Future<Bool> cadastrarAluno(Alunos aluno);
}

abstract class IProfessorRepository {
  Future<bool> cadastrarProfessor(Professor professor);
}

class ProfessorRepositoryImpl implements IProfessorRepository {
  @override
  Future<bool> cadastrarProfessor(Professor professor) async {
    List<String> materiasProfessor = ["Ingles", "Portugues", "Espanhol"];

    professor.idadeProfessor = 12;

    professor.materiasProfessor = materiasProfessor;

    professor.idadeProfessor = 12;
    return Future.value(true);
  }
}
