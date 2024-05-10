import 'package:firebase_core/firebase_core.dart';
import 'package:get_it/get_it.dart';
import 'package:mindscape/firebase_options.dart';
import 'package:mindscape/services/auth_service.dart';

Future<void> SetupFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

Future<void> registerServices() async{
  final GetIt getIt = GetIt.instance;
  getIt.registerSingleton(
    AuthService(),
  );
  
}