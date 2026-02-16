import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  CollectionReference get products => _db.collection('products');
  CollectionReference get users => _db.collection('users');
  CollectionReference get orders => _db.collection('orders');
  CollectionReference get carts => _db.collection('carts');
  CollectionReference get wishlists => _db.collection('wishlists');
}
