class FaxineiraEntity {
  int id_faxineira = 0;
  String nome = '';
  String sobrenome = '';
  String cpf = '';
  FaxineiraEntity(this.id_faxineira, this.nome, this.sobrenome, this.cpf);
}

var testEntity = FaxineiraEntity(0, 'Lucas', 'Neitzke', '000.000.000-00');
