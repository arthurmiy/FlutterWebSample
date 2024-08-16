import 'package:flutter/material.dart';
import 'package:nomedoprojeto/screens/main_screen.dart';
import 'package:nomedoprojeto/screens/outrapag.dart';
import 'package:nomedoprojeto/screens/web_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Exemplo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context)=>MyHomePage(title: "Titulo"),
        OutraPag.routeName: (context) => OutraPag(),
        WebScreen.routeName: (context) => WebScreen(title: "Web"),
      },
    );
  }
}


