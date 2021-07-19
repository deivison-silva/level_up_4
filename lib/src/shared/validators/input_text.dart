class Validators {
  String? validateTitle(String value) {
    if (value.isEmpty) {
      return 'O campo de título é obrigatório*';
    }
  }

  String? validateDescription(String value) {
    if (value.isEmpty) {
      return 'O campo de descrição é obrigatório*';
    }
  }
}
