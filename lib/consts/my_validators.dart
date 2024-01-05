class MyValidators {
  static String? uploadProdTexts({String? value, String? toBeReturnedString}) {
    if (value == null || value.isEmpty) {
      return toBeReturnedString;
    }
    return null;
  }
}