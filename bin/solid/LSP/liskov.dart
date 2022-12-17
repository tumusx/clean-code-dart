abstract class IProfessor {
  darAula();
}

class ProfessorSubstituto implements IProfessor {
  @override
  darAula() {
    print("dando aula");
  }
}

void main(List<String> args) {
  IProfessor professor = ProfessorSubstituto();
}
