import 'package:flutter/material.dart';
import 'package:user_preferences_app/shared_preferences/preferences.dart';
import 'package:user_preferences_app/widgets/side_menu.dart';

class HomeScreen extends StatelessWidget {

  static const String routeName = 'Home';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: const SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Text('isDarkmode: ${Preferences.isDarkMode}'),

          const Divider(),

          Text('Genero: ${Preferences.gender}'),

          const Divider(),

          Text('Nombre de usuario: ${Preferences.name}'),

          const Divider()

        ],
      )
    );
  }
}