class Cliente {
  final String uid;
  final String nome;
  final String cpf;
  final String telefone;
  final String endereco;
  final String cep;
  final String cidade;

  Cliente(this.uid, this.nome, this.cpf, this.telefone, this.endereco, this.cep, this.cidade);

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'uid': uid,
      'nome': nome,
      'cpf': cpf,
      'telefone': telefone,
      'endereco': endereco,
      'cep': cep,
      'cidade': cidade
    };
  }

  factory Cliente.fromJson(Map<String, dynamic> json) {
    return Cliente(
      json['uid'],
      json['nome'],
      json['cpf'],
      json['telefone'],
      json['endereco'],
      json['cep'],
      json['cidade'],
    );
  }
}