import 'package:flutter/material.dart';

void main() => runApp(RegisterPage());

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      top: 40.0, left: 20.0, right: 20.0, bottom: 10.0),
                  child: Container(
                    child: Text(
                      'Learn to code  by\n watching others',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Poppins',
                          decoration: TextDecoration.none,
                          color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, left: 20.0, right: 20.0, bottom: 10.0),
                  child: Container(
                    child: Text(
                      'See how experienced developers solve problems in real-time. Watching scripted tutorials is great, but understanding how developers think is invaluable',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                      left: 3.0, right: 3.0, top: 10.0, bottom: 3.0),
                  width: double.infinity,
                  child: RaisedButton(
                    onPressed: () {},
                    color: HSLColor.fromAHSL(1.0,248, 0.32, 0.49).toColor(),
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: <Widget>[
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                              text: " Try it free 7 days ",
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'then \n \$20/mo. thereafter ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.normal,
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
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
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(18.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: TextField(
                            style: TextStyle(
                                fontSize: 15.0,
                                height: 1.0,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(8.0),
                              border: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(10.0),
                                ),
                              ),
                              labelText: 'First Name',
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: TextField(
                            style: TextStyle(
                                fontSize: 15.0,
                                height: 1.0,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(8.0),
                              border: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(10.0),
                                ),
                              ),
                              labelText: 'Last Name',
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: TextField(
                            style: TextStyle(
                                fontSize: 15.0,
                                height: 1.0,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(8.0),
                              border: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(10.0),
                                ),
                              ),
                              labelText: 'Email Address',
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: TextField(
                            style: TextStyle(
                                fontSize: 15.0,
                                height: 1.0,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(8.0),
                              border: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(10.0),
                                ),
                              ),
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
                            onPressed: () {},
                            color: HSLColor.fromAHSL(1.0,154, 0.55, 0.51).toColor(),
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                            child: Text(
                              "CLAIM YOUR FREE TRIAL",
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
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: 'Poppins',
                                fontSize: 15),
                            text:
                                " By clicking the button you are agreeing to \n our",
                            children: <TextSpan>[
                              TextSpan(
                                  text: ' Terms and Services',
                                  style: TextStyle(
                                    color: Colors.redAccent,
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                  ))
                            ],
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
