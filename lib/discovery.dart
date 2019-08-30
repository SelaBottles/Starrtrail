import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Discovery(),
    );
  }
}

class Discovery extends StatefulWidget {
  @override
  _DiscoveryState createState() => _DiscoveryState();
}

class _DiscoveryState extends State<Discovery> with SingleTickerProviderStateMixin{

  TabController controller;
  int _selectedIndex = 1;

  @override
  void initState() {
    super.initState();
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: new Text('Discovery',style: new TextStyle(fontFamily: 'Montserrat', color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold)),
        actions: <Widget>[
          new IconButton(
              icon: new Icon(Icons.camera_alt),
              color: Colors.grey,
              iconSize: 28,
              onPressed: null
          )
        ],
      ),
      body: new ListView(
        padding: new EdgeInsets.only(top: 10, bottom: 10),
        children: <Widget>[
          new Container(
            height: 150,
            width: double.infinity,
            child: new ListView(
              scrollDirection: Axis.horizontal,
              padding: new EdgeInsets.all(10),
              children: <Widget>[
                listItem('assets/coding.png', 'assets/coding.png'),
                new SizedBox(width: 15),
                listItem('assets/hair.png', 'assets/hair.png'),
                new SizedBox(width: 15),
                listItem('assets/shoes.png', 'assets/shoes.png'),
                new SizedBox(width: 15),
                listItem('assets/makeup.png', 'assets/makeup.png'),
                listItem('assets/music.jpg', 'assets/music.jpg'),
                new SizedBox(width: 15),
              ],
            ),
          ),
          new Padding(
            padding: new EdgeInsets.all(15),
            child: new Material(
              borderRadius: new BorderRadius.circular(15),
              elevation: 4.0,
              child: new Container(
                width: double.infinity,
                padding: new EdgeInsets.all(15),
                decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(15),
                    color: Colors.white
                ),
                child: new Column(
                  children: <Widget>[
                    new Row(
                      children: <Widget>[
                        new Container(
                          height: 50,
                          width: 50,
                          decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(25),
                              image: new DecorationImage(
                                  image: new AssetImage('sasets/coding.png'),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                        new SizedBox(width: 10),
                        new Container(
                          width: MediaQuery.of(context).size.width - 120,
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              new Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  new Text('Starrtrail', style: new TextStyle(fontFamily: 'Montserrat', fontSize: 14, fontWeight: FontWeight.bold)),
                                  new SizedBox(height: 2),
                                  new Text('17 mins ago', style: new TextStyle(fontFamily: 'Montserrat', fontSize: 12, color: Colors.grey)),
                                ],
                              ),
                              new Icon(
                                Icons.more_vert,
                                color: Colors.grey.withOpacity(0.5),
                                size: 20,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    new SizedBox(height: 15),

                    new SizedBox(height: 10),
                    new Row(
                      children: <Widget>[
                        new InkWell(
                          onTap: () {
                            setState(() {
                              _selectedIndex = 1;
                            });
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => SecondPage(heroTag: 'assets/coding.png', selectedIndex: _selectedIndex)
                            ));
                          },
                          child: new Hero(
                              tag: 'assets/coding.png',
                              child: new Container(
                                height: 200,
                                width: (MediaQuery.of(context).size.width - 0.0) / 1.4,
                                decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  image: new DecorationImage(
                                      image: new AssetImage('assets/coding.png'),
                                      fit: BoxFit.cover
                                  ),
                                ),
                              )
                          ),
                        ),
                        new SizedBox(width: 10.0),
//                        new Column(
//                          children: <Widget>[
//                            new InkWell(
//                              onTap: () {
//                                setState(() {
//                                  _selectedIndex = 2;
//                                });
//                                Navigator.of(context).push(MaterialPageRoute(
//                                    builder: (context) => SecondPage(heroTag: 'images/center2.jpg', selectedIndex: _selectedIndex)
//                                ));
//                              },
//                              child: new Hero(
//                                  tag: 'images/center2.jpg', child:

//                              ),
//                            ),
//                            new SizedBox(height: 10.0),
//                            new InkWell(
//                              onTap: () {
//                                setState(() {
//                                  _selectedIndex = 3;
//                                });
//                                Navigator.of(context).push(MaterialPageRoute(
//                                    builder: (context) => SecondPage(heroTag: 'images/center3.jpg', selectedIndex: _selectedIndex)
//                                ));
//                              },
//                              child: new Hero(
//                                  tag: 'images/center3.jpg',
//                                  child: new Container(
//                                    height: 95,
//                                    width: (MediaQuery.of(context).size.width - 100.0) / 2,
//                                    decoration: new BoxDecoration(
//                                      borderRadius: new BorderRadius.circular(5.0),
//                                      image: new DecorationImage(
//                                          image: new AssetImage('images/center3.jpg'),
//                                          fit: BoxFit.cover
//                                      ),
//                                    ),
//                                  )
//                              ),
//                            ),
//                          ],
//                        )
                      ],
                    ),
                    new SizedBox(height: 15),
                    new Row( 
                      children: <Widget>[
                        new Container(
                          height: 25,
                          width: 100,
                          decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(5.0),
                              color: Color(0xFFF1ECE9)
                          ),
                          child: new Center(
                            child: new Text('# MasterClass',style: new TextStyle(fontFamily: 'Montserrat', fontSize: 10.0, color: Color(0xFFFF5252))),
                          ),
                        ),
                        new SizedBox(width: 10),
                        new Container(
                          height: 25,
                          width: 75,
                          decoration: new BoxDecoration(
                              borderRadius: new BorderRadius.circular(5.0),
                              color: Color(0xFFF1ECE9)
                          ),
                          child: new Center(
                            child: new Text('# Code Geeks',style: new TextStyle(fontFamily: 'Montserrat', fontSize: 10.0, color: Color(0xFFFF5252))),
                          ),
                        ),
                      ],
                    ),
                    new SizedBox(height: 15),
                    new Container(
                      height: 1.0,
                      width: double.infinity,
                      color: Colors.grey.withOpacity(0.2),
                    ),
                    new SizedBox(height: 15),
                    new Row(
                      children: <Widget>[
                        new Icon(
                          Icons.reply,
                          color: Colors.grey.withOpacity(0.5),
                        ),
                        new SizedBox(width: 5.0),
                        new Text('2.5k', style: new TextStyle(fontFamily: 'Montserrat', color: Colors.grey)),
                        new SizedBox(width: 15),
                        new Icon(
                          Icons.comment,
                          color: Colors.grey.withOpacity(0.5),
                        ),
                        new SizedBox(width: 5.0),
                        new Text('625', style: new TextStyle(fontFamily: 'Montserrat', color: Colors.grey)),
                        new Expanded(
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                new Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                                new SizedBox(width: 5),
                                new Text('2.1k', style: new TextStyle(fontFamily: 'Montserrat', color: Colors.grey)),
                              ],
                            )
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: new Material(
        color: Colors.white,
        child: new TabBar(
            controller: controller,
            indicatorColor: Colors.transparent,
            tabs: [
              new Tab(icon: new Icon(Icons.home, color: Colors.black)),
              new Tab(icon: new Icon(Icons.play_circle_outline, color: Colors.grey)),
              new Tab(icon: new Icon(Icons.location_on, color: Colors.grey)),
              new Tab(icon: new Icon(Icons.blur_circular, color: Colors.grey)),
            ]
        ),
      ),
    );
  }

  Widget listItem(String imgPath, String logo){
    return Column(
      children: <Widget>[
        new Stack(
          children: <Widget>[
            new Container(
              margin: new EdgeInsets.only(left: 10),
              height: 75,
              width: 75,
              decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(37.5),
                  image: new DecorationImage(
                      image: new AssetImage(imgPath),
                      fit: BoxFit.cover
                  )
              ),
            ),
            new Positioned(
                top: 50,
                left: 60,
                child: new Container(
                  height: 25,
                  width: 25,
                  decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(12.5),
                      image: new DecorationImage(
                          image: new AssetImage(logo),
                          fit: BoxFit.cover
                      )
                  ),
                )
            )
          ],
        ),
        new SizedBox(
          height: 15,
        ),
        new Container(
          margin: new EdgeInsets.only(left: 13),
          height: 30,
          width: 75,
          decoration: new BoxDecoration(
              borderRadius: new BorderRadius.circular(15),
              color: Color(0xFFFF5252)
          ),
          child: new Center(
            child: new Text("Follow", style: new TextStyle(fontFamily: 'Montserrat', fontSize: 14, color: Colors.white, fontWeight: FontWeight.bold)),
          ),
        )
      ],
    );
  }

}

class SecondPage extends StatelessWidget {

  final heroTag;
  final selectedIndex;

  SecondPage({this.heroTag, this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(
        children: <Widget>[
          new Hero(
              tag: heroTag,
              child: new Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(heroTag), fit: BoxFit.cover
                    )
                ),
              )
          ),

          new Positioned(
              top: 30,
              left: 5,
              child: new Row(
                children: <Widget>[
                  new IconButton(
                      icon: new Icon(
                        Icons.arrow_back_ios,
                        size: 30,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      }),
                ],
              )
          ),
          new Positioned(
            bottom: 15.0,
            left: 15.0,
            right: 15.0,
            child: new Material(
              borderRadius: new BorderRadius.circular(10.0),
              elevation: 3.0,
              child: new Container(
                height: 200.0,
                decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(10.0),
                    color: Colors.white
                ),
                child: new Column(
                  children: <Widget>[
                    new Row(
                      children: <Widget>[
                        new Padding(
                          padding: new EdgeInsets.all(15.0),
                          child: new Container(
                            height: 115.0,
                            width: 100.0,
                            decoration: new BoxDecoration(
                                borderRadius: new BorderRadius.circular(10.0),
                                image: new DecorationImage(
                                    image: new AssetImage(heroTag),
                                    fit: BoxFit.cover
                                )
                            ),
                          ),
                        ),
                        new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Text(
                              "PYTHON",
                              style: new TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 19.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            new SizedBox(height: 5.0),
                            new Row(
                              children: <Widget>[
                                new Text(
                                  'Python Language',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 16.0,
                                      color: Colors.grey),
                                ),
                                new SizedBox(width: 10),
                                new Container(
                                  height: 14,
                                  width: 14,
                                  decoration: new BoxDecoration(
                                      image: new DecorationImage(
                                          image: new AssetImage('assets/coding.png'),
                                          fit: BoxFit.cover
                                      )
                                  ),
                                )
                              ],
                            ),
                            new SizedBox(height: 10.0),
                            new Container(
                              height: 30.0,
                              width: MediaQuery.of(context).size.width - 160.0,
                              child: new Text(
                                'Learn to use python to code so many amazing games!.',
                                style: new TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 12.0,
                                    color: Colors.grey),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    new Container(
                      width: MediaQuery.of(context).size.width - 60.0,
                      height: 1.0,
                      color: Colors.grey.withOpacity(0.4),
                    ),
                    new Padding(
                        padding: const EdgeInsets.only(left:15.0, right: 15.0, top: 5.0),
                        child: Container(
                            width: double.infinity,
                            child: Row(
                                children: <Widget>[
                                  new Icon(Icons.attach_money, color: Colors.black.withOpacity(0.6)),
                                  new Text(
                                    '0.00',
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 20.0,
                                        color: Colors.black.withOpacity(0.6)
                                    ),
                                  ),
                                  new Expanded(
                                      child: new Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: <Widget>[
                                          new FloatingActionButton(
                                            child: Center(
                                              child: Icon(Icons.arrow_forward_ios,
                                                  color: Colors.white,
                                                  size: 15.0
                                              ),
                                            ),
                                            backgroundColor: Color(0xFFFF5252),
                                            onPressed: () {},
                                            elevation: 0.0,
                                            mini: true,
                                          )
                                        ],
                                      )
                                  )
                                ]
                            )
                        )
                    )
                  ],
                ),
              ),
            ),
          ),
          new Positioned(
            left: 50.0,
            top: MediaQuery.of(context).size.height / 2,
            child: new Container(
              height: 35.0,
              width: 135.0,
              decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.circular(5.0),
                  color: Colors.black.withOpacity(0.7)
              ),
              child: new Center(
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new Text('START COURSE!',
                        style: new TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      new Icon(Icons.arrow_forward_ios, color: Colors.white, size: 17.0)
                    ],
                  )
              ),
            ),
          )
        ],
      ),
    );
  }
}


