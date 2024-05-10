import '../entity/faxineira-entity.dart';

class FaxineiraModel extends FaxineiraEntity {
  Faxineira(this.nome, this.sobrenome, this.cpf);

  static void create() {
    return;
  }
}

var test = Faxineira('Lucas', 'Neitzke', '000.000.000-00');
