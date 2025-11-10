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
<<<<<<< HEAD
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 12),
        child: Column(
          children: [
            CircleAvatar(
              radius: 48,
              backgroundImage: const AssetImage('assets/images/profile.jpeg'),
            ),
            const SizedBox(height: 12),
            const Text('Bienvenue !',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 18),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: GlobalParams.accueil.map((item) {
                return _buildImageCard(context, item['title'] as String,
                    item['image'] as AssetImage, item['route'] as String);
              }).toList(),
=======
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
>>>>>>> a91dba3157045feb26350301988471fefc93d873
            ),
          ],
        ),
      ),
    );
  }

<<<<<<< HEAD
  Widget _buildImageCard(
      BuildContext context, String title, AssetImage image, String route) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, route),
      child: Container(
        height: 140,
        width: 140,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(image: image, fit: BoxFit.cover),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.08),
                blurRadius: 6,
                offset: const Offset(0, 4))
          ],
        ),
        alignment: Alignment.center,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
          color: Colors.black45,
          child: Text(title,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold)),
=======
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
>>>>>>> a91dba3157045feb26350301988471fefc93d873
        ),
      ),
    );
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> a91dba3157045feb26350301988471fefc93d873
