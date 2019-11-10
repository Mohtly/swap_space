import 'package:flutter/material.dart';
import 'package:swap_space/Swap_Search.dart';
import 'package:swap_space/widgets/My_Item_List.dart';
import './models/My_Items.dart';
import './widgets/New_Item.dart';
import './widgets/Bottom_Nav.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
      final List<MyItems> _userItems = [MyItems(title: "My old bike", description: "Its a great bike but its needfs new chain!", priceLow: 250, priceHigh: 300, picture: Image.asset('assets/bike.jpg')),
    MyItems(title: "Beautiful green dress", description: "only ever worn once! looking for other cool dresses!", priceLow: 25, priceHigh: 50, picture: Image.asset('assets/dress.jpg')),
    MyItems(title: "Hammer", description: "Ive got way too many of these old hammers!", priceLow: 5, priceHigh: 10, picture: Image.asset('assets/hammer.jpeg')),
    MyItems(title: "An amazing lamp", description: "Look at that lamp!", priceLow: 150, priceHigh: 250, picture: Image.asset('assets/lamp.jpg')),
    MyItems(title: "Healthy Ficus", description: "Moving and i have no room for my ficus", priceLow: 100, priceHigh: 125, picture: Image.asset('assets/ficus.jpg')),
    MyItems(title: "Rustic Stool", description: "Class up your place with this rustic stool!", priceLow: 40, priceHigh: 60, picture: Image.asset('assets/chair.jpg'))
    ];
  // var _curlIndex = 0;
  // var contents = 'Home';

  void _addNewItem(String txTitle, String txDescription, double txLowValue,
      double txHighValue) {
    final newItem = MyItems(
        title: txTitle,
        description: txDescription,
        priceLow: txLowValue,
        priceHigh: txHighValue);

    setState(() {
      _userItems.add(newItem);
    });
  }

  void _startAddNewItem(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return NewItem(_addNewItem);
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('SwapSpace',),textTheme: TextTheme(title: TextStyle(color: Colors.white, fontSize: 25.0,fontWeight: FontWeight.bold)),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.add,
            ),
            onPressed: () => _startAddNewItem(context),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[200],
          child: Container(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: (MediaQuery.of(context).size.height),
                      child: MyItemList(_userItems),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(curlIndex: 0,),
    );
  }
}

