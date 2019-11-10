import 'package:flutter/material.dart';

import '../Home_Page.dart';
import '../Swap_Search.dart';
import './New_Item.dart';

class BottomNav extends StatelessWidget {
 final int curlIndex;
 

  BottomNav({this.curlIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
        currentIndex: curlIndex, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.mail),
            title: new Text('Messages'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_turned_in),
            title: Text('Matches'),
          ),
          //  BottomNavigationBarItem(
          //   icon: Icon(Icons.add),
          //   title: Text('New Item'),
          // ),
        ],
        onTap: (curlIndex) {
            switch (curlIndex) {
              case 0:
                {
                Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      
                break;
              }
                break;
              // case 1:
              //   {
              //   Navigator.push(
              //               context,
              //               MaterialPageRoute(
              //                   builder: (context) => hom()));
                      
              //   break;
              // }
                break;
              case 2: {
                Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SwapSearch()));
                      
                break;
              }
              // case 3:
              //   {
              //   Navigator.push(
              //               context,
              //               MaterialPageRoute(
              //                   builder: (context) => HomePage()));
                      
              //   break;
              // }
            }
        },
    );
  }
}