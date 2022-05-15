import 'package:flutter/material.dart';

class Titlebar extends StatelessWidget {
  const Titlebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 30,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Container(
                    child: const Icon(
                      Icons.question_mark_outlined,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(width: 3.0, color: Colors.white),
                        shape: BoxShape.circle),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                ],
              ),
              const Text(
                "Wordle",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(
                    Icons.bar_chart_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: (() {
                      Navigator.pushReplacementNamed(context, '/second');
                    }),
                    child: const Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Divider(
            // height: 1,
            // thickness: 0.5,
            color: Color.fromARGB(255, 126, 125, 125)),
      ],
    );
  }
}
