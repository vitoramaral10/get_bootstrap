part of '../get_bootstrap.dart';

class FirstLetterUpperCaseFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    final TextEditingValue oldValue,
    final TextEditingValue newValue,
  ) =>
      TextEditingValue(
        text: newValue.text.toLowerCase().split(' ').map((final word) {
          final String leftText =
              (word.length > 1) ? word.substring(1, word.length) : '';

          return word[0].toUpperCase() + leftText;
        }).join(' '),
        selection: newValue.selection,
      );
}
