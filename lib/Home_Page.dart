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
          //padding: const EdgeInsets.all(30.0),
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
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   currentIndex: _curlIndex, // this will be set when a new tab is tapped
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: new Icon(Icons.home),
      //       title: new Text('Home'),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: new Icon(Icons.mail),
      //       title: new Text('Messages'),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.assignment_turned_in),
      //       title: Text('Matches'),
      //     ),
      //      BottomNavigationBarItem(
      //       icon: Icon(Icons.add),
      //       title: Text('New Item'),
      //     ),
      //   ],
      //   onTap: (index) {
      //     setState(() {
      //       _curlIndex = index;
      //       switch (_curlIndex) {
      //         case 0:
      //           contents = "Home";
      //           break;
      //         case 1:
      //           contents = "Messages";
      //           break;
      //         case 2: {
      //           Navigator.push(
      //                       context,
      //                       MaterialPageRoute(
      //                           builder: (context) => SwapSearch()));
                      
      //           break;
      //         }
      //         case 3:
      //           contents = 'New Item';
      //       }
      //     });
      //   },
      // ),
      bottomNavigationBar: BottomNav(curlIndex: 0,),
    );
  }
}

