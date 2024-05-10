import '../entity/faxineira-entity.dart';

class FaxineiraModel extends FaxineiraEntity {
  FaxineiraModel(super.id_faxineira, super.nome, super.sobrenome, super.cpf);

  void create() {
    var query = 'INSERT INTO faxineira '
        '(nome, sobrenome, cpf) '
        'VALUES'
        " ('${this.nome}', '${this.sobrenome}', '${this.cpf}')";
    return;
  }

  static void read() {
    var query = 'SELECT * FROM faxineira';
    return;
  }

  void update() {
    var query = 'UPDATE faxineira '
        'SET '
        "nome = '${this.nome}', sobrenome = '${this.sobrenome}', cpf = '${this.cpf}' "
        'WHERE '
        'id_faxineira = ${this.id_faxineira}';
    return;
  }

  void delete() {
    var query = 'DELETE FROM faxineira '
        'WHERE '
        'id_faxineira = ${this.id_faxineira}';
    return;
  }
}

var testModel = FaxineiraModel(0, 'Lucas', 'Neitzke', '000.000.000-00');
