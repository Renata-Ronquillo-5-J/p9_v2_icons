import 'package:flutter/material.dart';

void main() => runApp(MisIconos());

class MisIconos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Renata icons dos filas "),
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
          centerTitle: true,
          backgroundColor: Color(0xfff3daf8),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Centra el contenido verticalmente
            children: <Widget>[
              Text('Renata Ronquillo Lopez 1307 6to J',
                  style: TextStyle(fontSize: 20, color: Colors.black)),
              SizedBox(
                height: 50,
              ),
              // Primera fila de iconos
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .center, // Centra los iconos horizontalmente
                children: <Widget>[
                  IconWithLabel(
                    icon: Icons.star,
                    label: 'Estrella',
                    color: Colors.yellow, // Color para el primer icono
                  ),
                  SizedBox(width: 20.0), // Espacio entre los iconos
                  IconWithLabel(
                    icon: Icons.favorite,
                    label: 'Favorito',
                    color: Colors.red, // Color para el segundo icono
                  ),
                  SizedBox(width: 20.0), // Espacio entre los iconos
                  IconWithLabel(
                    icon: Icons.add_alarm_rounded,
                    label: 'Alarma',
                    color: Colors.blue, // Color para el tercer icono
                  ),
                ],
              ),
              SizedBox(height: 20.0), // Espacio entre las filas
              // Segunda fila de iconos
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .center, // Centra los iconos horizontalmente
                children: <Widget>[
                  IconWithLabel(
                    icon: Icons.thumb_up,
                    label: 'Me gusta',
                    color: Colors.green, // Color para el cuarto icono
                  ),
                  SizedBox(width: 20.0), // Espacio entre los iconos
                  IconWithLabel(
                    icon: Icons.add_photo_alternate_sharp,
                    label: 'Foto',
                    color: Colors.purple, // Color para el quinto icono
                  ),
                  SizedBox(width: 20.0), // Espacio entre los iconos
                  IconWithLabel(
                    icon: Icons.move_up,
                    label: 'Mover',
                    color: Colors.orange, // Color para el sexto icono
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

// Widget personalizado para un icono con subtítulo y color
class IconWithLabel extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  IconWithLabel({
    required this.icon,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(icon, size: 50.0, color: color), // Icono con color personalizado
        SizedBox(height: 8.0), // Espacio entre el icono y el texto
        Text(label, style: TextStyle(fontSize: 16.0)), // Subtítulo
      ],
    );
  }
}
