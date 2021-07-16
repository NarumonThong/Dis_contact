import 'package:flutter/material.dart';
import 'package:test/directstores/direct_stores_item.dart';
import 'package:test/model/dummy_data.dart';

class DirectStoresPage extends StatelessWidget {
  const DirectStoresPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: DUMMY_DIRECT_STORES.map((directstoresItem) => DirectStoresItem(
          directstoresItem.title, 
          directstoresItem.color
          )).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3/2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20
        ),
      ),
    );
  }
}