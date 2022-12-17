abstract class Pessoa {
  pegarProduto();
}

class Funcionario extends Pessoa with Abastecer {
  @override
  pegarProduto() {
    print("colocando na prateleira");
  }

  @override
  abastecer() {
    print("abastecendo produto");
  }
}

class Cliente extends Pessoa {
  @override
  pegarProduto() {
    print("levando para o caixa");
  }
}

mixin Abastecer {
  abastecer();
}

void main(List<String> args) {
  final Funcionario funcionario = Funcionario();
  final Cliente cliente = Cliente();

  cliente.pegarProduto();
  funcionario.abastecer();
  funcionario.pegarProduto();
}
