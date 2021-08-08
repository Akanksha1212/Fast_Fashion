import 'package:fasf_fashion/pages/profile.dart';
import 'package:flutter/material.dart';
import 'package:swipe_cards/swipe_cards.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<SwipeItem> _swipeItems = <SwipeItem>[];
  MatchEngine _matchEngine;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  List<String> _names = ["Red", "Blue", "Green"];
  List<String> images = [
    "https://images.squarespace-cdn.com/content/v1/5442b6cce4b0cf00d1a3bef2/1619136739792-64E900N635E9CSYHORPG/eco-friendly-clothing+%281%29.jpg?format=750w",
    "https://images.squarespace-cdn.com/content/v1/54b2bd07e4b0531e1f889f67/1571710616158-7TV10UFKJHR7CKIN77DP/Everlane.jpg",
    "https://images.squarespace-cdn.com/content/v1/5442b6cce4b0cf00d1a3bef2/1618856933582-RU8MV96U2UQ4DBQTG7RC/eco-friendly-clothing-two-days-off"
  ];

  @override
  void initState() {
    for (int i = 0; i < _names.length; i++) {
      _swipeItems.add(SwipeItem(
          content: Content(text: _names[i], image: images[i]),
          likeAction: () {
            print(("Liked ${_names[i]}"));
          },
          nopeAction: () {
            print("Nope ${_names[i]}");
          },
          superlikeAction: () {
            print(("Superliked ${_names[i]}"));
          }));
    }

    _matchEngine = MatchEngine(swipeItems: _swipeItems);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xff9dc6fb),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network(
            'https://image.flaticon.com/icons/png/512/4372/4372359.png',
            height: 35,
            width: 35,
          ),
        ),
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(280, 0, 8, 0),
              child: Image.network(
                'https://image.flaticon.com/icons/png/512/891/891581.png',
                height: 35,
                width: 35,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: Color(0xff9dc6fb)
            // image: DecorationImage(
            //     image: NetworkImage(
            //         'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1FeLVfSqVMoXAbH7l8F-Y99aoQ-YhErPsunP5KiGnpyoSWpvFwxEGONTsb32GBE1-eYY&usqp=CAU'),
            //     fit: BoxFit.fill),
            ),
        child: Column(
          children: [
            Container(
              height: 550,
              child: SwipeCards(
                matchEngine: _matchEngine,
                itemBuilder: (BuildContext context, int index) {
                  String imageAdd = _swipeItems[index].content.image;
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 20, 8, 0),
                      child: Card(
                        child: Container(
                          alignment: Alignment.center,
                          // color: _swipeItems[index].content.color,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(children: [
                                Image.network('$imageAdd',
                                    height: 350, width: 350),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Align(
                                    alignment: Alignment.topLeft,
                                    child: Image.asset('assets/bamboo.png',
                                        height: 100, width: 100),
                                  ),
                                ),
                              ]),
                              Container(
                                color: Color(0xfffcdc50),
                                width: MediaQuery.of(context).size.width,
                                height: 80,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    _swipeItems[index].content.text,
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
                onStackFinished: () {
                  _scaffoldKey.currentState.showSnackBar(SnackBar(
                    content: Text("Stack Finished"),
                    duration: Duration(milliseconds: 500),
                  ));
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RawMaterialButton(
                  onPressed: () {},
                  elevation: 2.0,
                  fillColor: Colors.white,
                  child: Image.network(
                    'https://img-premium.flaticon.com/png/512/168/premium/168981.png?token=exp=1628420014~hmac=07d6d93417be089c51eef8a104d0b8bb',
                    height: 25,
                    width: 25,
                  ),
                  padding: EdgeInsets.all(10.0),
                  shape: CircleBorder(),
                ),
                RawMaterialButton(
                  onPressed: () {
                    _matchEngine.currentItem?.nope();
                  },
                  elevation: 2.0,
                  fillColor: Colors.white,
                  child: Image.network(
                    'https://image.flaticon.com/icons/png/512/3388/3388658.png',
                    height: 30,
                    width: 30,
                  ),
                  padding: EdgeInsets.all(15.0),
                  shape: CircleBorder(),
                ),
                RawMaterialButton(
                  onPressed: () {
                    _matchEngine.currentItem?.like();
                  },
                  elevation: 2.0,
                  fillColor: Colors.white,
                  child: Image.network(
                    'https://image.flaticon.com/icons/png/512/833/833472.png',
                    height: 30,
                    width: 30,
                  ),
                  padding: EdgeInsets.all(15.0),
                  shape: CircleBorder(),
                ),
                RawMaterialButton(
                  onPressed: () {
                    _matchEngine.currentItem?.like();
                  },
                  elevation: 2.0,
                  fillColor: Colors.white,
                  child: Image.network(
                    'https://img-premium.flaticon.com/png/512/4443/premium/4443101.png?token=exp=1628418962~hmac=b03758a8035e8bbe545638a2cd81d32b',
                    height: 25,
                    width: 25,
                  ),
                  padding: EdgeInsets.all(10.0),
                  shape: CircleBorder(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
