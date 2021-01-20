import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_admin/firebase_admin.dart';
import 'package:firebase_admin/src/credential.dart';

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
    var credential = Credentials.applicationDefault();

    print(credential);

    credential ??= await Credentials.login();

    print(credential);

    var projectId = 'flutter-firebase-example-1af85';

    var auth = FirebaseAdmin.instance.initializeApp(AppOptions(
        credential: credential ?? Credentials.applicationDefault(),
        projectId: projectId,
        storageBucket: '$projectId.appspot.com'));

    print(auth);

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

  CollectionReference _getStoreRef() =>
      FirebaseFirestore.instance.collection('usuarios');
}
