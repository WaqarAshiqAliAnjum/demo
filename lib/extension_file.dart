extension Validation on String? {
  bool isEmptyNull() {
    return this == null ||
        this!.isEmpty;
  }

  bool isDigitString() {
    return this!.runes.every(
        (element) =>
            element >= 48 &&
            element <= 57);
  }

  bool isCellPhone() {
    return this!.isDigitString() &&
        this!.length >= 11 &&
        this!.length <= 14; 
  }

  // bool isEmailString(){
  //   return 
  // }
}
