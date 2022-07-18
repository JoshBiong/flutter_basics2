import 'package:flutter/material.dart';

class LearFlutterPage extends StatefulWidget {
  const LearFlutterPage({Key? key}) : super(key: key);

  @override
  State<LearFlutterPage> createState() => _LearFlutterPageState();
}

class _LearFlutterPageState extends State<LearFlutterPage> {
  bool _isSwitch = false;
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text('Learn Flutter Page'),
      ),
      body: Column(
        children: [
          Image.asset('images/image.png'),
          const SizedBox(height: 10),
          const Divider(
            color: Colors.black,
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            width: double.infinity,
            color: _isSwitch ? Colors.black26 : Colors.amberAccent,
            child: const Center(
              child: Text(
                'This is a text inside the container',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: _isSwitch ? Colors.amber : Colors.blue),
            onPressed: () {},
            child: const Text('Elevated Button'),
          ),
          const SizedBox(height: 10),
          OutlinedButton(
            onPressed: () {},
            child: const Text('Outlined Button'),
          ),
          const SizedBox(height: 10),
          TextButton(
            onPressed: () {},
            child: const Text('Text Button'),
          ),
          const SizedBox(height: 10),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              debugPrint('row ontap');
            },
            child: Container(
              padding: const EdgeInsets.all(5.0),
              color: Colors.black26,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.favorite),
                  Text(
                    'Text inside the row',
                  ),
                  Icon(Icons.favorite),
                ],
              ),
            ),
          ),
          Switch(
              value: _isSwitch,
              onChanged: (bool newBool) {
                setState(() {
                  _isSwitch = newBool;
                });
              }),
          GestureDetector(
            onTap: () {
              setState(() {
                _isSelected = !_isSelected;
              });
            },
            child: AnimatedContainer(
                height: _isSelected ? 20 : 50,
                width: _isSelected ? 50 : 30,
                color: _isSelected ? Colors.amberAccent : Colors.green,
                duration: const Duration(milliseconds: 800)),
          )
        ],
      ),
    );
  }
}
