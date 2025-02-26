import 'package:flutter/material.dart';

void main() => runApp(MisIconos());

class MisIconos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Renata Ronquillo Lopez 6to J 1307 "),
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
          centerTitle: true,
          backgroundColor: Color(0xfff3daf8),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Centra el contenido verticalmente
            children: <Widget>[
              // Primera fila de iconos
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .center, // Centra los iconos horizontalmente
                children: <Widget>[
                  IconWithLabel(icon: Icons.star, label: 'Estrella'),
                  SizedBox(width: 20.0), // Espacio entre los iconos
                  IconWithLabel(icon: Icons.favorite, label: 'Favorito'),
                  SizedBox(width: 20.0), // Espacio entre los iconos
                  IconWithLabel(icon: Icons.add_alarm_rounded, label: 'Alarma'),
                ],
              ),
              SizedBox(height: 20.0), // Espacio entre las filas
              // Segunda fila de iconos
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .center, // Centra los iconos horizontalmente
                children: <Widget>[
                  IconWithLabel(icon: Icons.thumb_up, label: 'Me gusta'),
                  SizedBox(width: 20.0), // Espacio entre los iconos
                  IconWithLabel(
                      icon: Icons.add_photo_alternate_sharp, label: 'Foto'),
                  SizedBox(width: 20.0), // Espacio entre los iconos

                  IconWithLabel(icon: Icons.move_up, label: 'Mover'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget personalizado para un icono con subtítulo
class IconWithLabel extends StatelessWidget {
  final IconData icon;
  final String label;

  IconWithLabel({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(icon, size: 50.0, color: Color(0xffdc9dcd)), // Icono
        SizedBox(height: 8.0), // Espacio entre el icono y el texto
        Text(label, style: TextStyle(fontSize: 16.0)), // Subtítulo
      ],
    );
  }
}
