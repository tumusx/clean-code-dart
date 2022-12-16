import '../SRP/professor.dart';

class Faculdade {
  late Alunos alunos;

  Faculdade(this.alunos);

  cadastrarAlunoNaFaculdade() {
    alunos.idadeAluno = 12;
    alunos.materiasDoAluno = ["Matematica Computacional", "Pesquisa Operacional", "Programacao Mobile"];
    alunos.nameAluno = "Murillo Alves da Silva";
    alunos.turmaAluno = "IHM - 2022/2";

    print(alunos);
  }
}

void main(List<String> args) {
  final faculdade = Faculdade(Alunos.construtorSemParametros());

  faculdade.cadastrarAlunoNaFaculdade();
}
