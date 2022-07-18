import 'package:flutter/material.dart';
import 'package:flutter_basics2/learn_flutterr_page.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) => const LearFlutterPage(),
            ),
          );
        },
        
        child: const Text('Learn Flutter'),
        
      ),
    );
  }
}
