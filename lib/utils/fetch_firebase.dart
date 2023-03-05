import 'package:cloud_firestore/cloud_firestore.dart';

class FetchFirebase {
  final String userId;
  final String collection;
  final String innerCollection;
  FetchFirebase(
    this.userId,
    this.collection,
    this.innerCollection,
  );
  Future fetchdata() async {
    final FirebaseFirestore firestore = FirebaseFirestore.instance;
    try {
      CollectionReference docRef =
          firestore.collection('users').doc(userId).collection('shared_links');
      QuerySnapshot querySnapshot = await docRef.get();
      final allData = querySnapshot.docs.map((doc) => doc.data()).toList();
      return allData;
    } catch (e) {
      return e;
    }
  }
}
