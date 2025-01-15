
import 'package:bat_karo/pages/signup_page.dart';
import 'package:bat_karo/pages/splash_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'controller/chat_provider.dart';
import 'controller/user_controller.dart';
import 'firebase_options.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => UserProvider(),),
    ChangeNotifierProvider(create: (context) => ChatViewModel(),),
  ],child: MyApp(),));

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        home:SplashPage(),
        );
    }
}