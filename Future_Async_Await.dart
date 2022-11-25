void main() async {
  String nome = "Pedro Henrique";
  Future<String> cepFuture = getCepByName("Avenida Bom Jesus");
  late String cep;

  cep = await cepFuture; // retonar o valor assim que a requisição é recuperada.

  print(nome);
  print(cep);
}

// External Service
Future<String> getCepByName(String name) {
// Simulando requisição
  return Future.value("23935005");
}
