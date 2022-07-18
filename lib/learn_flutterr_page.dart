import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool _isSwitch = false;
  bool? _isChecked = false;
  bool tapp = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Learn Flutter Page'),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.info_outline),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/image.png'),
            const SizedBox(
              height: 15.0,
            ),
            const Divider(
              height: 1,
              thickness: 2,
              color: Colors.amber,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: Colors.blueAccent,
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              child: const Center(
                child: Text(
                  'Text inside the container',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor:
                      _isSwitch ? Colors.amberAccent : Colors.blueAccent),
              onPressed: () {
                setState(() {
                  _isSwitch = !_isSwitch;
                });
              },
              child: const Text('Elevated Button'),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {},
              child: const Text('OutlinedButton'),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {},
              child: const Text("TextButton"),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('Row is Clicked');
              },
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(Icons.home),
                    Text('Text inside the Row'),
                    Icon(Icons.home),
                  ]),
            ),
            Switch(
              value: _isSwitch,
              onChanged: (bool newBool) {
                setState(() {
                  _isSwitch = newBool;
                });
              },
            ),
            Checkbox(
                value: _isChecked,
                onChanged: (bool? newBool) {
                  setState(() {
                    _isChecked = newBool;
                  });
                }),
            GestureDetector(
              onTap: () {
                setState(() {
                  tapp = !tapp;
                });
              },
              child: AnimatedContainer(
                  color: tapp ? Colors.black : Colors.blueGrey,
                  height: tapp ? 300 : 20,
                  width: tapp ? 40 : 200,
                  duration: const Duration(milliseconds: 500)),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
