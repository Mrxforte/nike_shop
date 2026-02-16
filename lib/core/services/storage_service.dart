import 'package:firebase_storage/firebase_storage.dart';

class StorageService {
  final FirebaseStorage _storage = FirebaseStorage.instance;

  Reference get productImages => _storage.ref('product_images');
  Reference get userAvatars => _storage.ref('user_avatars');
}
