import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class Medicines extends StatefulWidget {
  const Medicines({Key? key}) : super(key: key);

  @override
  State<Medicines> createState() => _MedicinesState();
}

FirebaseFirestore firestore = FirebaseFirestore.instance;

final medicines = firestore.collection('medicines');
final data = <String, dynamic>{
  "name":"benzine",
  "type":"laret",
};





class _MedicinesState extends State<Medicines> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
