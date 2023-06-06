class Venda {
  final String pedido;
  final String datapedido;
  final String comprador;
  final String produto;
  final String quantidade;
  final String vlrTotal;
  final String formapag;
  final String cepcomprador;
  final String cidadecomprador;
  final String endcomprador;

  Venda(this.pedido, this.datapedido, this.comprador, this.produto, this.quantidade, this.vlrTotal, this.formapag, this.cepcomprador, this.cidadecomprador, this.endcomprador);

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'pedido': pedido,
      'datapedido': datapedido,
      'comprador': comprador,
      'produto': produto,
      'quantidade': quantidade,
      'vlrTotal': vlrTotal,
      'formapag': formapag,
      'cepcomprador': cepcomprador,
      'cidadecomprador': cidadecomprador,
      'endcomprador': endcomprador
    };
  }

  factory Venda.fromJson(Map<String, dynamic> json) {
    return Venda(
      json['pedido'],
      json['datapedido'],
      json['comprador'],
      json['produto'],
      json['quantidade'],
      json['vlrTotal'],
      json['formapag'],
      json['cepcomprador'],
      json['cidadecomprador'],
      json['endcomprador'],
    );
  }
}