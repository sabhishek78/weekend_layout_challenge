import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
class CustomerPage extends StatefulWidget {
  final String sessionCookie;
  final String sessionCookieSig;
  CustomerPage({this.sessionCookie,this.sessionCookieSig});
  @override
  _CustomerPageState createState() => _CustomerPageState();
}

class _CustomerPageState extends State<CustomerPage> {

   getCustomerList(sessionCookie,sessionCookieSig)async{
  Map<String,String> headers = {'Content-Type':'application/json'};
  final customerUrl = 'http://10.0.2.2:8000/customers';
  headers["cookie"]="$sessionCookie;$sessionCookieSig";
  http.Response response2 = await http.get(customerUrl, headers: headers);
  print(response2.body);
    customerList=jsonDecode(response2.body); // 200
   print(customerList);
   print(customerList.length);
   loading=false;
   setState(() {

   });
  }
  var customerList=[];
   bool loading=true;
  @override
  void initState() {
    super.initState();
    getCustomerList(widget.sessionCookie, widget.sessionCookieSig);
  }
   @override
   Widget build(BuildContext context) {
     final title = 'Customer Details';

     return MaterialApp(
       title: title,
       home: Scaffold(
         appBar: AppBar(
           title: Text(title),
           actions: <Widget>[
             // action button
             IconButton(
               icon:Icon(Icons.refresh),
               onPressed: () {
                 getCustomerList(widget.sessionCookie, widget.sessionCookieSig);
                 setState(() {
                   
                 });
               },
             ),
             // action button
             IconButton(
               icon: Icon(Icons.exit_to_app),
               onPressed: () {

               },
             ),
           ],
         ),
         body: loading ? Text('Loading...'):ListView.builder(
           itemCount: customerList.length,
           itemBuilder: (context, index) {
             return ListTile(
               title: Text('Name:${customerList[index]['customerName']}\nPhoneNumber:${customerList[index]['phoneNumber']}'),
               subtitle: Text('Gender:${customerList[index]['gender']}'),
               isThreeLine: true,
             );
           },
         ),
       ),
     );
   }
}
