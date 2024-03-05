import 'package:flutter/material.dart';

class EstudiosPage extends StatefulWidget {
  const EstudiosPage({super.key});

  @override
  State<EstudiosPage> createState() => _EstudiosPageState();
}

class _EstudiosPageState extends State<EstudiosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Estudios',
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
            leading: Icon(Icons.school),
            contentPadding: EdgeInsets.all(10.0),
            title: Text(
              'SENA',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'Analisis y Desarrollo de Software.',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ListTile(
            leading: Icon(Icons.school),
            contentPadding: EdgeInsets.all(10.0),
            title: Text('Universidad ITM',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Diseño Industrial.',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ListTile(
            leading: Icon(Icons.school),
            contentPadding: EdgeInsets.all(10.0),
            title: Text('I.H. Hernan Villa Baena',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Bachiller Academico.',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
