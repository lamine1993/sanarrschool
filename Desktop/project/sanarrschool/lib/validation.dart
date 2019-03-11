class Validations{
  String validateName(String value) {
    if (value.isEmpty) return 'Name is required.';
    final RegExp nameExp = new RegExp(r'^[A-za-z ]+$');
    if (!nameExp.hasMatch(value))
      return 'Please enter only alphabetical characters.';
    return null;
  }

    String validateEmail(String value) {
    if (value.isEmpty) return 'Email is required.';
    final RegExp nameExp = new RegExp(r'^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$');
    if (!nameExp.hasMatch(value)) return 'Invalid email address';
    return null;
  }

  String validatePassword(String value) {
    if (value.isEmpty) return 'Please choose a password.';
    return null;
  }

    String validateNaissance(String value) {
        if (value.isEmpty) return 'date of born is required.';
        final RegExp nameExp = new RegExp(r'#^[0-9]{4}[/-][0-9]{2}[/-][0-9]{2}$#');
        if (!nameExp.hasMatch(value)) return 'Invalid date'; 
        return null;
  }

}