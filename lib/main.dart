import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twitter_clone/firebase_options.dart';
import 'package:twitter_clone/services/auth/auth_gate.dart';
import 'package:twitter_clone/services/database/database_provider.dart';
import 'package:twitter_clone/themes/theme_provider.dart';

void main() async {
  // firebase setup
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // APP
  runApp(MultiProvider(
    providers: [
      // theme provider
      ChangeNotifierProvider(create: (context) => ThemeProvider()),

      // database provider
      ChangeNotifierProvider(
        create: (context) => DatabaseProvider(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Twitter Clone',
      home: const AuthGate(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}
