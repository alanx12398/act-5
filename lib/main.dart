import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: PaginaCatalogo(),
  ));
}

class PaginaCatalogo extends StatelessWidget {
  const PaginaCatalogo({super.key});

  // Lista de datos para las 14 opciones basadas en tus imágenes
  final List<Map<String, dynamic>> opciones = const [
    {
      "titulo": "¿Qué comer hoy?",
      "subtitulo": "No pelees más, deja que el azar elija tu cena.",
      "estrellas": 5,
      "color": Colors.orange,
      "imagen": "https://raw.githubusercontent.com/alanx12398/imagenes-para-flutter-6-J-11-febrero-2026/refs/heads/main/pizza1.jpg"
    },
    {
      "titulo": "Destino de Vacaciones",
      "subtitulo": "Playa, montaña o ciudad. ¡Gira y empaca!",
      "estrellas": 4,
      "color": Colors.blue,
      "imagen": "https://raw.githubusercontent.com/alanx12398/imagenes-para-flutter-6-J-11-febrero-2026/refs/heads/main/destino.jfif"
    },
    {
      "titulo": "¿Qué película ver?",
      "subtitulo": "Acción, terror o comedia. Ideal para parejas.",
      "estrellas": 5,
      "color": Colors.red,
      "imagen": "https://raw.githubusercontent.com/alanx12398/imagenes-para-flutter-6-J-11-febrero-2026/refs/heads/main/peli.jfif"
    },
    {
      "titulo": "Rutina de Ejercicio",
      "subtitulo": "Cardio, pesas o yoga. Define tu entrenamiento.",
      "estrellas": 5,
      "color": Colors.green,
      "imagen": "https://raw.githubusercontent.com/alanx12398/imagenes-para-flutter-6-J-11-febrero-2026/refs/heads/main/rutina.jfif"
    },
    {
      "titulo": "Verdad o Reto",
      "subtitulo": "El clásico juego de fiestas en versión digital.",
      "estrellas": 4,
      "color": Colors.purple,
      "imagen": "https://raw.githubusercontent.com/alanx12398/imagenes-para-flutter-6-J-11-febrero-2026/refs/heads/main/ret.jfif"
    },
    {
      "titulo": "Tareas del Hogar",
      "subtitulo": "¿A quién le toca lavar los platos hoy?",
      "estrellas": 3,
      "color": Colors.teal,
      "imagen": "https://raw.githubusercontent.com/alanx12398/imagenes-para-flutter-6-J-11-febrero-2026/refs/heads/main/tare.jfif"
    },
    {
      "titulo": "Estilo de Outfit",
      "subtitulo": "Casual, formal o deportivo. Decide tu look.",
      "estrellas": 4,
      "color": Colors.pink,
      "imagen": "https://raw.githubusercontent.com/alanx12398/imagenes-para-flutter-6-J-11-febrero-2026/refs/heads/main/vest.jfif"
    },
    {
      "titulo": "Día de Cita Ideal",
      "subtitulo": "Picnic, cine, museo o cena romántica.",
      "estrellas": 5,
      "color": Colors.redAccent,
      "imagen": "https://raw.githubusercontent.com/alanx12398/imagenes-para-flutter-6-J-11-febrero-2026/refs/heads/main/cita.png"
    },
    {
      "titulo": "Ruleta de la Fortuna",
      "subtitulo": "Gana puntos, descuentos o premios virtuales.",
      "estrellas": 5,
      "color": Colors.amber,
      "imagen": "https://raw.githubusercontent.com/alanx12398/imagenes-para-flutter-6-J-11-febrero-2026/refs/heads/main/fort.jfif"
    },
    {
      "titulo": "Lectura del Mes",
      "subtitulo": "Elige tu próximo libro de la lista.",
      "estrellas": 4,
      "color": Colors.brown,
      "imagen": "https://raw.githubusercontent.com/alanx12398/imagenes-para-flutter-6-J-11-febrero-2026/refs/heads/main/libro.jfif"
    },
    {
      "titulo": "Bebidas y Cócteles",
      "subtitulo": "Mezclas divertidas para tu próxima reunión.",
      "estrellas": 3,
      "color": Colors.cyan,
      "imagen": "https://raw.githubusercontent.com/alanx12398/imagenes-para-flutter-6-J-11-febrero-2026/refs/heads/main/beb.png"
    },
    {
      "titulo": "Color de Uñas",
      "subtitulo": "Deja que la ruleta elija tu próximo diseño.",
      "estrellas": 4,
      "color": Colors.pinkAccent,
      "imagen": "https://raw.githubusercontent.com/alanx12398/imagenes-para-flutter-6-J-11-febrero-2026/refs/heads/main/u%C3%B1a.jfif"
    },
    {
      "titulo": "Preguntas de Examen",
      "subtitulo": "Repasa temas al azar para estudiar mejor.",
      "estrellas": 5,
      "color": Colors.indigo,
      "imagen": "https://raw.githubusercontent.com/alanx12398/imagenes-para-flutter-6-J-11-febrero-2026/refs/heads/main/preg.jpg"
    },
    {
      "titulo": "Mensaje Motacional",
      "subtitulo": "Una frase positiva para empezar tu mañana.",
      "estrellas": 5,
      "color": Colors.yellow,
      "imagen": "https://raw.githubusercontent.com/alanx12398/imagenes-para-flutter-6-J-11-febrero-2026/refs/heads/main/mens.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6F9), // Fondo gris muy claro elegante
      appBar: AppBar(
        title: const Text("Ruleta de Decisiones", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        backgroundColor: Colors.indigo,
        elevation: 0,
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 columnas como en tu imagen
          childAspectRatio: 0.75, // Ajusta el alto de la tarjeta
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: opciones.length,
        itemBuilder: (context, index) {
          final item = opciones[index];
          return Card(
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Imagen con bordes redondeados arriba
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
                    child: Image.network(
                      item['imagen'],
                      fit: BoxFit.cover,
                      width: double.infinity,
                      // Imagen de respaldo por si el link falla
                      errorBuilder: (context, error, stackTrace) => Container(
                        color: item['color'].withOpacity(0.1),
                        child: Icon(Icons.image, color: item['color']),
                      ),
                    ),
                  ),
                ),
                // Textos y Estrellas
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        item['titulo'],
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        item['subtitulo'],
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 11, color: Colors.grey[700]),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 6),
                      // Fila de Estrellitas
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(5, (starIndex) {
                          return Icon(
                            Icons.star,
                            size: 14,
                            color: starIndex < item['estrellas'] ? Colors.amber : Colors.grey[300],
                          );
                        }),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}