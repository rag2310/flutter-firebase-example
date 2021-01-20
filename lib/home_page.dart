import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_admin/firebase_admin.dart';
import 'package:firebase_admin/src/credential.dart';
import 'package:firebase_core/firebase_core.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    actualizar();
    return Container();
  }

  Future<void> actualizar() async {
    FirebaseApp app = await Firebase.initializeApp(
        name: 'flutter-firebase-example',
        options: FirebaseOptions(
            appId: "flutter-firebase-example-1af85",
            apiKey: "AIzaSyAfOXG_EBa3a2q6NUu1ae2PVIE8f7-1poU",
            measurementId: "",
            projectId: ""));

    // var token = await auth.auth().createCustomToken('0123');
    //
    // print("TOKEN: $token");

    // String doc;
    // await _getStoreRef()
    //     .where("pass_auth", isEqualTo: '123')
    //     .get()
    //     .then((value) async {
    //   value.docs.forEach((element) {
    //     print(element.reference.id);
    //     doc = element.reference.id;
    //     print(element.data()['nom_user']);
    //   });
    // });
    // await _getStoreRef()
    //     .doc(doc)
    //     .update({'nom_user': 'Alfred', 'pass_auth': '123'});
    //
    //
    // await _getStoreRef()
    //     .doc(doc)
    //     .update({'nom_user': 'Alfre', 'pass_auth': '123'});
  }
}
