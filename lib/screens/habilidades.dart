import 'package:flutter/material.dart';

class HabilidadesPage extends StatefulWidget {
  const HabilidadesPage({super.key});

  @override
  State<HabilidadesPage> createState() => _HabilidadesPageState();
}

class _HabilidadesPageState extends State<HabilidadesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Habilidades',
          style: TextStyle(
            color: Color.fromARGB(255, 246, 248, 249),
            fontSize: 30,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 34, 30, 90),
      ),
      body: ListView(
        children: const <Widget>[
          ListTile(
            contentPadding: EdgeInsets.all(10.0),
            leading: Icon(Icons.code),
            title: Text(
              'Flutter',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.all(10.0),
            leading: Icon(Icons.code),
            title: Text('Dart',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.all(10.0),
            leading: Icon(Icons.language),
            title: Text('Español',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
            ),
          ListTile(
            contentPadding: EdgeInsets.all(10.0),
            leading: Icon(Icons.language),
            title: Text('Inglés',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
