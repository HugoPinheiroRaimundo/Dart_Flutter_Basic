void main() {
  // Criação de objetos
  Carro gol = Carro("gol");
  Carro mercedes = Carro("mercedes");

  mercedes._segredo; // acessando veriável privada
  gol._segredo;

  mercedes.valorDoCarro;
}

class Carro {
  final String modelo;

// Encapsulamento = Escopo de visibilidade.
  String _segredo = "segredo"; // _ = variável privada

// Get e Set
  int _valor = 1000;
  int get valorDoCarro =>
      _valor; // get valor acessível fora da classe não modificável.

  Carro(this.modelo);
}

// OBS: Objetos privados no dark não são acessíveis em outros arquivos.
