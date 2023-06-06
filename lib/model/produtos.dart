class Produtos{
  final String ativo;
  final String sku;
  final String categoria;
  final String time;
  final String tipo;
  final String desccamisa;
  final String preco;

  Produtos(this.ativo, this.sku, this.categoria, this.time, this.tipo, this.desccamisa, this.preco);

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'ativo': ativo,
      'sku': sku,
      'categoria': categoria,
      'time': time,
      'tipo': tipo,
      'desccamisa': desccamisa,
      'preco': preco
    };
  }

  factory Produtos.fromJson(Map<String, dynamic> json) {
    return Produtos(
      json['ativo'],
      json['sku'],
      json['categoria'],
      json['time'],
      json['tipo'],
      json['desccamisa'],
      json['preco'],
    );
  }
}