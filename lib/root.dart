import 'package:flutter/material.dart';
import 'start.dart';
import 'patience.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RootPage extends StatelessWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection('info');
    return FutureBuilder<DocumentSnapshot>(
        future: users.doc('data').get(),
        builder:
            (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (snapshot.hasData && !snapshot.data!.exists) {
            return const StartPage();
          }
          if (snapshot.connectionState == ConnectionState.done) {
            Map<String, dynamic> data =
                snapshot.data!.data() as Map<String, dynamic>;
            return PatiencePage(
                snack: data['snack'],
                snackTimes: data['snackTimes'],
                snackPrice: data['snackPrice'],
                startDay: data['startDay']);
          }

          return const StartPage();
        });
  }
}
