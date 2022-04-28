import 'package:flutter/material.dart';

//ES PARA LA SEGUNDA PANTALLA
class quarterPage extends StatelessWidget {
  const quarterPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cuarta Pantalla'),
        backgroundColor: Colors.red[600],
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
            Text(
              'Cuarta Pantalla',
              style: TextStyle(
                fontSize: 15.0,
                color: Color.fromARGB(255, 11, 11, 11),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5.0),
            ElevatedButton(
              child: const Text('Regresar'),
              onPressed: () => Navigator.pop(context),
            )
          ])),
    );
  }
}
