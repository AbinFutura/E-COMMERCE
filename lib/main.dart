import 'package:e_commerce_project/views/auth/Signup_page.dart';
import 'package:e_commerce_project/views/auth/login_page.dart';
import 'package:e_commerce_project/views/onboard/onboard.dart';
import 'package:e_commerce_project/views/splash/splash_screen.dart';
import 'package:e_commerce_project/views/wishlist/wishlist.dart';
import 'package:e_commerce_project/views/cart/cart_page.dart';
import 'package:e_commerce_project/views/home/home_page.dart';
import 'package:e_commerce_project/views/onboard/onboard.dart';
import 'package:e_commerce_project/views/profile/profile_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ProviderScope(child:  MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}

