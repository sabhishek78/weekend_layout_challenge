import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:weekend_layout_challenge/customer_page.dart';

void main(){
  runApp(
      MaterialApp(
        theme: ThemeData.dark(),
        // Start the app with the "/" named route. In this case, the app starts
// on the FirstScreen widget.
        initialRoute: '/',
        routes: {
// When navigating to the "/" route, build the FirstScreen widget.
          '/': (context) => LoginPage(),
// When navigating to the "/second" route, build the SecondScreen widget.
          '/customerPage': (context) => CustomerPage(),
        },
      )
  );


}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var customerNameController = TextEditingController();
  var passwordController = TextEditingController();
  var customerName='';
  var password='';
  var _id='';
//  @override
//  void dispose() {
//    // Clean up the controller when the widget is disposed.
//    myController.dispose();
//    super.dispose();
//  }
  String extractSessionCookie(searchString,inputString){
    var i=0;
    print("searchString length=${searchString.length}");
    while(inputString.substring(i,searchString.length+i)!=searchString){
      i++;
    }
    print("i=$i");

    var cookieStartIndex=i;
    while(inputString[i]!=';'){
      i++;
    }
    return inputString.substring(cookieStartIndex,i);
  }
    void login() async{
    customerName=customerNameController.text;
    password=passwordController.text;
    print("making request");
    const url = 'http://10.0.2.2:8000/users/login';

// Sending a POST request with headers
      Map<String,String> headers = {'Content-Type':'application/json'};
     http.Response response = await http.post(url, headers: headers, body:jsonEncode({"customerName":customerName,"password":password }));
     print(response.body); // 200
      print("printing headers");
      print(response.headers["set-cookie"]);
     String sessionCookie=extractSessionCookie("session=",response.headers["set-cookie"].toString());
     print("session Cookie=$sessionCookie");
      String sessionCookieSig=extractSessionCookie("session.sig=",response.headers["set-cookie"].toString());
      print("session CookieSig=$sessionCookieSig");
      Navigator.push(context,  MaterialPageRoute(
          builder: (context) =>
              CustomerPage(sessionCookie: sessionCookie,sessionCookieSig: sessionCookieSig,)));
    }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        home: Container(
          decoration: BoxDecoration(
              color: HSLColor.fromAHSL(1.0,0.0, 1.0, .74).toColor(),
              image: DecorationImage(
                  image: AssetImage("assets/bg-intro-mobile.png"), fit: BoxFit.cover,)),

      padding: const EdgeInsets.only(
          left: 20.0, right: 20.0, top: 20.0, bottom: 10.0),
      child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
                child: Column(
//              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      top: 50.0, left: 30.0, right: 30.0, bottom: 10.0),
                  child: Container(
                    child: Text(
                      'Use the best CRM to\n grow your business',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Poppins',
                          decoration: TextDecoration.none,
                          color: Colors.white),
                    ),
                  ),
                ),


              ],
            )),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(18.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
//                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'LOGIN',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Poppins',
                            decoration: TextDecoration.none,
                            color: Colors.black),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: TextField(
                            controller: customerNameController,
                            style: TextStyle(
                                fontSize: 15.0,
                                height: 1.0,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),),
                              contentPadding: EdgeInsets.all(16.0),

                              labelText: 'Username',
                            ),

                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: TextField(
                            obscureText: true,
                            controller: passwordController,
                            style: TextStyle(
                                fontSize: 15.0,
                                height: 1.0,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),),
                              contentPadding: EdgeInsets.all(16.0),

                              labelText: 'Password',
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 3.0, right: 3.0, top: 3.0, bottom: 3.0),
                          width: double.infinity,
                          child: RaisedButton(
                            onPressed: () {login();},
                            color: HSLColor.fromAHSL(1.0,154, 0.55, 0.51).toColor(),
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(5.0),
                            ),
                            child: Text(
                              "SUBMIT",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins',

                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontFamily: 'Poppins',
                                  height: 2,
                                  fontSize: 15),
                              text:
                                  " Create a new account",
                              children: <TextSpan>[
                                TextSpan(
                                    text: ' SIGN UP',
                                    style: TextStyle(
                                      color: Colors.redAccent,
                                      fontSize: 20,

                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold
                                    ))
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
