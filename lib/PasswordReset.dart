import 'package:flutter/material.dart';



class PasswordReset extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _PasswordReset();

}

class _PasswordReset extends State<PasswordReset> {

  final formKey = new GlobalKey<FormState>();
  String _email;

  //Initializing ProgressDialog

  //ProgressDialog pr;

  // Check if form is valid before perform login

  bool validateAndSave() {
    final form = formKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    }
    else {
      return false;
    }

  }


  // Method to Request Forgot password Starts Here


//  void _validateAndSubmit() async {
//
//    pr = new ProgressDialog(context,ProgressDialogType.Normal);
//
//    if (validateAndSave()) {
//      pr = new ProgressDialog(context, ProgressDialogType.Normal);
//
//      try {
//        pr.show(); //The loader that shows when a request is being made
//
//        await FirebaseAuth.instance.sendPasswordResetEmail(email: _email);
//
//        pr.hide(); //Hiding loader after request has been made
//
//        _passwordResetEmailSent();
//      } catch (e) {
//        print(e);
//        if (e.toString().contains("ERROR_NETWORK_REQUEST_FAILED")) { //Poor Connection Error
//          pr.hide(); //Hiding loader after request has been made
//          _nointernet(); //Calling "No internet" Dialog
//        }
//        else if (e.toString().contains("ERROR_USER_NOT_FOUND")) { //User Not Found Error
//          pr.hide(); //Hiding loader after request has been made
//          _noUserFound(); //Calling "User Not Found" Dialog
//        }
//        else {
//          //print("hello");
//        }
//      }
//
//    }
//
//  }


  // Method to Request Forgot password Ends Here


  //Alert Dialog for No User Found Starts Here

//  Future<void> _noUserFound() async {
//    return showDialog<void>(
//      context: context,
//      barrierDismissible: false, // user must tap button!
//      builder: (BuildContext context) {
//        return AlertDialog(
//          title: Text('User Does Not Exist'),
//          content: Text('No User With This Email Was Found.'),
//          actions: <Widget>[
//            FlatButton(
//              child: Text('Dismiss'),
//              onPressed: () {
//                Navigator.of(context).pop();
//              },
//            ),
//          ],
//        );
//      },
//    );
//  }


  //Alert Dialog for No User Found Ends Here


  //Alert Dialog for Password Reset Email Sent Starts Here

//  Future<void> _passwordResetEmailSent() async {
//    return showDialog<void>(
//      context: context,
//      barrierDismissible: false, // user must tap button!
//      builder: (BuildContext context) {
//        return AlertDialog(
//          title: Text('Password Reset'),
//          content: Text('Instructions to Reset Your Password has been sent to Your Email.'),
//          actions: <Widget>[
//            FlatButton(
//              child: Text('Dismiss'),
//              onPressed: () {
//                Navigator.of(context).pop();
//              },
//            ),
//          ],
//        );
//      },
//    );
//  }


  //Alert Dialog for Password Reset Email Sent Ends Here



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Starrtrail"),
      ),
      body: new Container(
        decoration: new BoxDecoration(color: Colors.white),
        padding: EdgeInsets.all(16.0),
        child: new Form(
            key: formKey,
            child: new ListView(
              children: <Widget>[

                new TextFormField(
                  decoration: new InputDecoration(labelText: "Email", icon: new Icon(Icons.email, color: Colors.grey,)),
                  validator: (value) => value.isEmpty ? 'Email is Required' : null,
                  onSaved: (value) => _email = value,
                ),
                new Padding(
                    padding: EdgeInsets.only(bottom: 30.0)
                ),
                new MaterialButton(
                    child: new Text("SUBMIT", style: new TextStyle(fontSize: 20.0),),
                    height: 40.0,
                    minWidth: 100.0,
                    color: Colors.redAccent,
                    elevation: 4.0,
                    onPressed: () {
                      //_validateAndSubmit(); //Calling validateAndSubmit button onpress of SUBMIT button
                    },
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)
                    )
                ),
              ],
            )),
      ),
    );
  }

//Alert Dialog for bad internet connection Starts Here

//  Future<void> _nointernet() async {
//    return showDialog<void>(
//      context: context,
//      barrierDismissible: false, // user must tap button!
//      builder: (BuildContext context) {
//        return AlertDialog(
//          title: Text('Connectivity Lost'),
//          content: Text('Reconnect to the Internet and Try again.'),
//          actions: <Widget>[
//            FlatButton(
//              child: Text('Dismiss'),
//              onPressed: () {
//                Navigator.of(context).pop();
//              },
//            ),
//          ],
//        );
//      },
//    );
//  }

//Alert Dialog for bad internet connection Ends Here



}

//Fire base Image



//Flutter Circular Avatar
//https://stackoverflow.com/questions/53513456/flutter-network-image-does-not-fit-in-circular-avatar
