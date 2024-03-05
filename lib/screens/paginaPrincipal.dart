import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hoja_de_vida/screens/estudios.dart';
import 'package:hoja_de_vida/screens/habilidades.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PaginaPrincipal extends StatefulWidget {
  const PaginaPrincipal({super.key});

  @override
  State<PaginaPrincipal> createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hoja de vida',
          style: TextStyle(
            color: Color.fromARGB(255, 246, 248, 249),
            fontSize: 30,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 34, 30, 90),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipOval(
              child: Image.asset(
                'assets/imagenes/fotoDM.jpg',
                width: 300.0,
                height: 300.0,
                fit: BoxFit.cover,
                //border: Border.all(color: Colors.black, width: 2.0),
                //borderRadius: BorderRadius.circular(75.0),
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Nombre: Diego Moreno',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Email: dmorenourrego@gmail.com',
              style: TextStyle(color: Colors.grey),
            ),
            const Text('Teléfono: +57 300 123 4567',
                style: TextStyle(color: Colors.grey)),
            const Text(
              'Sobre mí: Soy un desarrollador apasionado por Flutter...',
              style: TextStyle(fontSize: 16),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EstudiosPage()),
                    );
                  },
                  icon: const Icon(Icons.school),
                  label: const Text('Ver estudios'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                const SizedBox(width: 30.0),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HabilidadesPage()),
                    );
                  },
                  icon: const Icon(Icons.work),
                  label: const Text('Ver habilidades'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.github),
                onPressed: () {},
              ),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.linkedin),
                onPressed: () {},
              ),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.twitter),
                onPressed: () {},
              ),
              IconButton(
                icon: const FaIcon(FontAwesomeIcons.instagram),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
