import 'package:debolsillo_app/app/UI/pages/controllers/search_clients_controllers.dart';
import 'package:debolsillo_app/app/routers/the_routers.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Asegura que los widgets estén inicializados antes de inicializar Firebase
  await MyApp.initializeDefault();

  Get.put(
      ClientsController()); // Espera a que se inicialice Firebase antes de ejecutar runApp()
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static Future<void> initializeDefault() async {
    FirebaseApp app = await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    // ignore: avoid_print
    print('Initialized default app $app');
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DebolsilloApp',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
      initialRoute: '/',
      getPages: AppRoutes.routes,
    );
  }
}
