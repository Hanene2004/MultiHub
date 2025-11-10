import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../config/global.params.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
<<<<<<< HEAD
          // header avec image de profil
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Theme.of(context).primaryColor.withOpacity(0.9),
                Colors.white
              ]),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 42,
                  backgroundImage:
                      const AssetImage('assets/images/profile.jpeg'),
                  backgroundColor: Colors.transparent,
                ),
                const SizedBox(height: 8),
                const Text('Utilisateur',
                    style: TextStyle(fontSize: 16, color: Colors.black87)),
              ],
            ),
          ),

          // items dynamiques
          ...GlobalParams.menus.map((item) {
            final title = item['title'] as String;
            final icon = item['icon'] as Widget;
            final route = item['route'] as String;

            if (title == 'Déconnexion') {
              return ListTile(
                leading: icon,
                title: Text(title, style: const TextStyle(fontSize: 18)),
                trailing: const Icon(Icons.arrow_right),
                onTap: () async {
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setBool('connecte', false);
                  if (context.mounted) {
                    Navigator.pushNamedAndRemoveUntil(
                        context, route, (r) => false);
=======
          // DrawerHeader avec image de profil
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white, Colors.blueAccent],
              ),
            ),
            child: Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.jpeg'), // Chemin de l'image
                radius: 60,
              ),
            ),
          ),
          
          // Génération dynamique des ListTile à partir de GlobalParams.menus
          ...GlobalParams.menus.map((item) {
            // Cas spécial pour la déconnexion
            if (item['title'] == 'Déconnexion') {
              return ListTile(
                title: Text(
                  item['title'],
                  style: const TextStyle(fontSize: 22),
                ),
                leading: item['icon'],
                trailing: const Icon(Icons.arrow_right, color: Colors.blue),
                onTap: () async {
                  try {
                    final prefs = await SharedPreferences.getInstance();
                    await prefs.setBool("connecte", false);
                    if (context.mounted) {
                      Navigator.pushNamedAndRemoveUntil(
                          context, item['route'], (route) => false);
                    }
                  } catch (e) {
                    if (context.mounted) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Erreur: ${e.toString()}')),
                      );
                    }
>>>>>>> a91dba3157045feb26350301988471fefc93d873
                  }
                },
              );
            }
<<<<<<< HEAD

            return ListTile(
              leading: icon,
              title: Text(title, style: const TextStyle(fontSize: 18)),
              trailing: const Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, route);
              },
            );
          }),
=======
            
            // Cas normal pour les autres éléments
            return ListTile(
              title: Text(
                item['title'],
                style: const TextStyle(fontSize: 22),
              ),
              leading: item['icon'],
              trailing: const Icon(Icons.arrow_right, color: Colors.blue),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, item['route']);
              },
            );
          }).toList(),
>>>>>>> a91dba3157045feb26350301988471fefc93d873
        ],
      ),
    );
  }
}
