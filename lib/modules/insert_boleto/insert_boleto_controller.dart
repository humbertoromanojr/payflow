class InsertBoletoController{
  String? validateName(String? value) =>
      value?.isEmpty ?? true ? "The name cannot be empty" : null;
  String? validateVencimento(String? value) =>
      value?.isEmpty ?? true ? "The expiration date cannot be empty." : null;
  String? validateValor(double value) =>
      value == 0 ? "Enter a value greater than R\$ 0,00" : null;
  String? validateCodigo(String? value) =>
      value?.isEmpty ?? true ? "Billet code cannot be empty" : null;
}