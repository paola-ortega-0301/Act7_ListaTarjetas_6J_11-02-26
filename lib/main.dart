import 'package:flutter/material.dart';

void main() => runApp(AppEventos());

class AppEventos extends StatelessWidget {
  const AppEventos({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Clientes(),
    );
  }
}//fin AppEventos

class Clientes extends StatelessWidget {
  const Clientes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(    
      appBar: AppBar(
  title: const Text(
    '"Eventos Woody" Paola Ortega 6J',
    style: TextStyle(color: Colors.black),
  ),
  centerTitle: true,
  backgroundColor: const Color.fromARGB(255, 107, 218, 255), // Azul clarito (LightBlue)
  leading: const Icon(
    Icons.cake, // Icono de pastel
    color: Color.fromARGB(255, 10, 75, 129),
  ),
  actions: const [
    Icon(
      Icons.castle, // Icono de globo
      color: Color.fromARGB(255, 10, 75, 129),
    ),
    SizedBox(width: 15),
    Icon(
      Icons.calendar_month, // Icono de calendario
      color: Colors.black,
    ),
    SizedBox(width: 15),
  ],
),
body: ListView(
          padding: const EdgeInsets.all(16.0),
          children: const [
            TarjetaUsuario(
              nombre: 'Jesusa Campoya',
              profesion: 'Diseñadora',
              idImagen: 'https://raw.githubusercontent.com/paola-ortega-0301/Im-genes-para-Flutter-6J-11-02-26/refs/heads/main/1.png',
            ),
            TarjetaUsuario(
              nombre: 'Lizet Silva',
              profesion: 'Admin. Empresas',
              idImagen: 'https://raw.githubusercontent.com/paola-ortega-0301/Im-genes-para-Flutter-6J-11-02-26/refs/heads/main/2.png',
            ),
            TarjetaUsuario(
              nombre: 'Lucía Fuentes de Ortiz',
              profesion: 'Homeless',
              idImagen: 'https://raw.githubusercontent.com/paola-ortega-0301/Im-genes-para-Flutter-6J-11-02-26/refs/heads/main/3.png',
            ),
          ],
        ),
    );
  }
}//fin clase clientes

class TarjetaUsuario extends StatelessWidget {
  final String nombre;
  final String profesion;
  final String idImagen;

  const TarjetaUsuario({
    super.key,
    required this.nombre,
    required this.profesion,
    required this.idImagen,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 5, 48, 114), // Fondo morado atractivo
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 5,
      margin: const EdgeInsets.only(bottom: 16),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(idImagen),
        ),
        title: Text(
          nombre,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          profesion,
          style: const TextStyle(color: Colors.white70),
        ),
        trailing: IconButton(
          icon: const Icon(Icons.favorite_border, color: Color.fromARGB(255, 113, 186, 228)),
          onPressed: () {
            // Aquí iría la lógica del "Like"
          },
        ),
      ),
    );
  }
}