// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:testflutter/screens/dataScreen.dart';

import 'screens/DatosStackScreen.dart';
import 'screens/quarterScreen.dart';
import 'screens/secondScreen.dart';
import 'screens/stackScreen.dart';
import 'screens/formScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, //PARA QUITAR MENSAJE DE EMULADOR
    title: 'Flutter Demo',
    initialRoute: '/', //PARA LA RUTA INICIAL
    routes: {
      '/': (context) => HomePage(),
      '/second': (context) => SecondPage(),
      '/Third': (context) => ThirdPage(),
      '/quarter': (context) => quarterPage(),
      '/stack': (context) =>
          TestStack(), //se ejecuta (ctr + .) para unir la libreria la cual es la 2 opcion
      '/Datosstack': (context) => DatosstackPage(),
      '/form': (context) => FormScreen(),
    },
    //home: HomePage(), //PONER ESTA LINIA SOLO SI ESBOTON INDIVIDUAL
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu), //PRIMERA FORMA DE ICONOS
        //  leading: IconButton( icon: Icon(Icons.menu), onPressed: () => {},), //SEGUNDA FORMA DE ICONOS
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text('PÁGINA PRINCIPAL'),
        elevation: 20.0,
        shadowColor: Colors.black,
        //backgroundColor: Colors.red,
        //actionsIconTheme: IconThemeData(color: Colors.red), //PARA EL COLOR DE LOS ICONOS
        shape: RoundedRectangleBorder(
          //Nos funciona para los bordes de la barrra de opciones
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => {},
          ),
          //        IconButton(
          //         icon: Icon(Icons.note),
          //        onPressed: () => {print('BOT├ôN DE NOTAS')},
          //S     ),
        ],
      ),

      //PARA EL BOTON DE SEGUNDA PANTALLA
      /*    body: Center(
          child: ElevatedButton(
        child: Text('SEGUNDA PANTALLA'),
        onPressed: () {
          final route = MaterialPageRoute(
            builder: (context) => const SecondPage(),
          );
          Navigator.push(context, route);
        },
      )),
    */

      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 5.0),
          ElevatedButton(
            child: Text('SEGUNDA PANTALLA'),
            onPressed: () {
              //PARA BOTON FISICO
              /*   final route = MaterialPageRoute(
                  builder: (context) => const SecondPage(),
                );
                Navigator.push(context, route);
              }
              //FIN DE PARA BOTON FISICO
            */
              //INICIO DE BOTON CON LINK
              Navigator.pushNamed(context, '/second');
            },
          ),

          SizedBox(height: 5.0),

          //FIN DE BOTON CON LINK
          ElevatedButton(
            child: Text('TERCERA PANTALLA DATOS'),
            onPressed: () {
              //PARA BOTON FISICO
              /* final route = MaterialPageRoute(
                  builder: (context) => const ThirdPage(),
                );
                Navigator.push(context, route);
              }
              */
              //FIN DE BOTON FISICO

              //INICIO DE BOTON CON LINK
              Navigator.pushNamed(context, '/Third');
            },
          ),

          //INICIO DE LA 4 PANTALLA
          SizedBox(height: 5.0),
          ElevatedButton(
            child: Text('CUARTA PANTALLA'),
            onPressed: () {
              //PARA BOTON FISICO
              /* final route = MaterialPageRoute(
                  builder: (context) => const quarterPage(),
                );
                Navigator.push(context, route);
              }
              */
              //FIN DE BOTON FISICO

              //INICIO DE BOTON CON LINK
              Navigator.pushNamed(context, '/quarter');
            },
          ),

          //INICIO DE LA 5 PANTALLA
          SizedBox(height: 5.0),
          ElevatedButton(
            child: Text('STACK PANTALLA'),
            onPressed: () {
              //PARA BOTON FISICO
              /* final route = MaterialPageRoute(
                  builder: (context) => const quarterPage(),
                );
                Navigator.push(context, route);
              }
              */
              //FIN DE BOTON FISICO

              //INICIO DE BOTON CON LINK
              Navigator.pushNamed(context, '/stack');
            },
          ),

          //INICIO DE LA 5 PANTALLA
          SizedBox(height: 5.0),
          ElevatedButton(
            child: Text('PANTALLA DATOS STACK '),
            onPressed: () {
              //PARA BOTON FISICO
              /* final route = MaterialPageRoute(
                  builder: (context) => const quarterPage(),
                );
                Navigator.push(context, route);
              }
              */
              //FIN DE BOTON FISICO

              //INICIO DE BOTON CON LINK
              Navigator.pushNamed(context, '/Datosstack');
            },
          ),
          SizedBox(height: 5.0),
          ElevatedButton(
            child: Text('Formulario'),
            onPressed: () {
              Navigator.pushNamed(context, '/form');
            },
          )
        ],
      )),
    );
  }
}
