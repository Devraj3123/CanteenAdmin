import 'dart:async';

import 'package:canteen_app/Model/hist.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../Model/food_item.dart';

class FoodDatabase {
  final String name;
  // final String? fdname;
  final CollectionReference dbfood;
  FoodDatabase({required this.name})
      : dbfood = FirebaseFirestore.instance.collection(name);

  Future update_foodlist(String name, int price, int qnty) {
    return dbfood.doc(name).set({
      "name": name,
      "price": price,
      "qnty": qnty,
    });
  }

  List<Food_item?> _confd(QuerySnapshot sns) {
    return sns.docs.map((doc) {
      // Explicitly cast doc.data() to Map<String, dynamic>
      Map<String, dynamic>? data =
          doc.data() as Map<String, dynamic>?; //Convert Object? to map

      // Check if data is not null before accessing its properties
      if (data != null) {
        return Food_item(
          name: data['name'],
          price: data['price'],
          qnty: data['qnty'],
        );
      }
    }).toList();
  }

  Stream<List<Food_item?>> get fdlist {
    return dbfood.snapshots().map(_confd);
  }

  void update_qnty(String name, int qnty) {
    dbfood.doc(name).update({"qnty": qnty});
  }

  void resetqnty(String name) {
    dbfood.doc(name).update({"qnty": 0});
  }
}

class qrscanner {
  final String pid;
  qrscanner({required this.pid});

  Future<List<Map<String, dynamic>>> searchDocumentByName(
      String? documentName) async {
    try {
      print('hello try --> ${documentName}');
      DocumentSnapshot documentSnapshot = await FirebaseFirestore.instance
          .collection('qr')
          .doc(documentName)
          .get();

      if (documentSnapshot.exists) {
        print('EXISTS');
        // Assuming 'order' is a List<Map<String, dynamic>>
        Map<String, dynamic> data =
            documentSnapshot.data() as Map<String, dynamic>;
        print('DATA IS: ${data}');
        // Convert the data to a list of maps
        List<Map<String, dynamic>> listOfMaps = [];
        data.forEach((key, value) {
          listOfMaps.add({key: value});
        });

        return listOfMaps;
      }
      return []; // Return an empty list if the document doesn't exist
    } catch (error) {
      print('Error searching document: $error');
      // Ensure that a value is returned even in case of an error
      return [];
    }
  }

  Future<void> deleteDocument(String documentId) async {
    try {
      await FirebaseFirestore.instance
          .collection('qr')
          .doc(documentId)
          .delete();
      print('Document $documentId successfully deleted from collection qr');
    } catch (e) {
      print('Error deleting document: $e');
      // Handle error
    }
  }
}

class History {
  final CollectionReference hist =
      FirebaseFirestore.instance.collection('history');

  List<Hist?> convh(QuerySnapshot q) {
    return q.docs.map((docs) {
      Map<String, dynamic>? d =
          docs.data() as Map<String, dynamic>?; //Convert Object? to map
      //Check if data is not null before accessing its properties
      if (d != null) {
        int tot = 0;
        List order = d['order'];
        order.forEach((element) {
          tot += ((element['price'] as int) * (element['qnty'] as int));
        });
        //
        return Hist(
          pid: d['pid'],
          total: tot,
        );
      }
    }).toList();
  }

  Stream<List<Hist?>> get get_hist {
    return hist.snapshots().map(convh);
  }
}
