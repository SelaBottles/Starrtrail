import 'package:flutter/material.dart';
import 'dart:async';
import 'login.dart';


//runApp
//=> (splashScreen())
void main()
{
  runApp(MaterialApp(
    home: SplashScreen(),
    debugShowCheckedModeBanner: false,
  ));

}
class SplashScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    loadData();
  }

  Future<Timer> loadData() async {
    return new Timer(Duration(seconds: 3), () => Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()),
    ));
  }

  onDoneLoading() async {
//    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        body: Center(
          child: Stack(
            children: <Widget>[Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/STARRTRAIL.png'),
                  fit: BoxFit.contain
                )
              ),
            )
            ],
          ),
        ),
      )
    );
//    return Container(
//      decoration: BoxDecoration(
//        image: DecorationImage(
//            image: AssetImage('assets/STARRTRAIL.png'),
//            fit: BoxFit.contain
//        ) ,
//      ),
//      child: Center(
//        child: CircularProgressIndicator(
//          valueColor: AlwaysStoppedAnimation<Color>(Colors.redAccent),
//        ),
//      ),
//    );
  }
}



//class HomeScreen extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      body: Center(
//        child: Text('Welcome', style: TextStyle(fontSize: 24.0),),
//      ),
//    );
//
//  }
//}


//class FlightImageAsset extends StatelessWidget {
//
//  @override
//  Widget build(BuildContext context) {
//    var assetsImage = new AssetImage('assets/STARRTRAIL.png');
//    var image = new Image(image: assetsImage);
//    return new Container(child: image);
//  }
//
