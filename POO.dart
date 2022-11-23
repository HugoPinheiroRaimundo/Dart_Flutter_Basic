void main() {
  // Criação de objetos
  Carro gol = Carro("gol");
  Carro mercedes = Carro("mercedes");

  mercedes._segredo; // acessando veriável privada
  gol._segredo;

  mercedes.valorDoCarro;

  Hugo hugo = Hugo();
  hugo.falar();

  Pagamento pagamento = PagarComBoleto();
  pagamento.pagar();

  pagamento = PagarComCartao();
  pagamento.pagar();
}

// 00 Polimorfismo
abstract class Pagamento {
  void pagar();
}

class PagarComBoleto implements Pagamento {
  void pagar() {
    print("Pagamento com boleto");
  }
}

class PagarComCartao implements Pagamento {
  void pagar() {
    print("Pagamento com cartão de crédito");
  }
}

// 00 Herança
class Pai {
  String falar() {
    return "Português";
  }
}

class Hugo extends Pai {}

class Carro {
  final String modelo;

// 00 Encapsulamento = Escopo de visibilidade.
  String _segredo = "segredo"; // _ = variável privada

// Get e Set
  int _valor = 1000;
  int get valorDoCarro =>
      _valor; // get valor acessível fora da classe não modificável.

  void setValue(int valor) => _valor =
      valor; // com esse método podemos atribuir um novo valor em _valor.

  Carro(this.modelo);
}
// OBS: Objetos privados no dark não são acessíveis em outros arquivos.

// OO Abstração
abstract class Pessoa {
  String comunicar();
}

class PessoaCis implements Pessoa {
  String comunicar() {
    return "Olá mundo";
  }
}

class PessoaLgbt implements Pessoa {
  String comunicar() {
    return "Olá vale";
  }
}
