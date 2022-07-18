import 'package:flutter/material.dart';

int intemCount = 15;

class ListItem extends StatelessWidget {
  const ListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: intemCount,
      itemBuilder: (BuildContext cotent, int index) {
        return ListTile(
          title: Text('Item ${(index + 1)}'),
          leading: const Icon(Icons.person_add_alt_1_sharp),
          trailing: const Icon(Icons.settings),
          onTap: () {
            debugPrint('Item ${(index + 1)} selected');
          },
        );
      },
    );
  }
}
