import 'package:flutter/material.dart';

//ES PARA LA TERCERA PANTALLA PANTALLA
class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tercera Pantalla Datos'),
        backgroundColor: Colors.yellow[600],
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 20.0),
              Image.asset(
                'assets/img/Perfil.jpg',
                width: 170.0,
              ),
              const Text(
                'Jesus Antonio Martinez Gonzalez',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Color.fromARGB(255, 0, 110, 255),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arial',
                ),
              ),
              const SizedBox(width: 10.0),
              const Text(
                  'Tecnologías de la Información Área Desarrollo de Software Multiplataforma',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Color.fromARGB(255, 2, 53, 255),
                    fontFamily: 'Raleway',
                  )),
              const SizedBox(width: 10.0),
              ElevatedButton(
                child: const Text('Regresar'),
                onPressed: () => Navigator.pop(context),
              ),
            ]),
      ),
    );

    /*     body: Center(
        
          child: ElevatedButton(
        child: const Text('Regresar'),
        onPressed: () => Navigator.pop(context),
      )),
    );*/
  }
}
