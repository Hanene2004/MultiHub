import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'pages/home.page.dart';
import 'pages/meteo.page.dart';
import 'pages/maps.page.dart';
import 'pages/contacts.page.dart';
import 'pages/messenger.page.dart';
import 'pages/chatbot.page.dart';
import 'pages/parametres.page.dart';
import 'pages/authentification.page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final isLoggedIn = prefs.getBool('connecte') ?? false;
  
  runApp(MyApp(isLoggedIn: isLoggedIn));
}

class MyApp extends StatelessWidget {
  final bool isLoggedIn;
  
  const MyApp({super.key, required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      initialRoute: isLoggedIn ? '/home' : '/authentification',
      routes: {
        '/home': (context) => const HomePage(),
        '/meteo': (context) => const MeteoPage(),
        '/maps': (context) => const MapsPage(),
        '/contacts': (context) => const ContactsPage(),
        '/messenger': (context) => const MessengerPage(),
        '/chatbot': (context) => const ChatBotPage(),
        '/parametres': (context) => const ParametresPage(),
        '/authentification': (context) => const AuthentificationPage(),
      },
    );
  }
}