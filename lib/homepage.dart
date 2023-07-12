import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hospital/baseclient.dart';
import 'package:http/http.dart' as http;

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController name=new TextEditingController();
  TextEditingController email=new TextEditingController();
  TextEditingController mobile=new TextEditingController();

  Future<List> sendData() async {
    final response = await http.post("http://raushanjha.in/insertdata.php", body: {
      "name": name.text,
      "email": email.text,
      "mobile":mobile.text,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Register"),),
    body: Container(
    child: Center(
    child: Column(
    children: <Widget>[
    Text("Username",style: TextStyle(fontSize: 18.0),),
    TextField(
    controller: name,
    decoration: InputDecoration(
    hintText: 'name'
    ),
    ),
    Text("Email",style: TextStyle(fontSize: 18.0),),
    TextField(
    controller: email,
    decoration: InputDecoration(
    hintText: 'Email'
    ),
    ),
    Text("Mobile",style: TextStyle(fontSize: 18.0),),
    TextField(
    controller: mobile,
    decoration: InputDecoration(
    hintText: 'Mobile'
    ),
    ),

    RaisedButton(
    child: Text("Register"),
    onPressed: (){
    sendData();
    },
    ),
