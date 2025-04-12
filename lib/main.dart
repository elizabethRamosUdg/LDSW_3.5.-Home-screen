import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomePage(textoBienvenida: 'Bienvenido!!'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.textoBienvenida});
  final String textoBienvenida;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(widget.textoBienvenida),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
