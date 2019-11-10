import 'package:flutter/material.dart';

import '../models/My_Items.dart';

class MyItemList extends StatelessWidget {
  final List<MyItems> items;

  MyItemList(this.items);

  @override
  Widget build(BuildContext context) {
    return items.isEmpty
        ? Column(
            children: <Widget>[Text('Nothing here')],
          )
        : GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (ctx, index) {
              return Card(
                elevation: 5,
                margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Text(items[index].title),
                      Text(items[index].description),
                      Text(
                          '\$${items[index].priceLow}-\$${items[index].priceHigh}'),
                    ],
                  ),
                ),
              );
            },
            itemCount: items.length,
          );
  }
}
