import 'package:flutter/material.dart';
import 'package:hoja_de_vida/screens/paginaPrincipal.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hoja de vida',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const PaginaPrincipal(),
    );
  }
}
