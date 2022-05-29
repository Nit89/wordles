import 'package:flutter/material.dart';
import 'package:wordle/wordle/data/word_list.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(1.5, 0.0),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.elasticIn,
  ));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // return SlideTransition(
    //   child :Column(
    //   children: board
    //       .asMap()
    //       .map(
    //         (i, word) => MapEntry(
    //           i,
    //           Row(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: word.letters
    //                 .asMap()
    //                 .map((j, letter) => MapEntry(

    //                     j,

    //                         ))
    //                 .values
    //                 .toList(),
    //           ),
    //         ),
    //       )
    //       .values
    //       .toList(),
    // );

    // );
    return Container();
  }
}
