import 'package:edutec_hub/config/firebase/firebase_massage_service.dart';
import 'package:firebase_core/firebase_core.dart';

class FirebaseConfig {
  static Future<void> initialize() async {
    await Firebase.initializeApp();
    await FirebaseMessagingService().initialize();
  }
}
