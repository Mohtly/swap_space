import 'package:flutter/material.dart';

import '../models/My_Items.dart';
import '../Swap_Search.dart';

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
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 1),
            ),
            itemBuilder: (ctx, index) {
              return GestureDetector(
                child: Card(
                  elevation: 10,
                  //margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                  child: Container(
                    // padding:  EdgeInsets.fromLTRB(15, 15, 15, 15),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(3, 5, 5, 5),
                          child: new ClipRRect(
                            borderRadius: new BorderRadius.circular(8.0),
                            child: SizedBox(
                              height: 250,
                              child: FittedBox(
                                child: Image.asset(
                                  'assets/bike.jpg',
                                  height: 20,
                                  width: 30,
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 10.0)),
                        Text(items[index].title,style: TextStyle(fontWeight: FontWeight.bold),),
                        Padding(padding: EdgeInsets.only(top: 10.0)),
                        //Text(items[index].description),
                        Text(
                            '\$${items[index].priceLow}-\$${items[index].priceHigh}'),
                      ],
                    ),
                  ),
                ),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SwapSearch())),
              );
            },
            itemCount: items.length,
          );
  }
}
