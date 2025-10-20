import 'package:flutter/material.dart';
import '../menu/drawer.widget.dart';
import '../config/global.params.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text('Accueil'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image de profil
            CircleAvatar(
              radius: 50, // Taille de l'avatar
              backgroundImage: const AssetImage('assets/images/profile.jpeg'), // Chemin de l'image
            ),
            const SizedBox(height: 20),
            const Text(
              'Bienvenue !',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Wrap(
              spacing: 16.0,
              runSpacing: 16.0,
              children: [
                _buildImageCard(context, 'Météo', 'assets/images/meteo.jpeg', '/meteo'),
                _buildImageCard(context, 'Maps', 'assets/images/maps.png', '/maps'),
                _buildImageCard(context, 'Contacts', 'assets/images/contacts.png', '/contacts'),
                _buildImageCard(context, 'Messenger', 'assets/images/messenger.jpeg', '/messenger'),
                _buildImageCard(context, 'ChatBot', 'assets/images/chatbot.jpeg', '/chatbot'),
                _buildImageCard(context, 'Paramètres', 'assets/images/parametres.png', '/parametres'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageCard(BuildContext context, String title, String imagePath, String route) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}