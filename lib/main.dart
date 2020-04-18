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
      color: Colors.red,
      padding: const EdgeInsets.only(
          left: 20.0, right: 20.0, top: 20.0, bottom: 10.0),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Text(
                    'Learn to code by watching others',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    'See how experienced developers solve problems in real-time. Watching scripted tutorials is great, but understanding how developers think is invaluable',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
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
                      color: Colors.purple[500],
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                      ),
                      child: Text(
                        "Try it free 7 days then 20/mo. thereafter",
                        style: TextStyle(color: Colors.white),
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
                        flex:1,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: TextField(
                            style: TextStyle(
                                fontSize: 15.0, height: 1.0, color: Colors.black),
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
                                fontSize: 15.0, height: 1.0, color: Colors.black),
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
                        flex:1,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: TextField(
                            style: TextStyle(
                                fontSize: 15.0, height: 1.0, color: Colors.black),
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
                        flex:1,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: TextField(
                            style: TextStyle(
                                fontSize: 15.0, height: 1.0, color: Colors.black),
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
                        flex:1,
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 3.0, right: 3.0, top: 3.0, bottom: 3.0),
                          width: double.infinity,
                          child: RaisedButton(
                            onPressed: () {},
                            color: Colors.green[500],
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                            ),
                            child: Text(
                              "CLAIM YOUR FREE TRIAL",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          'By clicking on the button, you are agreeing on our terms and services',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
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
