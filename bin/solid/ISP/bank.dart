abstract class Banco {
  sacarDinheiro(int dinheiro);
}

abstract class BancoParaPessoaJuridica implements Banco {
  falarComGerente();
}

abstract class BancoParaPessoaFisica implements Banco {
  falarComAtendentePeloTelefone();
}

class PessoaFisica extends BancoParaPessoaFisica {
  @override
  falarComAtendentePeloTelefone() {
    print("ligando para atendente");
  }

  @override
  sacarDinheiro(int dinheiro) {}
}

class PessoaJuridica extends BancoParaPessoaJuridica {
  @override
  sacarDinheiro(int dinheiro) {
    print("foi sacado $dinheiro");
  }

  @override
  falarComGerente() {
    print("ligando para gerente");
  }
}

void main(List<String> args) {
  final PessoaJuridica pessoaJuridica = PessoaJuridica();
  final PessoaFisica pessoaFisica = PessoaFisica();
  pessoaFisica.falarComAtendentePeloTelefone();
  pessoaFisica.sacarDinheiro(121);
  pessoaJuridica.sacarDinheiro(121);
  pessoaJuridica.falarComGerente();
}
