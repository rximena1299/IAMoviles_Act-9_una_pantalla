import 'package:flutter/material.dart';

void main() => runApp(const MiApp());

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PantallaPrincipal(),
    );
  }
}

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              // Barra superior
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "♫",
                      style: TextStyle(
                        fontSize: 34,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 30,
                    ),
                  ],
                ),
              ),

              // Barra búsqueda
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    children: const [
                      Expanded(
                        child: Text(
                          "Buscar...",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Álbumes
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Expanded(child: albumCard(
                      "https://raw.githubusercontent.com/rximena1299/imagenes-para-flutter-6-i-11-02-2026/refs/heads/main/descarga%20(1).jpg",
                      "Un verano sin ti",
                      "Bad Bunny",
                    )),
                    const SizedBox(width: 16),
                    Expanded(child: albumCard(
                      "https://raw.githubusercontent.com/rximena1299/imagenes-para-flutter-6-i-11-02-2026/refs/heads/main/Odisea.jpg",
                      "Odisea",
                      "Ozuna",
                    )),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // Promociones
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    promoCard(
                      "https://raw.githubusercontent.com/rximena1299/imagenes-para-flutter-6-i-11-02-2026/refs/heads/main/descarga%20(2).jpg",
                      "Artista destacado",
                      "Nuevo lanzamiento",
                    ),
                    const SizedBox(height: 16),
                    promoCard(
                      "https://raw.githubusercontent.com/rximena1299/imagenes-para-flutter-6-i-11-02-2026/refs/heads/main/images.jpg",
                      "Banda recomendada",
                      "Escúchalos ahora",
                    ),
                    const SizedBox(height: 16),
                    promoCard(
                      "https://raw.githubusercontent.com/rximena1299/imagenes-para-flutter-6-i-11-02-2026/refs/heads/main/descarga%20(3).jpg",
                      "Podcast popular",
                      "Tendencia semanal",
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),
            ],
          ),
        ),
      ),

      // 🔥 BARRA INFERIOR
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 8)
          ],
        ),
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            // Inicio
            Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(Icons.home, color: Colors.black),
                SizedBox(height: 6),
                SizedBox(height: 3),
              ],
            ),

            // Buscar ACTIVO
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.search, color: Colors.black),
                const SizedBox(height: 6),
                Container(
                  width: 22,
                  height: 3,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ],
            ),

            // Biblioteca
            Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(Icons.library_music, color: Colors.black),
                SizedBox(height: 6),
                SizedBox(height: 3),
              ],
            ),

            // Planes
            Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(Icons.workspace_premium, color: Colors.black),
                SizedBox(height: 6),
                SizedBox(height: 3),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Tarjeta de álbum
  static Widget albumCard(String imageUrl, String album, String artista) {
    return Container(
      height: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            child: Image.network(
              imageUrl,
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  album,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                Text(
                  artista,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Tarjeta de promoción
  static Widget promoCard(String imageUrl, String titulo, String subtitulo) {
    return Container(
      height: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade300),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [

          ClipRRect(
            borderRadius: const BorderRadius.horizontal(left: Radius.circular(16)),
            child: Image.network(
              imageUrl,
              width: 120,
              height: 160,
              fit: BoxFit.cover,
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titulo,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    subtitulo,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
