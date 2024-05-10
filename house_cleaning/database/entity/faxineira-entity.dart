class FaxineiraEntity {
  String nome = '';
  String sobrenome = '';
  String cpf = '';

  Faxineira(this.nome, this.sobrenome, this.cpf);

  static void create() {
    return;
  }
}

var test = Faxineira('Lucas', 'Neitzke', '000.000.000-00');
