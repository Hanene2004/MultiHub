import 'package:flutter/material.dart';

class GlobalParams {
  static List<Map<String, dynamic>> menus = [
    {
      'title': 'Accueil',
      'icon': const Icon(Icons.home, color: Colors.blue),
      'route': '/home'
    },
    {
      'title': 'Météo',
      'icon': const Icon(Icons.wb_sunny, color: Colors.blue),
      'route': '/meteo'
    },
    {
      'title': 'Maps',
      'icon': const Icon(Icons.map, color: Colors.blue),
      'route': '/maps'
    },
    {
      'title': 'Contacts',
      'icon': const Icon(Icons.contacts, color: Colors.blue),
      'route': '/contacts'
    },
    {
      'title': 'Messages',
      'icon': const Icon(Icons.message, color: Colors.blue),
      'route': '/messenger'
    },
    {
      'title': 'ChatBot',
      'icon': const Icon(Icons.chat, color: Colors.blue),
      'route': '/chatbot'
    },
    {
      'title': 'Paramètres',
      'icon': const Icon(Icons.settings, color: Colors.blue),
      'route': '/parametres'
    },
    {
      'title': 'Déconnexion',
      'icon': const Icon(Icons.logout, color: Colors.red),
      'route': '/authentification'
    },
  ];

  static List<Map<String, dynamic>> accueil = [
    {
      'route': '/meteo',
      'image': const AssetImage('assets/images/meteo.jpeg'),
      'title': 'Météo'
    },
    {
      'route': '/maps',
      'image': const AssetImage('assets/images/maps.png'),
      'title': 'Maps'
    },
    {
      'route': '/contacts',
      'image': const AssetImage('assets/images/contacts.png'),
      'title': 'Contacts'
    },
    {
      'route': '/messenger',
      'image': const AssetImage('assets/images/messenger.jpeg'),
      'title': 'Messages'
    },
    {
      'route': '/chatbot',
      'image': const AssetImage('assets/images/chatbot.jpeg'),
      'title': 'ChatBot'
    },
    {
      'route': '/parametres',
      'image': const AssetImage('assets/images/parametres.png'),
      'title': 'Paramètres'
    },
  ];
}
