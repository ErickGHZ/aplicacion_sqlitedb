import 'package:flutter/material.dart';
import 'package:sqlitedb/student.dart';
import 'package:sqlitedb/convert_utility.dart';

class InfoPage extends StatelessWidget {
  final Student student;

  InfoPage({required this.student});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Informacion del contacto')),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start ,
          children: [
            // Muestra la imagen usando Image.memory si photoName no es nulo
            Container(
              width: 400,
              height: 250,
              child: Utility.ImageFromBase64String(student.photoName!),
            ),
            SizedBox(height: 40), // Espacio entre la imagen y los Text Widgets
            Text(
              'Nombre: ${student.name}',
              style: TextStyle(fontSize: 25), // Tamaño de fuente más grande
            ),
            SizedBox(height: 20),
            Text(
              'Apellido Paterno: ${student.apepa}',
              style: TextStyle(fontSize: 25), // Tamaño de fuente más grande
            ),
            SizedBox(height: 20),
            Text(
              'Apellido Materno: ${student.apema}',
              style: TextStyle(fontSize: 25), // Tamaño de fuente más grande
            ),
            SizedBox(height: 20),
            Text(
              'Email: ${student.email}',
              style: TextStyle(fontSize: 25), // Tamaño de fuente más grande
            ),
            SizedBox(height: 20),
            Text(
              'Teléfono: ${student.tel}',
              style: TextStyle(fontSize: 25), // Tamaño de fuente más grande
            ),
          ],
        ),
    );
  }
}
