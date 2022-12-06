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
}

abstract class IAlunoRepository {
  Future<Bool> cadastrarAluno(Alunos aluno);
}

abstract class IProfessorRepository {
  Future<Bool> cadastrarProfessor(Professor professor);
}


class ProfessorRepositoryImpl implements IProfessorRepository{
  @override
  Future<Bool> cadastrarProfessor(Professor professor) async {
    await professor.idadeProfessor = 10
    return true;
  }
}