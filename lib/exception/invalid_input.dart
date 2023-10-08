class InvalidNameException implements Exception {
  String error() => "Invalid Name";

  @override
  String toString() {
    return "InvalidNameExeption: ${error()}";
  }
}
