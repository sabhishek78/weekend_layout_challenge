import 'dart:convert';

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
     final title = 'Long List';

     return MaterialApp(
       title: title,
       home: Scaffold(
         appBar: AppBar(
           title: Text(title),
         ),
         body: loading ? Text('Loading...'):ListView.builder(
           itemCount: customerList.length,
           itemBuilder: (context, index) {
             return ListTile(
               title: Text('${customerList[index]}'),
             );
           },
         ),
       ),
     );
   }
}
