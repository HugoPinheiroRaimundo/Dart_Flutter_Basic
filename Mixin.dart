import 'dart:ffi';

void main() {
  final pidgeotto = Passaro(true);
  pidgeotto
      .voar(); // Consigo acessar vivo e voar sem modificar a classe animal.
}

class Animal {
  final bool vivo;

  Animal(this.vivo); // Construtor da classe Animal
}

class Cachorro extends Animal {
  Cachorro(super.vivo);
}

class Passaro extends Animal with Voar {
  Passaro(super.vivo);
}

mixin Voar {
  void voar() {
    print("Estou voando");
  }
}
