import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_tut_2024/presentation/login/login.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  MainViewState createState() => MainViewState();
}

class MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MainView'),
        actions: [
          ElevatedButton(
              onPressed: () async {
                final SharedPreferences appPreferences =
                    await SharedPreferences.getInstance();
                print(appPreferences);
                appPreferences.clear();
                print(appPreferences.runtimeType);
             
            Navigator.push(context, MaterialPageRoute(builder: (context) =>const LoginView()));
              },
              child: const Text('LogOut'))
        ],
      ),
    );
  }
}
