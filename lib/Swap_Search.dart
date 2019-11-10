import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:swap_space/widgets/Bottom_Nav.dart';
import './models/My_Items.dart';
import './Home_Page.dart';

class SwapSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CardController controller; //Use this to trigger swap.
    final List<MyItems> _userItems = [
      MyItems(
          title: "My old bike",
          description: "Its a great bike but its needfs new chain!",
          priceLow: 250,
          priceHigh: 300,
          picture: Image.asset('assets/bike.jpg', height: 200, width: 100,)),
      MyItems(
          title: "Beautiful green dress",
          description: "only ever worn once! looking for other cool dresses!",
          priceLow: 25,
          priceHigh: 50,
          picture: Image.asset('assets/dress.jpg', height: 200, width: 100,)),
      MyItems(
          title: "Hammer",
          description: "Ive got way too many of these old hammers!",
          priceLow: 5,
          priceHigh: 10,
          picture: Image.asset('assets/hammer.jpeg', height: 200, width: 100,),),
      MyItems(
          title: "An amazing lamp",
          description: "Look at that lamp!",
          priceLow: 150,
          priceHigh: 250,
          picture: Image.asset('assets/lamp.jpg', height: 200, width: 100,),),
      MyItems(
          title: "Healthy Ficus",
          description: "Moving and i have no room for my ficus",
          priceLow: 100,
          priceHigh: 125,
          picture: Image.asset('assets/ficus.jpg', height: 200, width: 100,)),
      MyItems(
          title: "Rustic Stool",
          description: "Class up your place with this rustic stool!",
          priceLow: 40,
          priceHigh: 60,
          picture: Image.asset('assets/chair.jpg', height: 200, width: 100,))
    ];
    var currentItemIndex = 0;

    return new Scaffold(
      body: new Center(
        child: Container(
          color: Colors.grey[200],
          height: MediaQuery.of(context).size.height,
          child: new TinderSwapCard(
            orientation: AmassOrientation.BOTTOM,
            totalNum: _userItems.length,
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
                            child: _userItems[currentItemIndex].picture,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Text(_userItems[currentItemIndex].title,
                            style: TextStyle(
                                height: 2,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center),
                        Divider(
                          thickness: 2,
                          color: Colors.transparent,
                        ),
                        Text(
                          _userItems[currentItemIndex].description,
                          style: TextStyle(height: 1, fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                        Divider(
                          thickness: 2,
                          color: Colors.transparent,
                        ),
                        Text(
                          "\$ ${_userItems[currentItemIndex].priceLow.toString()} - \$ ${_userItems[currentItemIndex].priceHigh.toString()}",
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
              currentItemIndex = currentItemIndex + 1;
              if (currentItemIndex >= _userItems.length) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
