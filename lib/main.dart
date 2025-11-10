import 'package:flutter/material.dart';
<<<<<<< HEAD
=======
import 'package:shared_preferences/shared_preferences.dart';
>>>>>>> a91dba3157045feb26350301988471fefc93d873
import 'pages/home.page.dart';
import 'pages/meteo.page.dart';
import 'pages/maps.page.dart';
import 'pages/contacts.page.dart';
import 'pages/messenger.page.dart';
import 'pages/chatbot.page.dart';
import 'pages/parametres.page.dart';
import 'pages/authentification.page.dart';
<<<<<<< HEAD
import 'pages/inscription.page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // rendu testable : le test appelle MyApp(isLoggedIn: ...)
  final bool isLoggedIn;
  const MyApp({super.key, this.isLoggedIn = false});
=======

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final isLoggedIn = prefs.getBool('connecte') ?? false;
  
  runApp(MyApp(isLoggedIn: isLoggedIn));
}

class MyApp extends StatelessWidget {
  final bool isLoggedIn;
  
  const MyApp({super.key, required this.isLoggedIn});
>>>>>>> a91dba3157045feb26350301988471fefc93d873

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
<<<<<<< HEAD
      title: 'My App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple, useMaterial3: true),
      // initialRoute dépend de isLoggedIn ; tests peuvent forcer via constructeur
      initialRoute: isLoggedIn ? '/home' : '/inscription',
      routes: {
        '/home': (context) => const HomePage(),
        '/meteo': (context) => MeteoPage(),
=======
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      initialRoute: isLoggedIn ? '/home' : '/authentification',
      routes: {
        '/home': (context) => const HomePage(),
        '/meteo': (context) => const MeteoPage(),
>>>>>>> a91dba3157045feb26350301988471fefc93d873
        '/maps': (context) => const MapsPage(),
        '/contacts': (context) => const ContactsPage(),
        '/messenger': (context) => const MessengerPage(),
        '/chatbot': (context) => const ChatBotPage(),
        '/parametres': (context) => const ParametresPage(),
        '/authentification': (context) => const AuthentificationPage(),
<<<<<<< HEAD
        '/inscription': (context) => const InscriptionPage(),
      },
    );
  }
}
=======
      },
    );
  }
}
>>>>>>> a91dba3157045feb26350301988471fefc93d873
