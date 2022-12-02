part of get_bootstrap;

class FirstLetterUpperCaseFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    return TextEditingValue(
      text: newValue.text.toLowerCase().split(' ').map((word) {
        String leftText =
            (word.length > 1) ? word.substring(1, word.length) : '';

        return word[0].toUpperCase() + leftText;
      }).join(' '),
      selection: newValue.selection,
    );
  }
}
