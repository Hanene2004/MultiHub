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
          // DrawerHeader avec image de profil
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white, Colors.blueAccent],
              ),
            ),
            child: Center(
              child: CircleAvatar(
                backgroundImage: const AssetImage(
                    'assets/images/profile.jpeg'), // Chemin de l'image
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
                  }
                },
              );
            }

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
        ],
      ),
    );
  }
}
