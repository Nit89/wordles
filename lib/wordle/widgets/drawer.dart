import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Drawer_nav extends StatefulWidget {
  const Drawer_nav({Key? key}) : super(key: key);

  @override
  State<Drawer_nav> createState() => _Drawer_navState();
}

class _Drawer_navState extends State<Drawer_nav> {
  bool value = true;
  bool value1 = false;
  bool value2 = true;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: const Center(child: Text('SETTINGS')),
              trailing: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, '/');
                  },
                  child: const Icon(Icons.clear)),
            ),
            ListTile(
              title: const Text('Hard Mode'),
              subtitle: const Text(
                "Any revealed hints must be used in subsequent guessess",
                style: TextStyle(fontSize: 11),
              ),
              trailing: buildIOSWITCH(),
            ),
            const Divider(
                // height: 1,
                // thickness: 0.5,
                color: Color.fromARGB(255, 126, 125, 125)),
            ListTile(
              title: const Text('Dark theme'),
              trailing: buildIOSWITCH1(),
            ),
            const Divider(
                // height: 1,
                // thickness: 0.5,
                color: Color.fromARGB(255, 126, 125, 125)),
            ListTile(
              title: const Text('High Contrast Mode'),
              subtitle: const Text("For improved color vision"),
              trailing: buildIOSWITCH3(),
            ),
            const Divider(
                // height: 1,
                // thickness: 0.5,
                color: Color.fromARGB(255, 126, 125, 125)),
            const ListTile(
              title: Text('Feedback'),
              trailing: Text('Email'),
            ),
            const Divider(
                // height: 1,
                // thickness: 0.5,
                color: Color.fromARGB(255, 126, 125, 125)),
            const ListTile(
              title: Text('Community'),
              trailing: Text('Twitter'),
            ),
            const Divider(
                // height: 1,
                // thickness: 0.5,
                color: Color.fromARGB(255, 126, 125, 125)),
            const ListTile(
              title: Text('Question ?'),
              trailing: Text('FAQ'),
            ),
            const Divider(
                // height: 1,
                // thickness: 0.5,
                color: Color.fromARGB(255, 126, 125, 125)),
          ],
        ),
      ),
    );
  }

  Widget buildIOSWITCH() => Transform.scale(
        scale: 0.7,
        child: CupertinoSwitch(
            value: value,
            onChanged: (value) => setState(() {
                  this.value = value;
                })),
      );
  Widget buildIOSWITCH1() => Transform.scale(
        scale: 0.7,
        child: CupertinoSwitch(
            value: value1,
            onChanged: (value) => setState(() {
                  value1 = value;
                })),
      );
  Widget buildIOSWITCH3() => Transform.scale(
        scale: 0.7,
        child: CupertinoSwitch(
            value: value2,
            onChanged: (value) => setState(() {
                  value2 = value;
                })),
      );
}
