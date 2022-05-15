import 'package:flutter/material.dart';
import 'package:wordle/wordle/models/letter_model.dart';

const _querty = [
  ['Q', 'W', 'E', 'R', 'T', 'Y', 'U', 'I', 'O ', 'P'],
  ['A', 'S', 'D', 'F', 'G', 'H', 'J', 'K', 'L'],
  ['ENTER', 'Z', 'X', 'C', 'V', 'B', 'N', 'M', 'DEL']
];

// ignore: camel_case_types
class keyboard extends StatelessWidget {
  const keyboard(
      {Key? key,
      required this.onKeyTapped,
      required this.onDeleteTapped,
      required this.onEnterTapped,
      required this.letters})
      : super(key: key);

  final void Function(String) onKeyTapped;
  final VoidCallback onDeleteTapped;
  final VoidCallback onEnterTapped;
  final Set<Letter> letters;
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _querty
            .map(
              (keyRow) => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: keyRow.map(
                  (letter) {
                    if (letter == 'DEL') {
                      return _KeyboardButton.delete(onTap: onDeleteTapped);
                    } else if (letter == 'ENTER') {
                      return _KeyboardButton.enter(onTap: onEnterTapped);
                    }
                    final letterKey = letters.firstWhere((e) => e.val == letter,
                        orElse: () => Letter.empty());
                    return _KeyboardButton(
                      onTap: () => onKeyTapped(letter),
                      letter: letter,
                      backgroundColor: letterKey != Letter.empty()
                          ? letterKey.backgroundColor
                          : Colors.grey,
                    );
                  },
                ).toList(),
              ),
            )
            .toList());
  }
}

class _KeyboardButton extends StatelessWidget {
  const _KeyboardButton({
    Key? key,
    this.height = 50,
    this.width = 30,
    required this.backgroundColor,
    required this.letter,
    required this.onTap,
  }) : super(key: key);

  factory _KeyboardButton.delete({required VoidCallback onTap}) =>
      _KeyboardButton(
          backgroundColor: Colors.grey, letter: 'DEL', onTap: onTap, width: 56);
  factory _KeyboardButton.enter({required VoidCallback onTap}) =>
      _KeyboardButton(
          backgroundColor: Colors.grey,
          letter: 'ENTER',
          onTap: onTap,
          width: 56);

  final double height;
  final double width;
  final Color backgroundColor;
  final VoidCallback onTap;
  final String letter;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 2.0),
      child: Material(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(4),
        child: InkWell(
          onTap: onTap,
          child: Container(
            height: height,
            width: width,
            alignment: Alignment.center,
            child: Text(
              letter,
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
    );
  }
}
