import 'package:flutter/material.dart';

//ES PARA LA SEGUNDA PANTALLA
class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.blue[600],
        title: Text('Segunda Pantalla'),
      ),
      body: Center(
          child: ElevatedButton(
        child: const Text('Regresar'),
        onPressed: () => Navigator.pop(context),
      )),
    );
  }
}
