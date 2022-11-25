void main() {
  var pagamento = Pagamento();
  pagamento.pagar(TipoPagamento.Cartao);
}

enum TipoPagamento {
  Pix(1, "Pix"),
  Cartao(2, "Cartão"),
  Cheque(3, "Cheque");

  final String value;
  final int id;

  const TipoPagamento(this.id, this.value);
}

class Pagamento {
  void pagar(TipoPagamento tipoPagamento) {
    if (tipoPagamento.value == "Pix") {
      print("Pagando com pix id ${tipoPagamento.id}....");
    } else if (tipoPagamento.value == "Cartão") {
      print("Pagando com Cartão id ${tipoPagamento.id}....");
    } else if (tipoPagamento.value == "Cheque") {
      print("Pagando com Cheque id ${tipoPagamento.id}....");
    }
  }
}
