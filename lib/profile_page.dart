import 'package:flutter/material.dart';

int itemCount = 20;

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: itemCount,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Item ${(index + 1)}'),
            leading: const Icon(Icons.person_add_alt_1_outlined),
            trailing: const Icon(Icons.settings),
            onTap: () {},
          );
        });
  }
}
