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
  final List<MyItems> _userItems = [];
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
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('SwapSpace'),
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
          color: Colors.white,
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

