import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Operations extends StatefulWidget {
  const Operations({Key? key}) : super(key: key);

  @override
  State<Operations> createState() => _OperationsState();
}

class _OperationsState extends State<Operations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Retrieve database subcollections '),
      ),
      body: Column(
        children: [
          StreamBuilder(
            stream: FirebaseFirestore.instance.collection('services').snapshots(),
            builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if(!snapshot.hasData){
               return const Center(
                   child: CircularProgressIndicator());
              }else{
                return Container(

                  height: MediaQuery.of(context).size.height/2,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    children: snapshot.data!.docs.map((snap) {
                      return Card(
                        child: ListTile(
                          leading: Text(snap['anti-depressants'].toString()),
                          title: Text(snap['medicines'].toString()),
                          subtitle: Text(snap['pain killers'].toString()),
                          trailing: Icon(Icons.delete),
                        ),
                      );
                    }).toList(),
                  ),
                );
              }
            },

          ),
        ],
      ),
    );
  }
}
