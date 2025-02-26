import 'package:flutter/material.dart';

void main() => runApp(MisIconosApp());

class MisIconosApp extends StatelessWidget {
  const MisIconosApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Jesus Flores"),
          titleTextStyle:
              const TextStyle(color: Color(0xffe3e3e3), fontSize: 22),
          centerTitle: true,
          backgroundColor: const Color(0xff161616),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Jesús Daniel Flores Rodríguez",
                style: TextStyle(
                  fontSize: 18, // Tamaño de la fuente
                  fontWeight: FontWeight.bold, // Negrita
                  color: Colors.black, // Color del texto
                  fontStyle:
                      FontStyle.normal, // Estilo de fuente (normal, cursiva)
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Mat. 22308051281186",
                style: TextStyle(
                  fontSize: 16, // Tamaño de la fuente
                  fontWeight: FontWeight.bold, // Negrita
                  color: Colors.black, // Color del texto
                  fontStyle:
                      FontStyle.normal, // Estilo de fuente (normal, cursiva)
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconWithSubtitle(
                    icon: Icons.thumb_up,
                    color: Colors.green,
                    subtitle: "Me gusta",
                  ),
                  IconWithSubtitle(
                    icon: Icons.thumb_down,
                    color: Colors.red,
                    subtitle: "No me gusta",
                  ),
                  IconWithSubtitle(
                    icon: Icons.shop_sharp,
                    color: Color(0xff36aff4),
                    subtitle: "Tienda",
                  ),
                ],
              ),
              const SizedBox(height: 40), // Espacio entre filas
              // Segunda fila de iconos
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconWithSubtitle(
                    icon: Icons.share,
                    color: Color(0xff2e2e2e),
                    subtitle: "Compartir",
                  ),
                  IconWithSubtitle(
                    icon: Icons.transcribe,
                    color: Color(0xfff321f3),
                    subtitle: "Transcribir",
                  ),
                  IconWithSubtitle(
                    icon: Icons.three_p,
                    color: Color(0xff6a21f3),
                    subtitle: "Chat",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget personalizado para un ícono con subtítulo
class IconWithSubtitle extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String subtitle;

  const IconWithSubtitle({
    required this.icon,
    required this.color,
    required this.subtitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: color,
          size: 40.0,
        ),
        const SizedBox(height: 8), // Espacio entre el ícono y el subtítulo
        Text(
          subtitle,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
