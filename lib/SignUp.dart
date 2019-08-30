import 'dart:io';
import 'package:flutter/material.dart';
import 'sign2.dart';
import 'discovery.dart';



void main() => runApp(new MyApp());

class User {
  const User(this.name);

  final String name;
}

class MyApp extends StatelessWidget{



  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      home: new SignUpPage(),
      theme: new ThemeData(
          primarySwatch: Colors.blue
      ),
    );
  }
}


class SignUpPage extends StatefulWidget{
  @override
  State createState() => new SignUpPageState();
}

class SignUpPageState extends State<SignUpPage> with SingleTickerProviderStateMixin{

  AnimationController _iconAnimationController;
  Animation<double> _iconAnimation;

  User selectedUser;
  List<User> users = <User>[const User('Tutor'), const User('Learner')];

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
      appBar: new AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.redAccent,
        title: Text("Starrtrail"),
      ),
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
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(bottom:30.0)
                ),
                ( MaterialButton(child: Image.asset('assets/googles.png'),onPressed:() {
                  signInWithGoogle().whenComplete(() {
                  });
//        Navigator.of(context).push(
//          MaterialPageRoute(
//            builder: (context) {
//              return FirstScreen();
//            },
//          ),
//        );
                }))]),


          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
//                new Image(
//                  image: new AssetImage("assets/STARRTRAIL.png"),
//                  fit: BoxFit.contain,
//                  width : 140,
//                  height:140,
//                ),

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
                              hintText: "Name",
                              icon: new Icon(Icons.account_circle, color: Colors.grey,)
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        new TextFormField(
                    decoration: new InputDecoration(
                            hintText: "Email",
                              icon: new Icon(Icons.email, color: Colors.grey,)
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        new TextFormField(
                          obscureText: true,
                          decoration: new InputDecoration(
                            hintText: "Password",
                              icon: new Icon(Icons.lock_outline, color: Colors.grey,)
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),

                        new DropdownButton<User>(
                      hint: new Text("Select a user"),
                      value: selectedUser,
                      onChanged: (User newValue) {
                        setState(() {
                          selectedUser = newValue;
                        });
                      },
                      items: users.map((User user) {
                        return new DropdownMenuItem<User>(
                          value: user,
                          child: new Text(
                            user.name,
                            style: new TextStyle(color: Colors.black),
                          ),
                        );
                      }).toList(),
                    ),

                      new Padding(
                            padding: EdgeInsets.only(bottom: 29.0)
                        ),
                        new MaterialButton(
                            height: 50.0,
                            minWidth: 200.0,
                            color: Colors.redAccent,
                            textColor: Colors.black,
                            child: new Text("SIGN UP"),
                            onPressed: () => {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Discovery()),
                              )
                            },
                            elevation: 4.0,
                            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)
                            ))


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
