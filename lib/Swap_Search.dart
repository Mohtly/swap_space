import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:swap_space/widgets/Bottom_Nav.dart';
import './Home_Page.dart';

class SwapSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CardController controller; //Use this to trigger swap.

    return new Scaffold(
      body: new Center(
        child: Container(
          color: Colors.grey[200],
          height: MediaQuery.of(context).size.height,
          child: new TinderSwapCard(
            orientation: AmassOrientation.BOTTOM,
            totalNum: 20,
            stackNum: 5,
            swipeEdge: 4.0,
            maxWidth: MediaQuery.of(context).size.width * 0.9,
            maxHeight: MediaQuery.of(context).size.height * 0.9,
            minWidth: MediaQuery.of(context).size.width * 0.8,
            minHeight: MediaQuery.of(context).size.height * 0.8,
            cardBuilder: (context, index) => Card(
              //color: Colors.blueGrey,
              child: new Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
                      child: new ClipRRect(
                        borderRadius: new BorderRadius.circular(8.0),
                        child: SizedBox(
                          height: 376,
                          child: FittedBox(
                            child: Image.asset('assets/bike.jpg',height: 100,width: 170,),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Text("My Bike My Bike My Bike My Bik",
                            style: TextStyle(
                                height: 2,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center),
                            Divider(thickness: 2, color: Colors.transparent,),
                        Text(
                          "My bike is in great condition, but it needs a new chain! My bike is in great condition, but it needs a new chain! 1234567890 1234567890 1234567890",
                          style: TextStyle(height: 1, fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                        Divider(thickness: 2, color: Colors.transparent,),
                        Text(
                          "150\$-250\$",
                          style: TextStyle(
                              height: 2,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            cardController: controller = CardController(),
            swipeUpdateCallback: (DragUpdateDetails details, Alignment align) {
              /// Get swiping card's alignment
              if (align.x < 0) {
                //Card is LEFT swiping
                print("card left swipe");
              } else if (align.x > 0) {
                //Card is RIGHT swiping
                print("card right swipe");
              }
            },
            swipeCompleteCallback:
                (CardSwipeOrientation orientation, int index) {
              /// Get orientation & index of swiped card!
              print(orientation);
            },
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(curlIndex: 2,),
    );
  }
}
