import 'package:flutter/material.dart';

import 'passwordReset.dart';

import 'SignUp.dart';

import 'discovery.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      home: new LoginPage(),
      theme: new ThemeData(
        primarySwatch: Colors.blue
      ),
    );
  }
}

class LoginPage extends StatefulWidget{
  @override
  State createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin{

  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;

  @override
  void initState(){
    super.initState();
    _iconAnimationController = new AnimationController(
      vsync: this,
      duration: new Duration(milliseconds: 500)
    );
    _iconAnimation = new CurvedAnimation(
        parent: _iconAnimationController,
        curve: Curves.bounceOut,
    );
    _iconAnimation.addListener(()=> this.setState((){}));
    _iconAnimationController.forward();
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
        backgroundColor: Colors.white,
        body: new Stack(
          fit: StackFit.expand,
          children: <Widget>[
//            new Image(
//              image: new AssetImage("assets/Login.jpg"),
//              fit: BoxFit.cover,
//              color: Colors.black38,
//              colorBlendMode: BlendMode.darken ,
//            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
//                new Image(
//                  image: new AssetImage("assets/STARRTRAIL.png"),
//                  fit: BoxFit.contain,
//                  width : 140,
//                  height:140,
//                ),
                Text(
                  "STARRTRAIL",
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold , fontSize: 40, ),

                ),
                new Form(
                  child: new Theme(
                     data: new ThemeData(primarySwatch: Colors.red ,
                          ),
                  child: Container(
                    padding: const EdgeInsets.all(40.0),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                         new TextFormField(
                          decoration: new InputDecoration(
                            hintText: "Email",

                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        new TextFormField(
                          obscureText: true,
                          decoration: new InputDecoration(
                            hintText: "Password",
                          ),
                          keyboardType: TextInputType.text,

                        ),
                        FlatButton(
                          child: Text('New to Starrtrail? Sign up!'),
                          textColor: Colors.redAccent,
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()),
                            );
                          },
                        ),
                        new Padding(
                            padding: EdgeInsets.only(bottom: 50.0)
                        ),
                        new MaterialButton(
                          height: 50.0,
                            minWidth: 200.0,
                          color: Colors.redAccent,
                          textColor: Colors.black,
                          child: new Text("LOGIN"),
                          onPressed: () => {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Discovery()),
                            )
                          }, elevation: 4.0,
                          shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)
                        )),
                      FlatButton(
                      child: Text('Forgot Password?'),
                        textColor: Colors.redAccent,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PasswordReset()),
                      );
                    },
                  ),


                      ],
                      ),
                  ),
                ),
                )
              ],
            )
          ],
        ),
      );
  }
}
